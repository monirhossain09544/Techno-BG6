#![no_std]

use core::panic::PanicInfo;

// ============================================================================
// TECNO-BG6 Sandboxed WebAssembly Policy Module v8.5 (wasm32-unknown-unknown)
// Executed inside fuel-metered Pure-Rust `wasmi` runtime in bg6_rust_core.
// Can be hot-reloaded live from /mnt/phh/bg6_policy.wasm without rebooting!
// ============================================================================

pub const PROFILE_STANDBY: u64 = 0;
pub const PROFILE_ECO_IDLE: u64 = 1;
pub const PROFILE_INTERACTIVE: u64 = 2;
pub const PROFILE_SCROLL_90HZ: u64 = 3;
pub const PROFILE_ULTRA_GAMING: u64 = 4;
pub const PROFILE_THERMAL_GUARD: u64 = 5;

pub const JETSAM_SCROLL_SHIELD: u64 = 0;
pub const JETSAM_HEALTHY_HOLD: u64 = 1;
pub const JETSAM_GENTLE_IDLE: u64 = 2;
pub const JETSAM_PRESSURE_COMPACT: u64 = 3;
pub const JETSAM_DEEP_STANDBY: u64 = 4;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    core::arch::wasm32::unreachable()
}

#[no_mangle]
pub extern "C" fn wasm_policy_version() -> u32 {
    8003
}

/// Computes unified CPU/GPU/WALT scheduling parameters inside the Wasm sandbox.
/// Bit-packed 64-bit return format:
///   bits  0..7  : top_app_boost (0..60, biased +20 so 0 -> -20, 20 -> 0, 55 -> +35)
///   bits  8..15 : top_app_uclamp_min (0..60)
///   bits 16..31 : big_cluster_max_mhz (768..2028)
///   bits 32..47 : gpu_min_mhz (153..512)
///   bits 48..55 : profile_id (0..5)
#[no_mangle]
pub extern "C" fn wasm_compute_sched_profile(
    ring0_ml_score: i32,
    touch_vel_px_s: i32,
    ebpf_wake_rate: i32,
    ebpf_prio_pkt_rate: i32,
    temp_mc: i32,
    is_standby: i32,
) -> i64 {
    if is_standby != 0 {
        let boost_biased = 10u64; // -10
        let uclamp = 0u64;
        let big_mhz = 768u64;
        let gpu_mhz = 153u64;
        let prof = PROFILE_STANDBY;
        return (boost_biased
            | (uclamp << 8)
            | (big_mhz << 16)
            | (gpu_mhz << 32)
            | (prof << 48)) as i64;
    }

    // Severe thermal guard (> 46.5C)
    if temp_mc >= 46500 {
        let boost_biased = 28u64; // +8
        let uclamp = 10u64;
        let big_mhz = 1404u64;
        let gpu_mhz = 307u64;
        let prof = PROFILE_THERMAL_GUARD;
        return (boost_biased
            | (uclamp << 8)
            | (big_mhz << 16)
            | (gpu_mhz << 32)
            | (prof << 48)) as i64;
    }

    // Fuse Ring-0 MLP score + Userspace eBPF burst telemetry
    let fused = ring0_ml_score
        + (ebpf_wake_rate / 12).min(160)
        + (ebpf_prio_pkt_rate / 4).min(140)
        + (touch_vel_px_s / 25).min(200);

    let (boost_biased, uclamp, mut big_mhz, gpu_mhz, prof) = if fused >= 780 {
        (58u64, 35u64, 2028u64, 512u64, PROFILE_ULTRA_GAMING) // +38 boost
    } else if fused >= 440 || touch_vel_px_s >= 320 {
        (50u64, 28u64, 2028u64, 384u64, PROFILE_SCROLL_90HZ) // +30 boost
    } else if fused >= 180 {
        (40u64, 18u64, 1820u64, 384u64, PROFILE_INTERACTIVE) // +20 boost
    } else {
        (28u64, 8u64, 1612u64, 384u64, PROFILE_ECO_IDLE) // +8 boost (keep 384 GPU floor when screen on for 90Hz!)
    };

    // Gentle thermal step-down between 43.5C and 46.5C
    if temp_mc >= 43500 && big_mhz > 1612 {
        big_mhz = 1612;
    }

    (boost_biased
        | (uclamp << 8)
        | (big_mhz << 16)
        | (gpu_mhz << 32)
        | (prof << 48)) as i64
}

/// Computes Apple iOS (`Jetsam / WKdm`)-style proactive cold-heap compaction policy.
/// Bit-packed 64-bit return format:
///   bits  0..7  : jetsam_mode (0=SCROLL_SHIELD, 1=HEALTHY_HOLD, 2=GENTLE_IDLE, 3=PRESSURE, 4=STANDBY)
///   bits  8..23 : min_oom_adj (0..1000)
///   bits 24..39 : min_anon_kb (0..65535)
///   bits 40..47 : max_pids_per_pass (0..8)
///   bits 48..55 : target_swappiness (60..180)
#[no_mangle]
pub extern "C" fn wasm_compute_jetsam_action(
    mem_avail_mb: i32,
    swap_free_mb: i32,
    psi_some_x100: i32,
    ring0_ml_score: i32,
    touch_vel_px_s: i32,
    is_standby: i32,
) -> i64 {
    let pack = |mode: u64, min_adj: u64, min_kb: u64, max_pids: u64, swp: u64| -> i64 {
        (mode
            | ((min_adj & 0xffff) << 8)
            | ((min_kb & 0xffff) << 24)
            | ((max_pids & 0xff) << 40)
            | ((swp & 0xff) << 48)) as i64
    };

    // ZRAM capacity safety valve: stop proactive swap-out if < 220 MB swap remains
    if swap_free_mb < 220 {
        return pack(JETSAM_HEALTHY_HOLD, 900, 32768, 0, 75);
    }

    if is_standby != 0 {
        return pack(JETSAM_DEEP_STANDBY, 650, 10240, 3, 145);
    }

    // 90Hz Touch / Scroll / Gaming Shield: zero background compaction during active gestures
    // unless available physical RAM drops below emergency 250 MB floor
    if (touch_vel_px_s > 60 || ring0_ml_score >= 380) && mem_avail_mb >= 250 {
        return pack(JETSAM_SCROLL_SHIELD, 900, 24576, 0, 135);
    }

    // Proactive pressure compaction: compress cold anonymous heaps into 1.8 GB/s LZ4 ZRAM
    // BEFORE PSI memory stalls trigger LMKD app kills!
    if mem_avail_mb < 820 || psi_some_x100 >= 120 {
        return pack(JETSAM_PRESSURE_COMPACT, 500, 8192, 4, 150);
    }

    // Gentle idle compaction: keep ~1.55 GB physical RAM headroom ready for instant app opens
    if mem_avail_mb < 1550 {
        return pack(JETSAM_GENTLE_IDLE, 700, 14336, 2, 135);
    }

    // Abundant physical LPDDR4X free (>= 1.55 GB): hold apps uncompressed at zero CPU cost
    pack(JETSAM_HEALTHY_HOLD, 850, 24576, 0, 125)
}

/// Sandboxed Double-Tap Gesture Validator (1 = valid double-tap, 0 = reject)
/// Screen-on DT2S is delegated 100% to Android 16's native SystemUI / Launcher3
/// to prevent double-power-toggle blink; Wasm validates Black-Standby DT2W with
/// hardware IRQ timestamps (`dur_ms` >= 0 for crisp sub-5ms taps, `gap_ms` = down2 - up1).
#[no_mangle]
pub extern "C" fn wasm_validate_double_tap(
    is_standby: i32,
    dur_ms: i32,
    gap_ms: i32,
    max_move_px: i32,
    tap_dist_px: i32,
    tap_y: i32,
) -> i32 {
    if is_standby != 0 {
        if dur_ms >= 0
            && dur_ms <= 380
            && gap_ms >= 15
            && gap_ms <= 550
            && max_move_px >= 0
            && max_move_px <= 60
            && tap_dist_px >= 0
            && tap_dist_px <= 145
            && tap_y >= 60
            && tap_y <= 1552
        {
            1
        } else {
            0
        }
    } else {
        0
    }
}
