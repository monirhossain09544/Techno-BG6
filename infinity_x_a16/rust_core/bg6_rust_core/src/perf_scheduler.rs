use std::collections::HashMap;
use std::fs;
use std::path::Path;
use std::thread;
use std::time::Duration;

use crate::ebpf_loader::{EbpfTelemetry, LiveEbpfRuntime};
use crate::memory_jetsam::JetsamMemoryEngine;
use crate::sys_util::{
    chmod_path, mount_bind, now_ms, prop_get, prop_set, read_sysfs_i64, read_sysfs_trimmed,
    resetprop_phh, run_status, run_stdout, umount_all_detach, write_atomic_file, write_sysfs,
};
use crate::wasm_engine::WasmSandbox;

const EBPF_OBJ_PATH: &str = "/system/etc/bg6/bg6_ebpf.o";
const RING0_PROC_PATH: &str = "/proc/bg6_rust_engine";
const TELEMETRY_OUT_PATH: &str = "/dev/bg6_rust_telemetry";
const DPU_PQ_ENABLE_PATH: &str =
    "/sys/devices/platform/soc/soc:ap-ahb/31000000.dpu/display/dispc0/PQ/enable";
const DPU_PQ_DISABLE_PATH: &str =
    "/sys/devices/platform/soc/soc:ap-ahb/31000000.dpu/display/dispc0/PQ/disable";

/// Hardware Silicon Guard for Unisoc DPU r5p0 (`31000000.dpu`):
/// On AOSP GSI without stock `enhancemonitor`, `enhance->cm_copy` is all-zero AND `dpu_cm_set()`
/// has an uninitialized stack `struct cm_cfg cm_final` bug. If `BIT(3)` (`0x08`, Color Matrix)
/// ever gets set in `REG_DPU_ENHANCE_CFG`, every pixel leaving DPU is multiplied by `0` (black
/// screen while backlight stays illuminated). Immediately clear `BIT(3)` via 4-byte binary sysfs.
pub fn guard_dpu_pq_color_matrix(force_clear_backup: bool) {
    if force_clear_backup {
        let _ = fs::write(DPU_PQ_DISABLE_PATH, [0x08u8, 0x00, 0x00, 0x00]);
    }
    if let Ok(en_bytes) = fs::read(DPU_PQ_ENABLE_PATH) {
        if en_bytes.len() == 4 {
            let en = u32::from_le_bytes([en_bytes[0], en_bytes[1], en_bytes[2], en_bytes[3]]);
            if (en & 0x08) != 0 {
                let _ = fs::write(DPU_PQ_DISABLE_PATH, [0x08u8, 0x00, 0x00, 0x00]);
            }
        }
    }
}

pub fn setup_4gb_zram() {
    if let Some(cur_sz) = read_sysfs_i64("/sys/block/zram0/disksize") {
        if cur_sz == 0 {
            let _ = write_sysfs("/sys/block/zram0/max_comp_streams", "8");
            let _ = write_sysfs("/sys/block/zram0/comp_algorithm", "lz4");
            let _ = write_sysfs("/sys/block/zram0/disksize", "4294967296");
        }
    }
}

pub fn apply_silicon_baseline() {
    guard_dpu_pq_color_matrix(true);
    setup_4gb_zram();

    // Little Cluster (6x Cortex-A55)
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq", "614400");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1820000");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/up_rate_limit_us", "500");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/down_rate_limit_us", "10000");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/freq_margin", "15");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us", "500");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us", "10000");

    // Big Cluster (2x Cortex-A75)
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/scaling_min_freq", "614400");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "2028000");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/up_rate_limit_us", "500");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/down_rate_limit_us", "15000");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/freq_margin", "20");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/schedutil/up_rate_limit_us", "500");
    let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/schedutil/down_rate_limit_us", "15000");

    // Unisoc WALT & Cgroup v1/uclamp baseline
    let _ = write_sysfs("/proc/sys/unisched/sched_walt_io_is_busy", "1");
    let _ = write_sysfs("/proc/sys/unisched/group_ctl/top-app/boost", "25");
    let _ = write_sysfs("/proc/sys/unisched/group_ctl/foreground/boost", "10");
    let _ = write_sysfs("/proc/sys/unisched/group_ctl/system/boost", "5");
    let _ = write_sysfs("/proc/sys/unisched/group_ctl/background/boost", "-10");

    let _ = write_sysfs("/dev/cpuctl/top-app/cpu.shares", "5120");
    let _ = write_sysfs("/dev/cpuctl/top-app/cpu.uclamp.min", "25");
    let _ = write_sysfs("/dev/cpuctl/top-app/cpu.uclamp.latency_sensitive", "1");
    let _ = write_sysfs("/dev/cpuctl/foreground/cpu.shares", "4196");
    let _ = write_sysfs("/dev/cpuctl/foreground/cpu.uclamp.min", "5");
    let _ = write_sysfs("/dev/cpuctl/background/cpu.shares", "512");
    let _ = write_sysfs("/dev/cpuctl/background/cpu.uclamp.max", "40");
    let _ = write_sysfs("/dev/cpuctl/background/cpu.uclamp.latency_sensitive", "0");
    let _ = write_sysfs("/dev/cpuctl/system-background/cpu.uclamp.max", "50");

    let _ = write_sysfs("/dev/cpuset/top-app/cpus", "0-7");
    let _ = write_sysfs("/dev/cpuset/foreground/cpus", "0-7");
    let _ = write_sysfs("/dev/cpuset/background/cpus", "0-3");
    let _ = write_sysfs("/dev/cpuset/system-background/cpus", "0-5");
    let _ = write_sysfs("/dev/cpuset/restricted/cpus", "0-3");

    // Mali-G57 10ms responsive devfreq polling
    let _ = write_sysfs("/sys/class/devfreq/23100000.gpu/polling_interval", "10");

    // Apple-XNU Working-Set VM + 4GB LZ4 ZRAM tuning (0..200 swappiness unlocked in v8.5 kernel)
    let _ = write_sysfs("/sys/kernel/mm/lru_gen/enabled", "7");
    let _ = write_sysfs("/sys/kernel/mm/lru_gen/min_ttl_ms", "1000");
    let _ = write_sysfs("/proc/sys/vm/page-cluster", "0");
    if read_sysfs_i64("/proc/sys/vm/swappiness").unwrap_or(60) < 110 {
        let _ = write_sysfs("/proc/sys/vm/swappiness", "135");
    }
    let _ = write_sysfs("/proc/sys/vm/vfs_cache_pressure", "65");
    let _ = write_sysfs("/proc/sys/vm/watermark_scale_factor", "20");
    let _ = write_sysfs("/proc/sys/vm/min_free_kbytes", "16384");
    let _ = write_sysfs("/proc/sys/vm/extra_free_kbytes", "24576");
    let _ = write_sysfs("/proc/sys/vm/stat_interval", "10");
    let _ = write_sysfs("/proc/sys/vm/dirty_ratio", "15");
    let _ = write_sysfs("/proc/sys/vm/dirty_background_ratio", "5");
    let _ = write_sysfs("/proc/sys/vm/compaction_proactiveness", "0");
    let _ = write_sysfs("/proc/sys/kernel/sched_migration_cost_ns", "500000");

    for dev in ["mmcblk0", "sda", "sdb", "sdc", "dm-0", "dm-1", "dm-2", "dm-3", "dm-4", "dm-5"] {
        let _ = write_sysfs(&format!("/sys/block/{}/queue/read_ahead_kb", dev), "128");
        let _ = write_sysfs(&format!("/sys/block/{}/queue/nr_requests", dev), "64");
        let _ = write_sysfs(&format!("/sys/block/{}/queue/iostats", dev), "0");
        let _ = write_sysfs(&format!("/sys/block/{}/queue/add_random", dev), "0");
    }
}

pub fn enforce_lte_guard() {
    let _ = prop_set("persist.sys.phh.unisoc_color_transform_workaround", "1");
    let _ = prop_set("persist.sys.sf.disable_blurs", "0");
    let _ = prop_set("keystore.module_hash.sent", "true");

    let _ = write_sysfs("/proc/sys/net/ipv6/conf/all/accept_ra", "0");
    let _ = write_sysfs("/proc/sys/net/ipv6/conf/default/accept_ra", "0");
    for iface in ["seth_lte0", "seth_lte1", "seth_lte2", "seth_lte3"] {
        let _ = write_sysfs(&format!("/proc/sys/net/ipv6/conf/{}/accept_ra", iface), "0");
        let _ = write_sysfs(&format!("/sys/class/net/{}/tx_queue_len", iface), "1000");
    }
    let _ = write_sysfs("/sys/class/net/wlan0/tx_queue_len", "1000");
    let _ = write_sysfs("/proc/sys/net/ipv4/tcp_fastopen", "3");
    let _ = write_sysfs("/proc/sys/net/ipv4/tcp_ecn", "0");
    let _ = write_sysfs("/proc/sys/net/core/netdev_max_backlog", "5000");
    let _ = write_sysfs("/proc/sys/net/core/rmem_max", "8388608");
    let _ = write_sysfs("/proc/sys/net/core/wmem_max", "8388608");
}

/// 100% Pure-Rust post-boot OS tuner + Apple-Jetsam PSI LMKD / Freezer / USAP calibration
pub fn run_post_boot_tune() -> i32 {
    guard_dpu_pq_color_matrix(true);
    resetprop_phh("ro.config.low_ram", "false");
    resetprop_phh("ro.com.google.acsa", "true");
    resetprop_phh("ro.opa.eligible_device", "true");
    resetprop_phh("persist.sys.phh.unisoc_color_transform_workaround", "1");
    resetprop_phh("persist.sys.sf.disable_blurs", "0");
    resetprop_phh("ro.vendor.build.display.id", "BG6-F069-OP-V2387-250722");

    // Disable legacy Unisoc static minfree killer (which killed cached apps at 472MB free!)
    // and switch Android 16 lmkd into pure PSI stall-driven mode backed by 4GB LZ4 ZRAM.
    resetprop_phh("ro.vendor.lmk.customize_minfree", "false");
    resetprop_phh("ro.lmk.use_psi", "true");
    resetprop_phh("ro.lmk.use_minfree_levels", "false");
    resetprop_phh("ro.lmk.use_new_strategy", "true");
    resetprop_phh("ro.lmk.psi_partial_stall_ms", "70");
    resetprop_phh("ro.lmk.psi_complete_stall_ms", "400");
    resetprop_phh("ro.lmk.thrashing_limit", "30");
    resetprop_phh("ro.lmk.thrashing_limit_decay", "50");
    resetprop_phh("ro.lmk.swap_util_max", "92");
    resetprop_phh("ro.lmk.swap_free_low_percentage", "10");
    resetprop_phh("ro.lmk.kill_timeout_ms", "100");
    let _ = prop_set("lmkd.reinit", "1");

    // Enable Zygote USAP pre-warmed app-launch pool + Apple-iOS style 3s Cgroup App Freezer
    let _ = prop_set("persist.device_config.runtime_native.usap_pool_enabled", "true");
    let _ = prop_set("persist.device_config.runtime_native.usap_pool_size_max", "3");
    let _ = prop_set("persist.device_config.runtime_native.usap_pool_size_min", "1");
    let _ = run_status(
        "/system/bin/cmd",
        &["device_config", "put", "runtime_native", "usap_pool_enabled", "true"],
    );
    let _ = run_status(
        "/system/bin/cmd",
        &["device_config", "put", "activity_manager_native_boot", "use_freezer", "true"],
    );
    let _ = run_status(
        "/system/bin/cmd",
        &[
            "device_config",
            "put",
            "activity_manager_native_boot",
            "freezer_debounce_timeout",
            "3000",
        ],
    );
    let _ = run_status(
        "/system/bin/settings",
        &[
            "put",
            "global",
            "activity_manager_constants",
            "max_cached_processes=64,background_settle_time=10000,fgservice_min_shown_time=2000,content_provider_retain_time=15000",
        ],
    );

    // Protect ICNL9916 01f1 flashless SRAM-BOOT touch firmware from gesture_function reset trap
    if Path::new("/proc/gesture_function").exists() {
        umount_all_detach("/proc/gesture_function");
        let _ = write_atomic_file("/dev/dt2w_state", "cc0", 0o666);
        let _ = mount_bind("/dev/dt2w_state", "/proc/gesture_function");
    }

    let _ = run_status("/system/bin/cmd", &["overlay", "disable", "android.go_unisoc_framework_res.overlay"]);
    let _ = run_status("/system/bin/cmd", &["overlay", "disable", "android.unisoc_framework_res.overlay"]);
    let _ = run_status("/system/bin/cmd", &["overlay", "enable", "com.android.internal.systemui.navbar.transparent"]);
    let _ = run_status("/system/bin/cmd", &["overlay", "enable", "android.overlay.tecno.bg6"]);

    let _ = run_status("/system/bin/settings", &["put", "system", "navigation_bar_hint", "0"]);
    let _ = run_status("/system/bin/settings", &["put", "secure", "navigation_bar_hint", "0"]);
    let _ = run_status("/system/bin/settings", &["put", "system", "navbar_ime_space", "0"]);
    let _ = run_status("/system/bin/settings", &["put", "secure", "navbar_ime_space", "0"]);
    let _ = run_status("/system/bin/settings", &["put", "system", "gesture_navbar_length_mode", "0"]);
    let _ = run_status("/system/bin/settings", &["put", "secure", "trust_warnings", "0"]);

    if prop_get("persist.sys.bg6.display_v3") != "1" {
        let _ = run_status("/system/bin/settings", &["put", "system", "screen_auto_brightness_adj", "0.0"]);
        let _ = run_status("/system/bin/settings", &["put", "secure", "reduce_bright_colors_activated", "0"]);
        let _ = run_status("/system/bin/cmd", &["display", "reset-brightness-configuration"]);
        let _ = run_status("/system/bin/settings", &["put", "system", "peak_refresh_rate", "90.0"]);
        let _ = run_status("/system/bin/settings", &["put", "system", "min_refresh_rate", "60.0"]);
        let _ = run_status("/system/bin/settings", &["put", "secure", "double_tap_to_wake", "1"]);
        let _ = run_status("/system/bin/settings", &["put", "global", "disable_window_blurs", "0"]);

        let sat = prop_get("persist.sys.sf.color_saturation");
        if sat == "0.0" || sat == "0" {
            let _ = prop_set("persist.sys.sf.color_saturation", "1.0");
            let _ = run_status("/system/bin/service", &["call", "SurfaceFlinger", "1022", "f", "1.0"]);
        }
        let _ = prop_set("persist.sys.bg6.display_v3", "1");
    }

    let cur_dialer = run_stdout("/system/bin/cmd", &["role", "get-role-holders", "android.app.role.DIALER"]);
    if !cur_dialer.contains("com.sh.smart.caller") {
        let _ = run_status(
            "/system/bin/cmd",
            &["role", "add-role-holder", "--user", "0", "android.app.role.DIALER", "com.sh.smart.caller"],
        );
    }

    let _ = run_status("/system/bin/appops", &["set", "com.transsion.filemanagerx", "MANAGE_EXTERNAL_STORAGE", "allow"]);
    let _ = run_status("/system/bin/appops", &["set", "com.transsion.notebook", "MANAGE_EXTERNAL_STORAGE", "allow"]);

    if Path::new("/sys/block/zram0").exists() {
        let _ = write_sysfs("/sys/block/zram0/max_comp_streams", "8");
        if read_sysfs_trimmed("/sys/block/zram0/disksize").as_deref() != Some("4294967296") {
            let _ = run_status("/system/bin/swapoff", &["/dev/block/zram0"]);
            let _ = write_sysfs("/sys/block/zram0/reset", "1");
            let _ = write_sysfs("/sys/block/zram0/max_comp_streams", "8");
            let _ = write_sysfs("/sys/block/zram0/comp_algorithm", "lz4");
            let _ = write_sysfs("/sys/block/zram0/disksize", "4294967296");
            let _ = run_status("/system/bin/mkswap", &["/dev/block/zram0"]);
            let _ = run_status("/system/bin/swapon", &["/dev/block/zram0"]);
        }
    }
    0
}

fn read_ring0_proc() -> HashMap<String, String> {
    let mut map = HashMap::new();
    if let Ok(txt) = fs::read_to_string(RING0_PROC_PATH) {
        for line in txt.lines() {
            if let Some((k, v)) = line.split_once(':') {
                map.insert(k.trim().to_string(), v.trim().to_string());
            }
        }
    }
    map
}

fn read_soc_thermal_mc() -> i32 {
    for idx in 0..6 {
        let p = format!("/sys/class/thermal/thermal_zone{}/temp", idx);
        if let Some(v) = read_sysfs_i64(&p) {
            if v > 10_000 && v < 115_000 {
                return v as i32;
            }
        }
    }
    35_000
}

pub fn run_perf_daemon() -> ! {
    enforce_lte_guard();
    apply_silicon_baseline();

    // 0. Spawn Root Ring-0 eBPF Firewall Enforcer (50ms IPC + 0666 BpfNetMaps unlocker)
    crate::ebpf_loader::spawn_ebpf_firewall_enforcer();

    // 1. Load live #[no_std] Rust eBPF programs into Linux 5.4.210 ARM64 JIT
    let ebpf_rt = match LiveEbpfRuntime::load_and_attach(EBPF_OBJ_PATH) {
        Ok(rt) => Some(rt),
        Err(err) => {
            let _ = write_atomic_file("/dev/bg6_ebpf_err.log", &format!("{}\n", err), 0o640);
            None
        }
    };

    // 2. Initialize fuel-metered Pure-Rust `wasmi` WebAssembly Policy Sandbox + Apple-Jetsam Engine
    let mut wasm_sb = WasmSandbox::new();
    let mut jetsam = JetsamMemoryEngine::new();

    let mut prev_ebpf = EbpfTelemetry::default();
    let mut prev_ms = now_ms();
    let mut last_lte_guard_ms = 0i64;
    let mut last_baseline_ms = 0i64;

    let mut last_boost: i32 = -999;
    let mut last_uclamp: u32 = 999;
    let mut last_big_khz: u32 = 0;
    let mut last_gpu_hz: u64 = 0;

    loop {
        let t_ms = now_ms();
        let dt_ms = (t_ms - prev_ms).max(1);
        prev_ms = t_ms;

        // Check live hot-reload of /mnt/phh/bg6_policy.wasm
        wasm_sb.reload_if_needed(false);
        guard_dpu_pq_color_matrix(false);

        let actual_bl = read_sysfs_i64("/sys/class/backlight/sprd_backlight/actual_brightness").unwrap_or(180);
        let is_standby = actual_bl <= 0;
        let temp_mc = read_soc_thermal_mc();

        // Sample live Ring-0 eBPF JIT counters
        let (cur_ebpf, wake_rate, prio_pkt_rate, total_pkt_rate) = if let Some(ref rt) = ebpf_rt {
            let cur = rt.read_telemetry();
            let dwake = cur.kprobe_wakeups.saturating_sub(prev_ebpf.kprobe_wakeups);
            let dprio = cur.prio_lowlat_pkts.saturating_sub(prev_ebpf.prio_lowlat_pkts);
            let dpkts = (cur.egress_pkts + cur.ingress_pkts)
                .saturating_sub(prev_ebpf.egress_pkts + prev_ebpf.ingress_pkts);
            prev_ebpf = cur;
            (
                cur,
                ((dwake * 1000) / dt_ms as u64) as i32,
                ((dprio * 1000) / dt_ms as u64) as i32,
                ((dpkts * 1000) / dt_ms as u64) as i32,
            )
        } else {
            (EbpfTelemetry::default(), 0, 0, 0)
        };

        // Read Ring-0 #[no_std] Rust Kernel Engine telemetry (/proc/bg6_rust_engine)
        let r0 = read_ring0_proc();
        let r0_online = r0.get("online").map(|s| s == "1").unwrap_or(false);
        let r0_score = r0
            .get("tinyml_q16_score")
            .and_then(|s| s.parse::<i32>().ok())
            .unwrap_or(120);
        let r0_vel = r0
            .get("touch_velocity_px_s")
            .and_then(|s| s.parse::<i32>().ok())
            .unwrap_or(0);
        let r0_class = r0
            .get("tinyml_class")
            .cloned()
            .unwrap_or_else(|| "UNAVAILABLE".to_string());

        // Execute Apple-Jetsam Proactive Cold-Heap Compaction Engine (steered by Wasm Sandbox)
        jetsam.tick(&mut wasm_sb, r0_score, r0_vel, is_standby);

        // Feed closed-loop Userspace/eBPF/Thermal/Wasm/Jetsam telemetry back into Ring-0 Rust!
        if r0_online {
            let feed = format!(
                "thermal_mc={} ebpf_pkt={} ebpf_wake={} wasm_rev={} jetsam_kb={}\n",
                temp_mc,
                total_pkt_rate.max(0),
                wake_rate.max(0),
                wasm_sb.policy_version,
                jetsam.total_reclaimed_kb
            );
            let _ = write_sysfs(RING0_PROC_PATH, &feed);
        }

        // Execute Sandboxed WebAssembly Scheduler Policy Engine (`wasmi`)
        let dec = wasm_sb.eval_sched_profile(
            r0_score,
            r0_vel,
            wake_rate,
            prio_pkt_rate,
            temp_mc,
            is_standby,
        );

        // Apply dynamic scheduling adjustments only when values change (zero redundant sysfs writes!)
        if dec.top_app_boost != last_boost {
            let _ = write_sysfs(
                "/proc/sys/unisched/group_ctl/top-app/boost",
                &dec.top_app_boost.to_string(),
            );
            last_boost = dec.top_app_boost;
        }
        if dec.uclamp_min != last_uclamp {
            let _ = write_sysfs(
                "/dev/cpuctl/top-app/cpu.uclamp.min",
                &dec.uclamp_min.to_string(),
            );
            last_uclamp = dec.uclamp_min;
        }
        if !is_standby && dec.big_max_khz != last_big_khz {
            let _ = write_sysfs(
                "/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq",
                &dec.big_max_khz.to_string(),
            );
            last_big_khz = dec.big_max_khz;
        } else if is_standby {
            last_big_khz = 768_000;
        }
        if !is_standby && dec.gpu_min_hz != last_gpu_hz {
            let _ = write_sysfs(
                "/sys/class/devfreq/23100000.gpu/min_freq",
                &dec.gpu_min_hz.to_string(),
            );
            last_gpu_hz = dec.gpu_min_hz;
        }

        if t_ms - last_lte_guard_ms >= 15_000 {
            enforce_lte_guard();
            last_lte_guard_ms = t_ms;
        }
        if !is_standby && t_ms - last_baseline_ms >= 60_000 {
            apply_silicon_baseline();
            last_baseline_ms = t_ms;
        }

        // Publish live Whole-Rust + Apple-Jetsam Telemetry Snapshot
        let ebpf_summary = ebpf_rt
            .as_ref()
            .map(|r| r.status_summary.as_str())
            .unwrap_or("loaded=false");
        let ms = jetsam.last_snap;
        let snapshot = format!(
            "stack_version: v8.6.0-whole-rust-ebpf-shield-bolt\n\
             userspace_c_daemons: 0\n\
             userspace_shell_scripts: 0\n\
             ring0_kernel_rust_online: {}\n\
             ring0_tinyml_score: {}\n\
             ring0_tinyml_class: {}\n\
             ring0_touch_velocity_px_s: {}\n\
             ebpf_jit_status: {}\n\
             ebpf_egress_pkts: {} ({} bytes)\n\
             ebpf_ingress_pkts: {} ({} bytes)\n\
             ebpf_lowlat_prio_pkts: {}\n\
             ebpf_kprobe_wakeups: {} (rate={}/s)\n\
             wasm_sandbox_module: {} (rev={}, reloads={})\n\
             zig_polyglot_wasm_fnv64: 0x{:016x} (eval_cntvct_ticks={})\n\
             wasm_active_profile: {}\n\
             jetsam_active_mode: {}\n\
             jetsam_compacted_apps: {} (reclaimed_anon={} KB)\n\
             mem_available_mb: {} / {} MB (file_cache={} MB, anon={} MB)\n\
             zram_lz4_stats: {} MB orig -> {} MB used ({}.{:02}x ratio, swap_free={} MB)\n\
             psi_mem_stall_avg10: {}.{:02}% some / {}.{:02}% full\n\
             applied_top_boost: {}\n\
             applied_uclamp_min: {}\n\
             applied_big_max_khz: {}\n\
             applied_gpu_min_hz: {}\n\
             soc_temp_mc: {}\n",
            r0_online,
            r0_score,
            r0_class,
            r0_vel,
            ebpf_summary,
            cur_ebpf.egress_pkts,
            cur_ebpf.egress_bytes,
            cur_ebpf.ingress_pkts,
            cur_ebpf.ingress_bytes,
            cur_ebpf.prio_lowlat_pkts,
            cur_ebpf.kprobe_wakeups,
            wake_rate,
            wasm_sb.active_path,
            wasm_sb.policy_version,
            wasm_sb.reloads,
            wasm_sb.zig_hash64,
            wasm_sb.last_eval_ticks,
            dec.profile_name(),
            jetsam.last_mode_name,
            jetsam.total_compacted_apps,
            jetsam.total_reclaimed_kb,
            ms.mem_avail_mb,
            ms.mem_total_mb,
            ms.file_cache_mb,
            ms.anon_pages_mb,
            ms.zram_orig_mb,
            ms.zram_used_mb,
            ms.zram_ratio_x100 / 100,
            ms.zram_ratio_x100 % 100,
            ms.swap_free_mb,
            ms.psi_some_x100 / 100,
            (ms.psi_some_x100 % 100).abs(),
            ms.psi_full_x100 / 100,
            (ms.psi_full_x100 % 100).abs(),
            dec.top_app_boost,
            dec.uclamp_min,
            dec.big_max_khz,
            dec.gpu_min_hz,
            temp_mc
        );
        let _ = write_atomic_file(TELEMETRY_OUT_PATH, &snapshot, 0o644);
        chmod_path(TELEMETRY_OUT_PATH, 0o644);
        for bpf_map in [
            "/sys/fs/bpf/netd_shared/map_netd_uid_owner_map",
            "/sys/fs/bpf/netd_shared/map_netd_app_uid_stats_map",
            "/sys/fs/bpf/netd_shared/map_netd_iface_stats_map",
            "/sys/fs/bpf/netd_shared/map_netd_iface_index_name_map",
            "/sys/fs/bpf/netd_shared/map_netd_configuration_map",
            "/sys/fs/bpf/netd_shared/map_netd_ingress_discard_map",
            "/sys/fs/bpf/netd_shared/map_netd_blocked_ports_map",
            "/sys/fs/bpf/netd_shared/map_netd_cookie_tag_map",
        ] {
            chmod_path(bpf_map, 0o666);
        }
        let _ = write_atomic_file("/data/local/tmp/bg6_rust_telemetry", &snapshot, 0o644);
        if let Ok(raw_r0) = fs::read_to_string(RING0_PROC_PATH) {
            let _ = write_atomic_file("/data/local/tmp/bg6_ring0_proc.txt", &raw_r0, 0o644);
        }

        // Adaptive sleep: 300ms during active touch/UI, 3000ms during Black Standby
        let sleep_ms = if is_standby {
            3000
        } else if r0_vel > 0 || r0_score >= 300 {
            300
        } else {
            900
        };
        thread::sleep(Duration::from_millis(sleep_ms));
    }
}
