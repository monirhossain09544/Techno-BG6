#![no_std]

use core::panic::PanicInfo;

// ============================================================================
// TECNO-BG6 Sandboxed WebAssembly Policy Module (wasm32-unknown-unknown)
// Executed inside fuel-metered Pure-Rust `wasmi` runtime in bg6_rust_core.
// Can be hot-reloaded live from /mnt/phh/bg6_policy.wasm without rebooting!
// ============================================================================

pub const PROFILE_STANDBY: u64 = 0;
pub const PROFILE_ECO_IDLE: u64 = 1;
pub const PROFILE_INTERACTIVE: u64 = 2;
pub const PROFILE_SCROLL_90HZ: u64 = 3;
pub const PROFILE_ULTRA_GAMING: u64 = 4;
pub const PROFILE_THERMAL_GUARD: u64 = 5;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    core::arch::wasm32::unreachable()
}

#[no_mangle]
pub extern "C" fn wasm_policy_version() -> u32 {
    8001
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

/// Sandboxed Double-Tap Gesture Validator (1 = valid double-tap, 0 = reject)
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
        if dur_ms >= 5
            && dur_ms <= 350
            && gap_ms >= 20
            && gap_ms <= 750
            && max_move_px <= 70
            && tap_dist_px <= 200
        {
            1
        } else {
            0
        }
    } else if dur_ms >= 5
        && dur_ms <= 320
        && gap_ms >= 20
        && gap_ms <= 600
        && max_move_px <= 55
        && tap_dist_px <= 140
        && tap_y >= 10
        && tap_y <= 1480
    {
        1
    } else {
        0
    }
}
