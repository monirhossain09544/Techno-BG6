use std::ffi::{CStr, CString};
use std::fs::{self, OpenOptions};
use std::io::{Read, Write};
use std::os::unix::fs::PermissionsExt;
use std::path::Path;
use std::process::{Command, Stdio};

unsafe extern "C" {
    fn __system_property_get(name: *const libc::c_char, value: *mut libc::c_char) -> libc::c_int;
    fn __system_property_set(name: *const libc::c_char, value: *const libc::c_char) -> libc::c_int;
}

pub fn now_ms() -> i64 {
    let mut ts = libc::timespec {
        tv_sec: 0,
        tv_nsec: 0,
    };
    unsafe {
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut ts);
    }
    (ts.tv_sec as i64) * 1000 + (ts.tv_nsec as i64) / 1_000_000
}

pub fn write_sysfs(path: &str, val: &str) -> bool {
    if let Ok(mut f) = OpenOptions::new().write(true).open(path) {
        f.write_all(val.as_bytes()).is_ok()
    } else {
        false
    }
}

pub fn write_atomic_file(path: &str, content: &str, mode: u32) -> bool {
    if let Ok(mut f) = OpenOptions::new()
        .create(true)
        .truncate(true)
        .write(true)
        .open(path)
    {
        let ok = f.write_all(content.as_bytes()).is_ok();
        let _ = fs::set_permissions(path, fs::Permissions::from_mode(mode));
        ok
    } else {
        false
    }
}

pub fn read_sysfs_trimmed(path: &str) -> Option<String> {
    let mut f = OpenOptions::new().read(true).open(path).ok()?;
    let mut buf = [0u8; 512];
    let n = f.read(&mut buf).ok()?;
    if n == 0 {
        return None;
    }
    Some(String::from_utf8_lossy(&buf[..n]).trim().to_string())
}

pub fn read_sysfs_i64(path: &str) -> Option<i64> {
    read_sysfs_trimmed(path)?.parse::<i64>().ok()
}

pub fn prop_get(name: &str) -> String {
    let Ok(cname) = CString::new(name) else {
        return String::new();
    };
    let mut buf = [0 as libc::c_char; 96];
    let len = unsafe { __system_property_get(cname.as_ptr(), buf.as_mut_ptr()) };
    if len <= 0 {
        return String::new();
    }
    unsafe { CStr::from_ptr(buf.as_ptr()) }
        .to_string_lossy()
        .into_owned()
}

pub fn prop_set(name: &str, val: &str) -> bool {
    let (Ok(cname), Ok(cval)) = (CString::new(name), CString::new(val)) else {
        return false;
    };
    let rc = unsafe { __system_property_set(cname.as_ptr(), cval.as_ptr()) };
    if rc == 0 {
        true
    } else {
        run_status("/system/bin/setprop", &[name, val])
    }
}

pub fn resetprop_phh(name: &str, val: &str) {
    if Path::new("/system/bin/resetprop_phh").exists() {
        let _ = run_status("/system/bin/resetprop_phh", &[name, val]);
    } else {
        let _ = prop_set(name, val);
    }
}

pub fn run_status(bin: &str, args: &[&str]) -> bool {
    Command::new(bin)
        .args(args)
        .stdin(Stdio::null())
        .stdout(Stdio::null())
        .stderr(Stdio::null())
        .status()
        .map(|s| s.success())
        .unwrap_or(false)
}

pub fn run_stdout(bin: &str, args: &[&str]) -> String {
    Command::new(bin)
        .args(args)
        .stdin(Stdio::null())
        .stderr(Stdio::null())
        .output()
        .ok()
        .map(|o| String::from_utf8_lossy(&o.stdout).into_owned())
        .unwrap_or_default()
}

pub fn umount_all_detach(target: &str) {
    if let Ok(ctarget) = CString::new(target) {
        loop {
            let rc = unsafe { libc::umount2(ctarget.as_ptr(), libc::MNT_DETACH) };
            if rc != 0 {
                break;
            }
        }
    }
}

pub fn mount_bind(src: &str, dst: &str) -> bool {
    let (Ok(csrc), Ok(cdst)) = (CString::new(src), CString::new(dst)) else {
        return false;
    };
    let rc = unsafe {
        libc::mount(
            csrc.as_ptr(),
            cdst.as_ptr(),
            std::ptr::null(),
            libc::MS_BIND,
            std::ptr::null(),
        )
    };
    rc == 0
}

pub fn chmod_path(path: &str, mode: u32) {
    let _ = fs::set_permissions(path, fs::Permissions::from_mode(mode));
}
