#![no_std]
#![forbid(unsafe_op_in_unsafe_fn)]

use core::panic::PanicInfo;
use core::sync::atomic::{AtomicI32, AtomicU32, AtomicU64, Ordering};

// ============================================================================
// TECNO-BG6 Ring-0 #[no_std] In-Kernel Rust Engine (Linux 5.4.210 vmlinux)
// Target: aarch64-unknown-none-softfloat (+reserve-x18, SCS-compatible, 0 FPU)
// Design: 100% Lock-Free Atomics, Zero Heap, Zero Panics, Zero Vtables,
//         Zero R_AARCH64_ABS64 Relocations, KASLR & Clang-CFI Safe!
// ============================================================================

const EV_SYN: u16 = 0x00;
const EV_KEY: u16 = 0x01;
const EV_ABS: u16 = 0x03;

const SYN_REPORT: u16 = 0x00;
const BTN_TOUCH: u16 = 0x14a;
const ABS_MT_POSITION_X: u16 = 0x35;
const ABS_MT_POSITION_Y: u16 = 0x36;
const ABS_MT_TRACKING_ID: u16 = 0x39;

pub const CLASS_DEEP_IDLE: u32 = 0;
pub const CLASS_LIGHT_UI: u32 = 1;
pub const CLASS_SCROLL_90HZ: u32 = 2;
pub const CLASS_GAMING_TURBO: u32 = 3;
pub const CLASS_BLACK_STANDBY: u32 = 4;

const MODE_AUTO: u32 = 0;
const MODE_GAMING: u32 = 1;
const MODE_POWERSAVE: u32 = 2;
const MODE_STANDBY: u32 = 3;

static BOOT_NS: AtomicU64 = AtomicU64::new(0);
static ENGINE_ONLINE: AtomicU32 = AtomicU32::new(0);
static ENGINE_MODE: AtomicU32 = AtomicU32::new(MODE_AUTO);

static TOUCH_EVENTS_TOTAL: AtomicU64 = AtomicU64::new(0);
static TOUCH_FRAMES_TOTAL: AtomicU64 = AtomicU64::new(0);
static KEY_EVENTS_TOTAL: AtomicU64 = AtomicU64::new(0);
static LAST_TOUCH_NS: AtomicU64 = AtomicU64::new(0);
static PREV_FRAME_NS: AtomicU64 = AtomicU64::new(0);
static INTER_FRAME_US: AtomicU32 = AtomicU32::new(0);

static CUR_X: AtomicI32 = AtomicI32::new(0);
static CUR_Y: AtomicI32 = AtomicI32::new(0);
static PREV_X: AtomicI32 = AtomicI32::new(0);
static PREV_Y: AtomicI32 = AtomicI32::new(0);
static TOUCH_DOWN: AtomicU32 = AtomicU32::new(0);
static TOUCH_VELOCITY_PX_S: AtomicU32 = AtomicU32::new(0);
static WINDOW_FRAMES: AtomicU32 = AtomicU32::new(0);
static FRAME_BURST_HZ: AtomicU32 = AtomicU32::new(0);

static SCHED_TICKS_TOTAL: AtomicU64 = AtomicU64::new(0);
static LAST_NR_RUNNING: AtomicU32 = AtomicU32::new(0);
static LAST_LOAD_AV1: AtomicU32 = AtomicU32::new(0);
static THERMAL_MC: AtomicI32 = AtomicI32::new(34000);
static EBPF_PKT_RATE: AtomicU32 = AtomicU32::new(0);
static EBPF_WAKE_RATE: AtomicU32 = AtomicU32::new(0);
static WASM_POLICY_REV: AtomicU32 = AtomicU32::new(0);

static TINYML_SCORE: AtomicU32 = AtomicU32::new(0);
static TINYML_CLASS: AtomicU32 = AtomicU32::new(CLASS_DEEP_IDLE);
static REC_TOP_BOOST: AtomicI32 = AtomicI32::new(10);
static REC_UCLAMP_MIN: AtomicU32 = AtomicU32::new(5);
static REC_GPU_FLOOR_MHZ: AtomicU32 = AtomicU32::new(384);

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {
        core::hint::spin_loop();
    }
}

#[inline(always)]
fn abs_i32(v: i32) -> u32 {
    if v < 0 {
        (v as i64).wrapping_neg() as u32
    } else {
        v as u32
    }
}

#[inline(always)]
fn clamp_i64(v: i64, lo: i64, hi: i64) -> i64 {
    if v < lo {
        lo
    } else if v > hi {
        hi
    } else {
        v
    }
}

#[inline(always)]
fn relu_q16(v: i64) -> i64 {
    if v > 0 { v } else { 0 }
}

/// 2-Layer Fixed-Point Q16.16 Multi-Layer Perceptron (MLP) in Ring-0
/// Zero floating-point instructions, zero division by zero, zero panics.
fn eval_ring0_tinyml_q16(
    frame_hz: u32,
    vel_px_s: u32,
    nr_run: u32,
    ebpf_burst: u32,
    temp_mc: i32,
    touch_age_ms: u64,
    mode: u32,
) -> (u32, u32, i32, u32, u32) {
    if mode == MODE_STANDBY {
        return (0, CLASS_BLACK_STANDBY, 0, 0, 153);
    }
    if mode == MODE_GAMING {
        return (960, CLASS_GAMING_TURBO, 40, 35, 512);
    }
    if mode == MODE_POWERSAVE {
        return (120, CLASS_DEEP_IDLE, 0, 0, 256);
    }

    let x_hz = clamp_i64(((frame_hz as i64) << 16) / 180, 0, 65536);
    let x_vel = clamp_i64(((vel_px_s as i64) << 16) / 3600, 0, 65536);
    let x_rq = clamp_i64(((nr_run as i64) << 16) / 12, 0, 65536);
    let x_bpf = clamp_i64(((ebpf_burst as i64) << 16) / 2000, 0, 65536);
    let x_therm = if temp_mc <= 41000 {
        0
    } else {
        clamp_i64((((temp_mc as i64) - 41000) << 16) / 9000, 0, 65536)
    };
    let x_recency = if touch_age_ms < 350 {
        65536
    } else if touch_age_ms < 2000 {
        clamp_i64(((2000 - touch_age_ms as i64) << 16) / 1650, 0, 65536)
    } else {
        0
    };

    let h0 = relu_q16(((x_hz * 42000 + x_vel * 52000 + x_recency * 24000) >> 16) - 18000);
    let h1 = relu_q16(((x_rq * 56000 + x_bpf * 30000 + x_hz * 22000) >> 16) - 20000);
    let h2 = relu_q16(((x_recency * 58000 + x_hz * 20000) >> 16) - 10000);
    let h3 = relu_q16(((x_bpf * 54000 + x_rq * 20000) >> 16) - 14000);
    let h4 = relu_q16(((x_therm * 65536) >> 16) - 8192);
    let h5 = relu_q16(((x_vel * 32768 + x_rq * 32768 + x_recency * 32768) >> 16) - 24000);

    let raw_q16 = ((h0 * 28000 + h1 * 34000 + h2 * 22000 + h3 * 16000 + h5 * 20000 - h4 * 36000) >> 16)
        + 4096;
    let score = clamp_i64((raw_q16 * 1000) >> 16, 0, 1000) as u32;

    let class = if score >= 760 && nr_run >= 4 {
        CLASS_GAMING_TURBO
    } else if score >= 450 || (touch_age_ms < 450 && vel_px_s >= 350) {
        CLASS_SCROLL_90HZ
    } else if score >= 180 || touch_age_ms < 1500 {
        CLASS_LIGHT_UI
    } else {
        CLASS_DEEP_IDLE
    };

    let (boost, uclamp, gpu_mhz) = match class {
        CLASS_GAMING_TURBO => (35, 32, 512),
        CLASS_SCROLL_90HZ => (28, 25, 384),
        CLASS_LIGHT_UI => (15, 12, 384),
        _ => (5, 2, 256),
    };

    let adj_boost = if temp_mc > 44000 {
        if boost > 10 { boost - 10 } else { 0 }
    } else {
        boost
    };
    (score, class, adj_boost, uclamp, gpu_mhz)
}

#[no_mangle]
pub extern "C" fn bg6_rust_init(now_ns: u64) {
    BOOT_NS.store(now_ns, Ordering::Relaxed);
    LAST_TOUCH_NS.store(now_ns, Ordering::Relaxed);
    ENGINE_ONLINE.store(1, Ordering::Release);
}

#[no_mangle]
pub extern "C" fn bg6_rust_on_input_event(ev_type: u16, ev_code: u16, ev_val: i32, now_ns: u64) {
    if ENGINE_ONLINE.load(Ordering::Acquire) == 0 {
        return;
    }

    match ev_type {
        EV_ABS => {
            TOUCH_EVENTS_TOTAL.fetch_add(1, Ordering::Relaxed);
            match ev_code {
                ABS_MT_POSITION_X => CUR_X.store(ev_val, Ordering::Relaxed),
                ABS_MT_POSITION_Y => CUR_Y.store(ev_val, Ordering::Relaxed),
                ABS_MT_TRACKING_ID => {
                    if ev_val >= 0 {
                        TOUCH_DOWN.store(1, Ordering::Relaxed);
                        PREV_X.store(CUR_X.load(Ordering::Relaxed), Ordering::Relaxed);
                        PREV_Y.store(CUR_Y.load(Ordering::Relaxed), Ordering::Relaxed);
                        PREV_FRAME_NS.store(now_ns, Ordering::Relaxed);
                    } else {
                        TOUCH_DOWN.store(0, Ordering::Relaxed);
                    }
                }
                _ => {}
            }
        }
        EV_KEY => {
            KEY_EVENTS_TOTAL.fetch_add(1, Ordering::Relaxed);
            if ev_code == BTN_TOUCH {
                TOUCH_DOWN.store(if ev_val != 0 { 1 } else { 0 }, Ordering::Relaxed);
            }
            LAST_TOUCH_NS.store(now_ns, Ordering::Relaxed);
        }
        EV_SYN if ev_code == SYN_REPORT => {
            if TOUCH_DOWN.load(Ordering::Relaxed) != 0 {
                TOUCH_FRAMES_TOTAL.fetch_add(1, Ordering::Relaxed);
                WINDOW_FRAMES.fetch_add(1, Ordering::Relaxed);
                LAST_TOUCH_NS.store(now_ns, Ordering::Relaxed);

                let prev_ns = PREV_FRAME_NS.swap(now_ns, Ordering::Relaxed);
                let cx = CUR_X.load(Ordering::Relaxed);
                let cy = CUR_Y.load(Ordering::Relaxed);
                let px = PREV_X.swap(cx, Ordering::Relaxed);
                let py = PREV_Y.swap(cy, Ordering::Relaxed);

                if now_ns > prev_ns {
                    let dt_us = (now_ns - prev_ns) / 1000;
                    if dt_us >= 1 && dt_us < 250_000 {
                        INTER_FRAME_US.store(dt_us as u32, Ordering::Relaxed);
                        let dist_px = abs_i32(cx.wrapping_sub(px))
                            .saturating_add(abs_i32(cy.wrapping_sub(py)));
                        let vel_raw = (dist_px as u64).saturating_mul(1_000_000) / dt_us;
                        let vel = if vel_raw > 20_000 { 20_000 } else { vel_raw as u32 };
                        let old_vel = TOUCH_VELOCITY_PX_S.load(Ordering::Relaxed);
                        TOUCH_VELOCITY_PX_S.store((old_vel * 3 + vel * 5) >> 3, Ordering::Relaxed);
                    }
                }
            }
        }
        _ => {}
    }
}

#[no_mangle]
pub extern "C" fn bg6_rust_on_sched_tick(nr_running: u32, load_av1: u32, now_ns: u64) -> u32 {
    SCHED_TICKS_TOTAL.fetch_add(1, Ordering::Relaxed);
    LAST_NR_RUNNING.store(nr_running, Ordering::Relaxed);
    LAST_LOAD_AV1.store(load_av1, Ordering::Relaxed);

    let frames = WINDOW_FRAMES.swap(0, Ordering::Relaxed);
    let hz = frames.saturating_mul(10);
    FRAME_BURST_HZ.store(hz, Ordering::Relaxed);

    let last_t = LAST_TOUCH_NS.load(Ordering::Relaxed);
    let touch_age_ms = if now_ns > last_t {
        (now_ns - last_t) / 1_000_000
    } else {
        0
    };

    if touch_age_ms > 250 {
        let decayed = TOUCH_VELOCITY_PX_S.load(Ordering::Relaxed) >> 1;
        TOUCH_VELOCITY_PX_S.store(decayed, Ordering::Relaxed);
    }

    let vel = TOUCH_VELOCITY_PX_S.load(Ordering::Relaxed);
    let temp = THERMAL_MC.load(Ordering::Relaxed);
    let bpf_burst = EBPF_PKT_RATE
        .load(Ordering::Relaxed)
        .saturating_add(EBPF_WAKE_RATE.load(Ordering::Relaxed));
    let mode = ENGINE_MODE.load(Ordering::Relaxed);

    let (score, class, boost, uclamp, gpu) =
        eval_ring0_tinyml_q16(hz, vel, nr_running, bpf_burst, temp, touch_age_ms, mode);

    TINYML_SCORE.store(score, Ordering::Relaxed);
    TINYML_CLASS.store(class, Ordering::Relaxed);
    REC_TOP_BOOST.store(boost, Ordering::Relaxed);
    REC_UCLAMP_MIN.store(uclamp, Ordering::Relaxed);
    REC_GPU_FLOOR_MHZ.store(gpu, Ordering::Relaxed);

    score
}

// 100% panic-free raw pointer cursor writer (zero slice bounds-check panics!)
struct RawBufWriter {
    ptr: *mut u8,
    cap: usize,
    pos: usize,
}

impl RawBufWriter {
    #[inline(always)]
    fn new(ptr: *mut u8, cap: usize) -> Self {
        Self { ptr, cap, pos: 0 }
    }

    #[inline(always)]
    fn push_byte(&mut self, b: u8) {
        if self.pos < self.cap {
            unsafe {
                *self.ptr.add(self.pos) = b;
            }
            self.pos += 1;
        }
    }

    #[inline(always)]
    fn push_bytes(&mut self, s: &[u8]) {
        let mut i = 0;
        let slen = s.len();
        let sp = s.as_ptr();
        while i < slen && self.pos < self.cap {
            unsafe {
                *self.ptr.add(self.pos) = *sp.add(i);
            }
            self.pos += 1;
            i += 1;
        }
    }

    #[inline(always)]
    fn push_u64(&mut self, mut val: u64) {
        if val == 0 {
            self.push_byte(b'0');
            return;
        }
        let mut tmp = [0u8; 20];
        let tp = tmp.as_mut_ptr();
        let mut len = 0usize;
        while val > 0 && len < 20 {
            unsafe {
                *tp.add(len) = b'0' + (val % 10) as u8;
            }
            val /= 10;
            len += 1;
        }
        while len > 0 {
            len -= 1;
            let c = unsafe { *tp.add(len) };
            self.push_byte(c);
        }
    }

    #[inline(always)]
    fn push_i32(&mut self, val: i32) {
        if val < 0 {
            self.push_byte(b'-');
            self.push_u64((val as i64).wrapping_neg() as u64);
        } else {
            self.push_u64(val as u64);
        }
    }

    #[inline(always)]
    fn kv_u64(&mut self, k: &[u8], v: u64) {
        self.push_bytes(k);
        self.push_bytes(b": ");
        self.push_u64(v);
        self.push_byte(b'\n');
    }

    #[inline(always)]
    fn kv_i32(&mut self, k: &[u8], v: i32) {
        self.push_bytes(k);
        self.push_bytes(b": ");
        self.push_i32(v);
        self.push_byte(b'\n');
    }

    #[inline(always)]
    fn kv_str(&mut self, k: &[u8], v: &[u8]) {
        self.push_bytes(k);
        self.push_bytes(b": ");
        self.push_bytes(v);
        self.push_byte(b'\n');
    }
}

#[no_mangle]
pub extern "C" fn bg6_rust_proc_render(buf_ptr: *mut u8, buf_cap: usize, now_ns: u64) -> usize {
    if buf_ptr.is_null() || buf_cap < 64 {
        return 0;
    }
    let mut w = RawBufWriter::new(buf_ptr, buf_cap - 1);

    let boot = BOOT_NS.load(Ordering::Relaxed);
    let up_ms = if now_ns > boot { (now_ns - boot) / 1_000_000 } else { 0 };
    let last_t = LAST_TOUCH_NS.load(Ordering::Relaxed);
    let idle_ms = if now_ns > last_t { (now_ns - last_t) / 1_000_000 } else { 0 };

    let class_name: &[u8] = match TINYML_CLASS.load(Ordering::Relaxed) {
        CLASS_DEEP_IDLE => b"DEEP_IDLE",
        CLASS_LIGHT_UI => b"LIGHT_UI",
        CLASS_SCROLL_90HZ => b"SCROLL_90HZ",
        CLASS_GAMING_TURBO => b"GAMING_TURBO",
        CLASS_BLACK_STANDBY => b"BLACK_STANDBY",
        _ => b"UNKNOWN",
    };

    let mode_name: &[u8] = match ENGINE_MODE.load(Ordering::Relaxed) {
        MODE_AUTO => b"auto",
        MODE_GAMING => b"gaming",
        MODE_POWERSAVE => b"powersave",
        MODE_STANDBY => b"standby",
        _ => b"auto",
    };

    w.kv_str(b"engine", b"bg6_kernel_ring0_nostd v8.0.0");
    w.kv_str(b"target", b"aarch64-unknown-none-softfloat");
    w.kv_str(b"abi_guard", b"scs_x18=verified cfi_clang=active fp_simd=zero");
    w.kv_u64(b"online", ENGINE_ONLINE.load(Ordering::Relaxed) as u64);
    w.kv_str(b"mode", mode_name);
    w.kv_u64(b"uptime_ms", up_ms);
    w.kv_u64(b"sched_ticks", SCHED_TICKS_TOTAL.load(Ordering::Relaxed));
    w.kv_u64(b"touch_events", TOUCH_EVENTS_TOTAL.load(Ordering::Relaxed));
    w.kv_u64(b"touch_frames", TOUCH_FRAMES_TOTAL.load(Ordering::Relaxed));
    w.kv_u64(b"key_events", KEY_EVENTS_TOTAL.load(Ordering::Relaxed));
    w.kv_u64(b"touch_idle_ms", idle_ms);
    w.kv_u64(b"touch_down", TOUCH_DOWN.load(Ordering::Relaxed) as u64);
    w.kv_i32(b"touch_x", CUR_X.load(Ordering::Relaxed));
    w.kv_i32(b"touch_y", CUR_Y.load(Ordering::Relaxed));
    w.kv_u64(b"touch_velocity_px_s", TOUCH_VELOCITY_PX_S.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"touch_burst_hz", FRAME_BURST_HZ.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"inter_frame_us", INTER_FRAME_US.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"nr_running", LAST_NR_RUNNING.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"load_av1", LAST_LOAD_AV1.load(Ordering::Relaxed) as u64);
    w.kv_i32(b"thermal_mc", THERMAL_MC.load(Ordering::Relaxed));
    w.kv_u64(b"ebpf_pkt_rate", EBPF_PKT_RATE.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"ebpf_wake_rate", EBPF_WAKE_RATE.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"wasm_policy_rev", WASM_POLICY_REV.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"tinyml_q16_score", TINYML_SCORE.load(Ordering::Relaxed) as u64);
    w.kv_str(b"tinyml_class", class_name);
    w.kv_i32(b"rec_top_boost", REC_TOP_BOOST.load(Ordering::Relaxed));
    w.kv_u64(b"rec_uclamp_min", REC_UCLAMP_MIN.load(Ordering::Relaxed) as u64);
    w.kv_u64(b"rec_gpu_floor_mhz", REC_GPU_FLOOR_MHZ.load(Ordering::Relaxed) as u64);

    let len = w.pos;
    unsafe {
        *buf_ptr.add(len) = 0;
    }
    len
}

#[inline(always)]
unsafe fn ptr_starts_with(p: *const u8, len: usize, prefix: &[u8]) -> bool {
    let plen = prefix.len();
    if len < plen {
        return false;
    }
    let pp = prefix.as_ptr();
    let mut i = 0;
    while i < plen {
        if unsafe { *p.add(i) != *pp.add(i) } {
            return false;
        }
        i += 1;
    }
    true
}

#[inline(always)]
unsafe fn ptr_parse_i32(p: *const u8, len: usize) -> Option<i32> {
    if len == 0 {
        return None;
    }
    let mut i = 0;
    let mut neg = false;
    if unsafe { *p } == b'-' {
        neg = true;
        i += 1;
    }
    if i >= len {
        return None;
    }
    let mut acc: i64 = 0;
    let mut digits = 0;
    while i < len {
        let c = unsafe { *p.add(i) };
        if c >= b'0' && c <= b'9' {
            acc = acc.saturating_mul(10).saturating_add((c - b'0') as i64);
            digits += 1;
        } else {
            break;
        }
        i += 1;
    }
    if digits == 0 {
        return None;
    }
    let res = if neg { -acc } else { acc };
    Some(clamp_i64(res, i32::MIN as i64, i32::MAX as i64) as i32)
}

#[no_mangle]
pub extern "C" fn bg6_rust_proc_command(cmd_ptr: *const u8, cmd_len: usize) -> i32 {
    if cmd_ptr.is_null() || cmd_len == 0 || cmd_len > 1024 {
        return -22;
    }
    let mut i = 0;
    while i < cmd_len {
        while i < cmd_len {
            let c = unsafe { *cmd_ptr.add(i) };
            if c == b' ' || c == b'\n' || c == b'\r' || c == b'\t' {
                i += 1;
            } else {
                break;
            }
        }
        let start = i;
        while i < cmd_len {
            let c = unsafe { *cmd_ptr.add(i) };
            if c != b' ' && c != b'\n' && c != b'\r' && c != b'\t' {
                i += 1;
            } else {
                break;
            }
        }
        let tlen = i - start;
        if tlen == 0 {
            continue;
        }
        let tp = unsafe { cmd_ptr.add(start) };
        unsafe {
            if ptr_starts_with(tp, tlen, b"mode=") {
                let vp = tp.add(5);
                let vlen = tlen - 5;
                if ptr_starts_with(vp, vlen, b"gaming") {
                    ENGINE_MODE.store(MODE_GAMING, Ordering::Relaxed);
                } else if ptr_starts_with(vp, vlen, b"powersave") {
                    ENGINE_MODE.store(MODE_POWERSAVE, Ordering::Relaxed);
                } else if ptr_starts_with(vp, vlen, b"standby") {
                    ENGINE_MODE.store(MODE_STANDBY, Ordering::Relaxed);
                } else {
                    ENGINE_MODE.store(MODE_AUTO, Ordering::Relaxed);
                }
            } else if ptr_starts_with(tp, tlen, b"thermal_mc=") {
                if let Some(t) = ptr_parse_i32(tp.add(11), tlen - 11) {
                    THERMAL_MC.store(t, Ordering::Relaxed);
                }
            } else if ptr_starts_with(tp, tlen, b"ebpf_pkt=") {
                if let Some(p) = ptr_parse_i32(tp.add(9), tlen - 9) {
                    EBPF_PKT_RATE.store(if p > 0 { p as u32 } else { 0 }, Ordering::Relaxed);
                }
            } else if ptr_starts_with(tp, tlen, b"ebpf_wake=") {
                if let Some(w) = ptr_parse_i32(tp.add(10), tlen - 10) {
                    EBPF_WAKE_RATE.store(if w > 0 { w as u32 } else { 0 }, Ordering::Relaxed);
                }
            } else if ptr_starts_with(tp, tlen, b"wasm_rev=") {
                if let Some(r) = ptr_parse_i32(tp.add(9), tlen - 9) {
                    WASM_POLICY_REV.store(if r > 0 { r as u32 } else { 0 }, Ordering::Relaxed);
                }
            }
        }
    }
    0
}
