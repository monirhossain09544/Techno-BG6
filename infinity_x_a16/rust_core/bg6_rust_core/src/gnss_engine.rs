use std::ffi::CString;
use std::fs;
use std::path::Path;

use crate::sys_util::{
    mount_bind, prop_get, prop_set, run_status, umount_all_detach, write_atomic_file,
};

const CMDLINE_CLEAN_PATH: &str = "/mnt/phh/cmdline_clean";
const GPS_CONF_PATH: &str = "/mnt/phh/kernel_gps.conf";

pub fn sanitize_kernel_cmdline() {
    let Ok(raw) = fs::read_to_string("/proc/cmdline") else {
        return;
    };
    let cleaned = raw
        .replace("androidboot.verifiedbootstate=orange", "androidboot.verifiedbootstate=green")
        .replace("androidboot.verifiedbootstate=yellow", "androidboot.verifiedbootstate=green")
        .replace("androidboot.vbmeta.device_state=unlocked", "androidboot.vbmeta.device_state=locked")
        .replace("androidboot.flash.locked=0", "androidboot.flash.locked=1");

    let _ = fs::create_dir_all("/mnt/phh");
    umount_all_detach("/proc/cmdline");
    if write_atomic_file(CMDLINE_CLEAN_PATH, &cleaned, 0o444) {
        let _ = mount_bind(CMDLINE_CLEAN_PATH, "/proc/cmdline");
    }
}

fn is_gnss_override_active() -> bool {
    if Path::new(GPS_CONF_PATH).exists() {
        return true;
    }
    let coords = prop_get("persist.sys.kernel.gps.coords");
    !coords.is_empty() && coords != "0" && coords != "off"
}

/// 100% Pure-Rust event-driven replacement for gnss_kernel_engine.c
/// Uses inotify on /mnt/phh so idle CPU usage is 0.00% when GNSS override is off!
pub fn run_gnss_daemon(once_only: bool) -> i32 {
    sanitize_kernel_cmdline();
    let _ = prop_set("persist.sys.override_mock_location", "true");

    if once_only {
        return 0;
    }

    let _ = fs::create_dir_all("/mnt/phh");
    let inotify_fd = unsafe { libc::inotify_init1(libc::IN_NONBLOCK | libc::IN_CLOEXEC) };
    if inotify_fd >= 0 {
        if let Ok(cdir) = CString::new("/mnt/phh") {
            unsafe {
                libc::inotify_add_watch(
                    inotify_fd,
                    cdir.as_ptr(),
                    libc::IN_CREATE | libc::IN_MODIFY | libc::IN_MOVED_TO | libc::IN_DELETE,
                );
            }
        }
    }

    let mut ibuf = [0u8; 512];
    loop {
        let active = is_gnss_override_active();
        if active {
            let _ = run_status(
                "/system/bin/cmd",
                &["location", "providers", "send-extra-command", "gps", "kernel_inject"],
            );
        }

        // Wait 1000ms when active, or up to 5000ms (waking immediately on inotify) when inactive
        let timeout_ms = if active { 1000 } else { 5000 };
        if inotify_fd >= 0 {
            let mut pfd = libc::pollfd {
                fd: inotify_fd,
                events: libc::POLLIN,
                revents: 0,
            };
            let rc = unsafe { libc::poll(&mut pfd, 1, timeout_ms) };
            if rc > 0 && (pfd.revents & libc::POLLIN) != 0 {
                unsafe {
                    while libc::read(inotify_fd, ibuf.as_mut_ptr() as *mut _, ibuf.len()) > 0 {}
                }
            }
        } else {
            std::thread::sleep(std::time::Duration::from_millis(timeout_ms as u64));
        }
    }
}

/// 100% Pure-Rust replacement for `/system/bin/kernel-gps` shell script
pub fn run_kernel_gps_cli(args: &[String]) -> i32 {
    let action = args.first().map(|s| s.as_str()).unwrap_or("status");
    match action {
        "set" => {
            if args.len() < 3 {
                println!("Usage: kernel-gps set <lat> <lon> [alt] [acc]");
                return 1;
            }
            let lat = &args[1];
            let lon = &args[2];
            let alt = args.get(3).map(|s| s.as_str()).unwrap_or("15.2");
            let acc = args.get(4).map(|s| s.as_str()).unwrap_or("3.4");
            let payload = format!("{},{},{},{}\n", lat, lon, alt, acc);
            let coords_prop = format!("{},{},{},{}", lat, lon, alt, acc);

            let _ = fs::create_dir_all("/mnt/phh");
            let _ = write_atomic_file(GPS_CONF_PATH, &payload, 0o644);
            let _ = prop_set("persist.sys.override_mock_location", "true");
            let _ = prop_set("persist.sys.kernel.gps.coords", &coords_prop);
            let _ = run_status(
                "/system/bin/cmd",
                &["location", "providers", "send-extra-command", "gps", "kernel_inject"],
            );
            println!(
                "[KERNEL-GNSS] Active hardware GNSS coordinates locked to: {}, {} (alt={}m, acc={}m)",
                lat, lon, alt, acc
            );
            0
        }
        "off" | "stop" | "clear" => {
            let _ = fs::remove_file(GPS_CONF_PATH);
            let _ = prop_set("persist.sys.kernel.gps.coords", "");
            println!(
                "[KERNEL-GNSS] Hardware coordinate override disabled (Mock locations remain stealth-masked)."
            );
            0
        }
        _ => {
            let coords = prop_get("persist.sys.kernel.gps.coords");
            let stealth = prop_get("persist.sys.override_mock_location");
            println!("=== TECNO-BG6 Native Kernel GNSS Engine (Pure Rust v8.0) ===");
            println!(
                "Stealth Mock Masking : {}",
                if stealth.is_empty() { "true" } else { &stealth }
            );
            println!(
                "Kernel GNSS Override : {}",
                if coords.is_empty() {
                    "<disabled - using real GPS or stealth mock app>"
                } else {
                    &coords
                }
            );
            0
        }
    }
}
