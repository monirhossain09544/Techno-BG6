mod dt2w_daemon;
mod ebpf_loader;
mod gnss_engine;
mod memory_jetsam;
mod perf_scheduler;
mod sys_util;
mod wasm_engine;

use std::env;
use std::fs;
use std::path::Path;

fn print_whole_rust_dashboard() {
    println!("================================================================");
    println!(" TECNO-BG6 WHOLE-RUST 2026 OS ENGINE (v8.5 — XNU/Jetsam + BOLT)");
    println!("================================================================");

    println!("\n[1] Ring-0 In-Kernel #[no_std] Rust XNU-VM Engine (/proc/bg6_rust_engine):");
    if let Ok(s) = fs::read_to_string("/proc/bg6_rust_engine")
        .or_else(|_| fs::read_to_string("/data/local/tmp/bg6_ring0_proc.txt"))
    {
        print!("{}", s);
    } else {
        println!("  unavailable");
    }

    println!("\n[2] Live Userspace Rust + Apple-Jetsam + eBPF JIT + Wasm Telemetry:");
    if let Ok(s) = fs::read_to_string("/dev/bg6_rust_telemetry")
        .or_else(|_| fs::read_to_string("/data/local/tmp/bg6_rust_telemetry"))
    {
        print!("{}", s);
    } else {
        println!("  unavailable");
    }

    println!("\n[3] 5-Layer Kernel GNSS Status:");
    let _ = gnss_engine::run_kernel_gps_cli(&[]);
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let argv0 = args
        .first()
        .and_then(|p| Path::new(p).file_name())
        .and_then(|s| s.to_str())
        .unwrap_or("bg6_rust_core");

    let code = match argv0 {
        "bg6_perf_engine" => {
            if args.get(1).map(|s| s.as_str()) == Some("--boot") {
                perf_scheduler::enforce_lte_guard();
                perf_scheduler::apply_silicon_baseline();
                0
            } else if args.get(1).map(|s| s.as_str()) == Some("--tune-boot") {
                perf_scheduler::run_post_boot_tune()
            } else {
                perf_scheduler::run_perf_daemon()
            }
        }
        "bg6_boot_tune" => perf_scheduler::run_post_boot_tune(),
        "bg6_dt2w_daemon" => dt2w_daemon::run_dt2w_daemon(),
        "gnss_kernel_engine" => {
            let once = args.get(1).map(|s| s.as_str()) == Some("--once");
            gnss_engine::run_gnss_daemon(once)
        }
        "kernel-gps" => gnss_engine::run_kernel_gps_cli(&args[1..]),
        _ => {
            match args.get(1).map(|s| s.as_str()) {
                Some("--perf-boot") => {
                    perf_scheduler::enforce_lte_guard();
                    perf_scheduler::apply_silicon_baseline();
                    0
                }
                Some("--tune-boot") => perf_scheduler::run_post_boot_tune(),
                Some("--perf-daemon") => perf_scheduler::run_perf_daemon(),
                Some("--dt2w-daemon") => dt2w_daemon::run_dt2w_daemon(),
                Some("--gnss-daemon") => gnss_engine::run_gnss_daemon(false),
                Some("--gnss-cli") => gnss_engine::run_kernel_gps_cli(&args[2..]),
                _ => {
                    print_whole_rust_dashboard();
                    0
                }
            }
        }
    };

    std::process::exit(code);
}
