use std::fs;
use std::time::SystemTime;
use wasmi::{Config, Engine, Instance, Module, Store, TypedFunc};

const OVERRIDE_WASM_PATH: &str = "/mnt/phh/bg6_policy.wasm";
const SYSTEM_WASM_PATH: &str = "/system/etc/bg6/bg6_policy.wasm";
const FUEL_BUDGET: u64 = 100_000;

unsafe extern "C" {
    fn bg6_zig_arm64_cntvct() -> u64;
    fn bg6_zig_fast_hash64(ptr: *const u8, len: usize) -> u64;
}

#[derive(Clone, Copy, Debug)]
pub struct WasmSchedDecision {
    pub top_app_boost: i32,
    pub uclamp_min: u32,
    pub big_max_khz: u32,
    pub gpu_min_hz: u64,
    pub profile_id: u32,
    pub policy_version: u32,
}

impl WasmSchedDecision {
    pub fn profile_name(&self) -> &'static str {
        match self.profile_id {
            0 => "STANDBY",
            1 => "ECO_IDLE",
            2 => "INTERACTIVE",
            3 => "SCROLL_90HZ",
            4 => "ULTRA_GAMING",
            5 => "THERMAL_GUARD",
            _ => "DEFAULT",
        }
    }
}

pub struct WasmSandbox {
    engine: Engine,
    store: Store<()>,
    instance: Option<Instance>,
    pub active_path: String,
    pub policy_version: u32,
    pub reloads: u64,
    pub zig_hash64: u64,
    pub last_eval_ticks: u64,
    last_mtime: Option<SystemTime>,
}

impl WasmSandbox {
    pub fn new() -> Self {
        let mut cfg = Config::default();
        cfg.consume_fuel(true);
        let engine = Engine::new(&cfg);
        let store = Store::new(&engine, ());
        let mut sb = Self {
            engine,
            store,
            instance: None,
            active_path: String::new(),
            policy_version: 0,
            reloads: 0,
            zig_hash64: 0,
            last_eval_ticks: 0,
            last_mtime: None,
        };
        let _ = sb.reload_if_needed(true);
        sb
    }

    fn pick_path() -> &'static str {
        if fs::metadata(OVERRIDE_WASM_PATH).is_ok() {
            OVERRIDE_WASM_PATH
        } else {
            SYSTEM_WASM_PATH
        }
    }

    pub fn reload_if_needed(&mut self, force: bool) -> bool {
        let candidate = Self::pick_path();
        let meta = match fs::metadata(candidate) {
            Ok(m) => m,
            Err(_) => return false,
        };
        let mtime = meta.modified().ok();
        if !force && candidate == self.active_path && mtime == self.last_mtime && self.instance.is_some() {
            return false;
        }

        let Ok(bytes) = fs::read(candidate) else {
            return false;
        };
        let h64 = unsafe { bg6_zig_fast_hash64(bytes.as_ptr(), bytes.len()) };
        if !force && candidate == self.active_path && h64 == self.zig_hash64 && self.instance.is_some() {
            self.last_mtime = mtime;
            return false;
        }
        let Ok(module) = Module::new(&self.engine, &bytes[..]) else {
            return false;
        };

        let mut new_store = Store::new(&self.engine, ());
        let _ = new_store.set_fuel(FUEL_BUDGET);
        let linker = wasmi::Linker::<()>::new(&self.engine);
        let Ok(pre) = linker.instantiate(&mut new_store, &module) else {
            return false;
        };
        let Ok(inst) = pre.start(&mut new_store) else {
            return false;
        };

        let mut ver = 8000u32;
        if let Ok(f) = inst.get_typed_func::<(), u32>(&new_store, "wasm_policy_version") {
            let _ = new_store.set_fuel(FUEL_BUDGET);
            if let Ok(v) = f.call(&mut new_store, ()) {
                ver = v;
            }
        }

        self.store = new_store;
        self.instance = Some(inst);
        self.active_path = candidate.to_string();
        self.policy_version = ver;
        self.zig_hash64 = h64;
        self.last_mtime = mtime;
        self.reloads += 1;
        true
    }

    pub fn eval_sched_profile(
        &mut self,
        ring0_score: i32,
        touch_vel: i32,
        ebpf_wake_rate: i32,
        ebpf_prio_pkt_rate: i32,
        temp_mc: i32,
        is_standby: bool,
    ) -> WasmSchedDecision {
        let fallback = WasmSchedDecision {
            top_app_boost: if is_standby { -10 } else { 20 },
            uclamp_min: if is_standby { 0 } else { 18 },
            big_max_khz: if is_standby { 768_000 } else { 2_028_000 },
            gpu_min_hz: if is_standby { 153_600_000 } else { 384_000_000 },
            profile_id: if is_standby { 0 } else { 2 },
            policy_version: self.policy_version,
        };

        let Some(inst) = self.instance else {
            return fallback;
        };
        let Ok(func): Result<TypedFunc<(i32, i32, i32, i32, i32, i32), i64>, _> =
            inst.get_typed_func(&self.store, "wasm_compute_sched_profile")
        else {
            return fallback;
        };

        let _ = self.store.set_fuel(FUEL_BUDGET);
        let t0 = unsafe { bg6_zig_arm64_cntvct() };
        let Ok(packed_i64) = func.call(
            &mut self.store,
            (
                ring0_score,
                touch_vel,
                ebpf_wake_rate,
                ebpf_prio_pkt_rate,
                temp_mc,
                if is_standby { 1 } else { 0 },
            ),
        ) else {
            return fallback;
        };
        let t1 = unsafe { bg6_zig_arm64_cntvct() };
        self.last_eval_ticks = t1.wrapping_sub(t0);

        let packed = packed_i64 as u64;
        let boost_biased = (packed & 0xff) as i32;
        let uclamp = ((packed >> 8) & 0xff) as u32;
        let big_mhz = ((packed >> 16) & 0xffff) as u32;
        let gpu_mhz = ((packed >> 32) & 0xffff) as u64;
        let prof = ((packed >> 48) & 0xff) as u32;

        WasmSchedDecision {
            top_app_boost: (boost_biased - 20).clamp(-20, 45),
            uclamp_min: uclamp.min(60),
            big_max_khz: big_mhz.clamp(768, 2028) * 1000,
            gpu_min_hz: gpu_mhz.clamp(153, 512) * 1_000_000,
            profile_id: prof,
            policy_version: self.policy_version,
        }
    }

    pub fn validate_double_tap(
        &mut self,
        is_standby: bool,
        dur_ms: i32,
        gap_ms: i32,
        max_move_px: i32,
        tap_dist_px: i32,
        tap_y: i32,
    ) -> Option<bool> {
        let inst = self.instance?;
        let func: TypedFunc<(i32, i32, i32, i32, i32, i32), i32> = inst
            .get_typed_func(&self.store, "wasm_validate_double_tap")
            .ok()?;
        let _ = self.store.set_fuel(FUEL_BUDGET);
        let res = func
            .call(
                &mut self.store,
                (
                    if is_standby { 1 } else { 0 },
                    dur_ms,
                    gap_ms,
                    max_move_px,
                    tap_dist_px,
                    tap_y,
                ),
            )
            .ok()?;
        Some(res != 0)
    }
}
