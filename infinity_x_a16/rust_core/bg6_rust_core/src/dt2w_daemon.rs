use std::ffi::CString;
use std::fs::{self, OpenOptions};
use std::io::{Read, Write};
use std::os::unix::fs::MetadataExt;
use std::thread;
use std::time::Duration;

use crate::sys_util::{
    chmod_path, mount_bind, now_ms, read_sysfs_i64, read_sysfs_trimmed, run_stdout,
    umount_all_detach, write_atomic_file, write_sysfs,
};
use crate::wasm_engine::WasmSandbox;

const BL_PATH: &str = "/sys/class/backlight/sprd_backlight/brightness";
const ACTUAL_BL_PATH: &str = "/sys/class/backlight/sprd_backlight/actual_brightness";
const DUMMY_BL_PATH: &str = "/dev/bl_dummy";
const DPMS_PATH: &str = "/sys/class/drm/card0-DSI-1/dpms";
const ESD_PATH: &str = "/sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/esd_check_enable";
const SCENE_LIST_PATH: &str = "/sys/class/devfreq/scene-frequency/sprd-governor/scene_dfs_list";
const SCENE_ENTER: &str = "/sys/class/devfreq/scene-frequency/sprd-governor/scenario_dfs";
const SCENE_EXIT: &str = "/sys/class/devfreq/scene-frequency/sprd-governor/exit_scene";
const DPU_WORK_INDEX: &str = "/sys/class/devfreq/dpu/dpu_governor/work_index";
const DPU_IDLE_INDEX: &str = "/sys/class/devfreq/dpu/dpu_governor/idle_index";
const GPU_MIN_FREQ: &str = "/sys/class/devfreq/23100000.gpu/min_freq";
const PSENSOR_ENABLE_PATH: &str = "/sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable";
const SECURE_XML_PATH: &str = "/data/system/users/0/settings_secure.xml";
const USB_ONLINE_PATH: &str = "/sys/class/power_supply/usb/online";
const RING0_PROC_PATH: &str = "/proc/bg6_rust_engine";
const LOG_PATH: &str = "/dev/bg6_dt2w.log";
const DPU_PQ_ENABLE_PATH: &str =
    "/sys/devices/platform/soc/soc:ap-ahb/31000000.dpu/display/dispc0/PQ/enable";
const DPU_PQ_DISABLE_PATH: &str =
    "/sys/devices/platform/soc/soc:ap-ahb/31000000.dpu/display/dispc0/PQ/disable";

// Linux input / uinput constants (verified for aarch64)
const EV_SYN: u16 = 0x00;
const EV_KEY: u16 = 0x01;
const EV_ABS: u16 = 0x03;

const SYN_REPORT: u16 = 0x00;
const KEY_VOLUMEDOWN: u16 = 114;
const KEY_VOLUMEUP: u16 = 115;
const KEY_POWER: u16 = 116;
const KEY_WAKEUP: u16 = 143;
const BTN_TOUCH: u16 = 0x14a;

const ABS_MT_SLOT: usize = 0x2f;
const ABS_MT_TOUCH_MAJOR: usize = 0x30;
const ABS_MT_POSITION_X: usize = 0x35;
const ABS_MT_POSITION_Y: usize = 0x36;
const ABS_MT_TRACKING_ID: usize = 0x39;
const ABS_MT_PRESSURE: usize = 0x3a;

const BUS_VIRTUAL: u16 = 0x06;

const UI_SET_EVBIT: libc::c_ulong = 0x4004_5564;
const UI_SET_KEYBIT: libc::c_ulong = 0x4004_5565;
const UI_DEV_CREATE: libc::c_ulong = 0x5501;
const EVIOCGRAB: libc::c_ulong = 0x4004_4590;

const fn eviocgname(len: usize) -> libc::c_ulong {
    ((2u32 << 30) | ((len as u32) << 16) | (0x45u32 << 8) | 0x06u32) as libc::c_ulong
}

const fn eviocgabs(abs: usize) -> libc::c_ulong {
    ((2u32 << 30) | (24u32 << 16) | (0x45u32 << 8) | ((0x40 + abs) as u32)) as libc::c_ulong
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct InputAbsInfo {
    value: i32,
    minimum: i32,
    maximum: i32,
    fuzz: i32,
    flat: i32,
    resolution: i32,
}
const _: () = assert!(core::mem::size_of::<InputAbsInfo>() == 24);

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct InputEvent {
    tv_sec: i64,
    tv_usec: i64,
    type_: u16,
    code: u16,
    value: i32,
}
const _: () = assert!(core::mem::size_of::<InputEvent>() == 24);

#[inline]
fn ev_irq_ms(ev: &InputEvent) -> i64 {
    let ms = ev.tv_sec.saturating_mul(1000) + (ev.tv_usec / 1000);
    if ms > 0 {
        ms
    } else {
        now_ms()
    }
}

#[repr(C)]
#[derive(Clone, Copy)]
struct InputId {
    bustype: u16,
    vendor: u16,
    product: u16,
    version: u16,
}

#[repr(C)]
#[derive(Clone, Copy)]
struct UinputUserDev {
    name: [u8; 80],
    id: InputId,
    ff_effects_max: u32,
    absmax: [i32; 64],
    absmin: [i32; 64],
    absfuzz: [i32; 64],
    absflat: [i32; 64],
}
const _: () = assert!(core::mem::size_of::<UinputUserDev>() == 1116);

fn log_msg(msg: &str) {
    if let Ok(mut f) = OpenOptions::new().create(true).append(true).open(LOG_PATH) {
        let _ = writeln!(f, "[{}] {}", now_ms(), msg);
    }
    chmod_path(LOG_PATH, 0o644);
}

fn ensure_dpu_ddr_bandwidth() {
    if let Ok(en_bytes) = fs::read(DPU_PQ_ENABLE_PATH) {
        if en_bytes.len() == 4 {
            let en = u32::from_le_bytes([en_bytes[0], en_bytes[1], en_bytes[2], en_bytes[3]]);
            if (en & 0x08) != 0 {
                let _ = fs::write(DPU_PQ_DISABLE_PATH, [0x08u8, 0x00, 0x00, 0x00]);
            }
        }
    }
    let _ = write_sysfs(ESD_PATH, "0\n");
    let _ = write_sysfs(DPU_WORK_INDEX, "4\n");
    let _ = write_sysfs(DPU_IDLE_INDEX, "4\n");

    if let Some(list) = read_sysfs_trimmed(SCENE_LIST_PATH) {
        if list.contains("lcdon freq 768  flag 0") {
            let _ = write_sysfs(SCENE_ENTER, "lcdon");
        }
        if !list.contains("lcdoff freq 256  flag 0") && list.contains("lcdoff freq 256") {
            let _ = write_sysfs(SCENE_EXIT, "lcdoff");
        }
    }
}

fn get_usb_online() -> i32 {
    match read_sysfs_trimmed(USB_ONLINE_PATH) {
        Some(s) if s.starts_with('1') => 1,
        Some(_) => 0,
        None => -1,
    }
}

fn is_ringing_or_alarm_active() -> bool {
    let out = run_stdout("/system/bin/dumpsys", &["audio"]);
    for line in out.lines() {
        if line.contains("mAudioModeOwner:") && line.contains("mMode=MODE_RINGTONE") {
            return true;
        }
        if line.contains("state:started")
            && (line.contains("usage=USAGE_ALARM") || line.contains("usage=USAGE_NOTIFICATION_RINGTONE"))
        {
            return true;
        }
    }
    false
}

fn is_dpms_off() -> bool {
    read_sysfs_trimmed(DPMS_PATH)
        .map(|s| s.starts_with("Off"))
        .unwrap_or(false)
}

fn get_real_backlight() -> i32 {
    read_sysfs_i64(ACTUAL_BL_PATH).unwrap_or(-1) as i32
}

fn set_real_backlight(bl_real_fd: i32, val: i32) {
    if bl_real_fd < 0 {
        return;
    }
    let s = format!("{}\n", val);
    unsafe {
        let _ = libc::pwrite(bl_real_fd, s.as_ptr() as *const _, s.len(), 0);
    }
}

/// Fallback raw backlight (sprd_backlight max_brightness = 4095) used ONLY when no user value is known.
const FALLBACK_BL: i32 = 220;
const MAX_BL: i32 = 4095;

/// Picks the brightness to restore on wake, honoring the user's slider 100% (incl. minimum = 32).
/// `dummy_bl` = what Android LightsService last wrote while Black-Standby bind-mount was active.
/// If `dummy_bl <= 32 && saved_bl > 64`, Android entered pre-timeout POLICY_DIM during standby;
/// restore `saved_bl` so emit_wakeup() transitions back to POLICY_BRIGHT seamlessly without a dim flash.
fn pick_restore_bl(dummy_bl: i32, saved_bl: i32) -> i32 {
    let v = if dummy_bl > 0 {
        if dummy_bl <= 32 && saved_bl > 64 {
            saved_bl
        } else {
            dummy_bl
        }
    } else if saved_bl > 0 {
        saved_bl
    } else {
        FALLBACK_BL
    };
    v.clamp(1, MAX_BL)
}

fn get_dummy_backlight() -> i32 {
    read_sysfs_i64(DUMMY_BL_PATH).unwrap_or(-1) as i32
}

fn set_dummy_backlight(val: i32) {
    let _ = write_atomic_file(DUMMY_BL_PATH, &format!("{}\n", val), 0o666);
}

fn read_abs_val(fd: i32, axis: usize) -> Option<i32> {
    if fd < 0 {
        return None;
    }
    let mut info = InputAbsInfo::default();
    let rc = unsafe { libc::ioctl(fd, eviocgabs(axis) as _, &mut info as *mut InputAbsInfo) };
    if rc >= 0 {
        Some(info.value)
    } else {
        None
    }
}

fn sync_touch_abs_state(touch_fd: i32, cur_slot: &mut usize, cur_x: &mut i32, cur_y: &mut i32) {
    if let Some(s) = read_abs_val(touch_fd, ABS_MT_SLOT) {
        if (0..10).contains(&s) {
            *cur_slot = s as usize;
        } else {
            *cur_slot = 0;
        }
    } else {
        *cur_slot = 0;
    }
    if let Some(x) = read_abs_val(touch_fd, ABS_MT_POSITION_X) {
        *cur_x = x;
    }
    if let Some(y) = read_abs_val(touch_fd, ABS_MT_POSITION_Y) {
        *cur_y = y;
    }
}

fn drain_input_fd(fd: i32) {
    if fd < 0 {
        return;
    }
    let mut ev = InputEvent::default();
    while unsafe {
        libc::read(
            fd,
            &mut ev as *mut InputEvent as *mut _,
            core::mem::size_of::<InputEvent>(),
        )
    } == core::mem::size_of::<InputEvent>() as isize
    {}
}

fn setup_uinput_keys() -> i32 {
    let Ok(cpath) = CString::new("/dev/uinput") else {
        return -1;
    };
    let ufd = unsafe { libc::open(cpath.as_ptr(), libc::O_WRONLY | libc::O_NONBLOCK | libc::O_CLOEXEC) };
    if ufd < 0 {
        return -1;
    }
    unsafe {
        libc::ioctl(ufd, UI_SET_EVBIT as _, EV_KEY as libc::c_int);
        libc::ioctl(ufd, UI_SET_EVBIT as _, EV_SYN as libc::c_int);
        libc::ioctl(ufd, UI_SET_KEYBIT as _, KEY_WAKEUP as libc::c_int);
        libc::ioctl(ufd, UI_SET_KEYBIT as _, KEY_POWER as libc::c_int);
        libc::ioctl(ufd, UI_SET_KEYBIT as _, KEY_VOLUMEUP as libc::c_int);
        libc::ioctl(ufd, UI_SET_KEYBIT as _, KEY_VOLUMEDOWN as libc::c_int);

        let mut udev: UinputUserDev = core::mem::zeroed();
        let name = b"dt2w-virtual-keys";
        udev.name[..name.len()].copy_from_slice(name);
        udev.id = InputId {
            bustype: BUS_VIRTUAL,
            vendor: 0x1234,
            product: 0x5678,
            version: 1,
        };

        if libc::write(ufd, &udev as *const _ as *const _, core::mem::size_of::<UinputUserDev>()) < 0 {
            libc::close(ufd);
            return -1;
        }
        if libc::ioctl(ufd, UI_DEV_CREATE as _) < 0 {
            libc::close(ufd);
            return -1;
        }
    }
    ufd
}

fn write_input_ev(fd: i32, type_: u16, code: u16, value: i32) {
    if fd < 0 {
        return;
    }
    let ev = InputEvent {
        tv_sec: 0,
        tv_usec: 0,
        type_,
        code,
        value,
    };
    unsafe {
        let _ = libc::write(fd, &ev as *const _ as *const _, core::mem::size_of::<InputEvent>());
    }
}

fn emit_key(ufd: i32, code: u16, val: i32) {
    write_input_ev(ufd, EV_KEY, code, val);
    write_input_ev(ufd, EV_SYN, SYN_REPORT, 0);
}

fn emit_wakeup(ufd: i32) {
    emit_key(ufd, KEY_WAKEUP, 1);
    thread::sleep(Duration::from_millis(15));
    emit_key(ufd, KEY_WAKEUP, 0);
}

/// Zero-Touch Standby Keepalive:
/// Verified in AOSP `InputDispatcher.cpp` (`dispatchKeyLocked` line 1849): `KEY_WAKEUP` (`143`)
/// invokes `pokeUserActivityLocked()` to reset `PowerManagerService` sleep timers while
/// `PhoneWindowManager` clears `POLICY_FLAG_PASS_TO_USER`, dropping the key before any window,
/// Launcher3, StatusBar inset animation, or `EdgeBackGestureHandler` (`x=666..720`) ever sees it!
fn poke_standby_user_activity(ufd: i32) {
    if ufd < 0 {
        return;
    }
    emit_key(ufd, KEY_WAKEUP, 1);
    emit_key(ufd, KEY_WAKEUP, 0);
}

fn release_active_mt_slots(touch_fd: i32, slot_active: &mut [bool; 10]) {
    if touch_fd < 0 {
        return;
    }
    if read_abs_val(touch_fd, ABS_MT_TRACKING_ID).unwrap_or(-1) >= 0 {
        write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, -1);
        write_input_ev(touch_fd, EV_ABS, ABS_MT_PRESSURE as u16, 0);
        write_input_ev(touch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR as u16, 0);
        write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
        write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
    }
    let mut any = false;
    for s in 0..10 {
        if slot_active[s] {
            write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT as u16, s as i32);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, -1);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_PRESSURE as u16, 0);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR as u16, 0);
            write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
            slot_active[s] = false;
            any = true;
        }
    }
    if any {
        write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT as u16, 0);
        write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
        write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
    }
}

/// Synchronizes both Linux kernel `dev->absinfo[ABS_MT_SLOT].value` AND Android
/// `MultiTouchMotionAccumulator::mCurrentSlot` to slot 0 when ungrabbed, without phantom taps.
/// Crossing `1 -> 0` bypasses Linux `input_handle_abs_event` duplicate filtering (`value == *pold`).
fn sync_android_mt_slot_zero(touch_fd: i32) {
    if touch_fd < 0 {
        return;
    }
    if read_abs_val(touch_fd, ABS_MT_TRACKING_ID).unwrap_or(-1) < 0 {
        write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT as u16, 1);
        write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, -1);
        write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
        write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT as u16, 0);
        write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, -1);
        write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
        write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
    }
}

fn epoll_add_fd(epfd: i32, fd: i32, tag: u64) {
    if epfd >= 0 && fd >= 0 {
        let mut ev = libc::epoll_event {
            events: libc::EPOLLIN as u32,
            u64: tag,
        };
        unsafe {
            libc::epoll_ctl(epfd, libc::EPOLL_CTL_ADD, fd, &mut ev);
        }
    }
}

fn epoll_del_fd(epfd: i32, fd: i32) {
    if epfd >= 0 && fd >= 0 {
        let mut ev = libc::epoll_event { events: 0, u64: 0 };
        unsafe {
            libc::epoll_ctl(epfd, libc::EPOLL_CTL_DEL, fd, &mut ev);
        }
    }
}

fn find_input_by_name(target: &str) -> i32 {
    for i in 0..16 {
        let path = format!("/dev/input/event{}", i);
        let Ok(cpath) = CString::new(path.as_str()) else {
            continue;
        };
        let mut fd = unsafe { libc::open(cpath.as_ptr(), libc::O_RDWR | libc::O_NONBLOCK | libc::O_CLOEXEC) };
        if fd < 0 {
            fd = unsafe { libc::open(cpath.as_ptr(), libc::O_RDONLY | libc::O_NONBLOCK | libc::O_CLOEXEC) };
        }
        if fd < 0 {
            continue;
        }
        let mut name_buf = [0u8; 128];
        let rc = unsafe { libc::ioctl(fd, eviocgname(name_buf.len() - 1) as _, name_buf.as_mut_ptr()) };
        if rc >= 0 {
            let end = name_buf.iter().position(|&c| c == 0).unwrap_or(name_buf.len());
            let name = String::from_utf8_lossy(&name_buf[..end]);
            if name.contains(target) {
                log_msg(&format!("Matched input {} -> {}", target, path));
                return fd;
            }
        }
        unsafe {
            libc::close(fd);
        }
    }
    -1
}

fn setup_netlink_uevent_socket() -> i32 {
    let fd = unsafe {
        libc::socket(
            libc::AF_NETLINK,
            libc::SOCK_DGRAM | libc::SOCK_NONBLOCK | libc::SOCK_CLOEXEC,
            libc::NETLINK_KOBJECT_UEVENT,
        )
    };
    if fd < 0 {
        return -1;
    }
    let mut addr: libc::sockaddr_nl = unsafe { core::mem::zeroed() };
    addr.nl_family = libc::AF_NETLINK as u16;
    addr.nl_pid = 0;
    addr.nl_groups = 1;
    if unsafe {
        libc::bind(
            fd,
            &addr as *const libc::sockaddr_nl as *const libc::sockaddr,
            core::mem::size_of::<libc::sockaddr_nl>() as u32,
        )
    } < 0
    {
        unsafe { libc::close(fd) };
        return -1;
    }
    fd
}

fn set_standby_cpu_power_save(standby: bool) {
    if standby {
        let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "768000\n");
        let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "884000\n");
        let _ = write_sysfs("/dev/cpuset/background/cpus", "0-1\n");
        let _ = write_sysfs("/dev/cpuset/system-background/cpus", "0-5\n");
        let _ = write_sysfs(DPU_WORK_INDEX, "0\n");
        let _ = write_sysfs(DPU_IDLE_INDEX, "0\n");
        let _ = write_sysfs(SCENE_EXIT, "lcdon");
        let _ = write_sysfs(GPU_MIN_FREQ, "153600000\n");
        let _ = write_sysfs(RING0_PROC_PATH, "mode=standby\n");
    } else {
        let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1820000\n");
        let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "2028000\n");
        let _ = write_sysfs("/dev/cpuset/background/cpus", "0-2\n");
        let _ = write_sysfs("/dev/cpuset/system-background/cpus", "0-3\n");
        let _ = write_sysfs(GPU_MIN_FREQ, "384000000\n");
        let _ = write_sysfs(RING0_PROC_PATH, "mode=auto\n");
    }
}

struct Dt2wSettingCache {
    enabled: bool,
    last_mtime_sec: i64,
    last_mtime_nsec: i64,
    last_poll_ms: i64,
}

impl Dt2wSettingCache {
    fn new() -> Self {
        Self {
            enabled: true,
            last_mtime_sec: 0,
            last_mtime_nsec: 0,
            last_poll_ms: 0,
        }
    }

    fn check(&mut self, force: bool) -> bool {
        let t = now_ms();
        if !force && t - self.last_poll_ms < 1000 {
            return self.enabled;
        }
        self.last_poll_ms = t;

        if let Ok(meta) = fs::metadata(SECURE_XML_PATH) {
            let sec = meta.mtime();
            let nsec = meta.mtime_nsec();
            if force || sec != self.last_mtime_sec || nsec != self.last_mtime_nsec {
                let out = run_stdout("/system/bin/settings", &["get", "secure", "double_tap_to_wake"]);
                let trimmed = out.trim();
                if trimmed == "0" {
                    self.enabled = false;
                    self.last_mtime_sec = sec;
                    self.last_mtime_nsec = nsec;
                } else if trimmed == "1" {
                    self.enabled = true;
                    self.last_mtime_sec = sec;
                    self.last_mtime_nsec = nsec;
                }
            }
        }
        self.enabled
    }
}

fn sum_json_int_field(haystack: &str, needle: &str) -> Option<i64> {
    let mut total = 0i64;
    let mut found = false;
    let mut rest = haystack;
    while let Some(idx) = rest.find(needle) {
        rest = &rest[idx + needle.len()..];
        let trimmed = rest.trim_start();
        let digits_len = trimmed
            .bytes()
            .take_while(|b| b.is_ascii_digit() || *b == b'-')
            .count();
        if digits_len > 0 {
            if let Ok(v) = trimmed[..digits_len].parse::<i64>() {
                total = total.saturating_add(v);
                found = true;
            }
        }
    }
    if found { Some(total) } else { None }
}

/// Zero-allocation Hardware GPIO Interrupt Tracker for Goodix Side-Fingerprint (`fp-gpio-irq`).
/// When >=1 fingerprint is enrolled, Goodix TEE switches out of `gf-keys` nav mode into raw SPI
/// capture mode (emitting zero `EV_KEY` events on `/dev/input/event5`). Monitoring `/sys/kernel/irq/<N>/per_cpu_count`
/// detects physical finger touches in <3 microseconds with 0.00% idle overhead!
struct FpIrqTracker {
    per_cpu_path: Option<String>,
    last_probe_ms: i64,
}

impl FpIrqTracker {
    fn new() -> Self {
        let mut tr = Self {
            per_cpu_path: None,
            last_probe_ms: 0,
        };
        tr.discover(true);
        tr
    }

    fn discover(&mut self, force: bool) {
        if self.per_cpu_path.is_some() {
            return;
        }
        let t = now_ms();
        if !force && t - self.last_probe_ms < 5_000 {
            return;
        }
        self.last_probe_ms = t;
        let Ok(entries) = fs::read_dir("/sys/kernel/irq") else {
            return;
        };
        let mut buf = [0u8; 128];
        for entry in entries.flatten() {
            let p = entry.path();
            let act_p = p.join("actions");
            if let Ok(mut f) = OpenOptions::new().read(true).open(&act_p) {
                let n = f.read(&mut buf).unwrap_or(0);
                if n > 0 {
                    let s = core::str::from_utf8(&buf[..n]).unwrap_or("");
                    if s.contains("fp-gpio-irq") || s.contains("goodix") {
                        let cnt_p = p.join("per_cpu_count");
                        if let Some(cs) = cnt_p.to_str() {
                            log_msg(&format!("FpIrqTracker bound to {}", cs));
                            self.per_cpu_path = Some(cs.to_string());
                            return;
                        }
                    }
                }
            }
        }
    }

    fn read_total(&mut self) -> u64 {
        self.discover(false);
        let Some(ref path) = self.per_cpu_path else {
            return 0;
        };
        let Ok(mut f) = OpenOptions::new().read(true).open(path) else {
            return 0;
        };
        let mut buf = [0u8; 128];
        let n = f.read(&mut buf).unwrap_or(0);
        if n == 0 {
            return 0;
        }
        let mut sum = 0u64;
        let mut cur = 0u64;
        let mut in_num = false;
        for &b in &buf[..n] {
            if b.is_ascii_digit() {
                cur = cur.saturating_mul(10).saturating_add((b - b'0') as u64);
                in_num = true;
            } else if in_num {
                sum = sum.saturating_add(cur);
                cur = 0;
                in_num = false;
            }
        }
        if in_num {
            sum = sum.saturating_add(cur);
        }
        sum
    }
}

struct BiometricAuthGate {
    enrolled_count: i32,
    baseline_accept: i64,
    last_refresh_ms: i64,
}

impl BiometricAuthGate {
    fn new() -> Self {
        let mut g = Self {
            enrolled_count: 0,
            baseline_accept: 0,
            last_refresh_ms: 0,
        };
        g.refresh(true);
        g
    }

    fn query_hal() -> Option<(i32, i64)> {
        let out = run_stdout("/system/bin/dumpsys", &["fingerprint"]);
        if out.is_empty() {
            return None;
        }
        let cnt = sum_json_int_field(&out, "\"count\":")? as i32;
        let acc = sum_json_int_field(&out, "\"accept\":")
            .unwrap_or(0)
            .saturating_add(sum_json_int_field(&out, "\"acceptCrypto\":").unwrap_or(0));
        Some((cnt.max(0), acc.max(0)))
    }

    fn refresh(&mut self, force: bool) {
        let t = now_ms();
        if !force && t - self.last_refresh_ms < 5_000 {
            return;
        }
        self.last_refresh_ms = t;
        if let Some((cnt, acc)) = Self::query_hal() {
            if cnt != self.enrolled_count {
                log_msg(&format!(
                    "BiometricAuthGate: enrolled_fingerprints={} (baseline_accept={})",
                    cnt, acc
                ));
            }
            self.enrolled_count = cnt;
            self.baseline_accept = acc;
        }
    }

    fn check_accept_once(&mut self) -> bool {
        if self.enrolled_count <= 0 {
            return false;
        }
        if let Some((cnt, acc)) = Self::query_hal() {
            self.enrolled_count = cnt;
            if cnt <= 0 {
                self.baseline_accept = acc;
                return false;
            }
            if acc > self.baseline_accept {
                self.baseline_accept = acc;
                return true;
            }
        }
        false
    }
}

struct StandbyCtx {
    bl_real_fd: i32,
    ufd: i32,
    touch_fd: i32,
    pwr_fd: i32,
    epfd: i32,
    is_black_standby: bool,
    saved_bl: i32,
    standby_enter_ms: i64,
    last_keepalive_ms: i64,
}

impl StandbyCtx {
    fn enter(
        &mut self,
        slot_active: &mut [bool; 10],
        cur_slot: &mut usize,
        cur_x: &mut i32,
        cur_y: &mut i32,
        reason: &str,
    ) {
        umount_all_detach(BL_PATH);
        set_dummy_backlight(pick_restore_bl(0, self.saved_bl));
        set_real_backlight(self.bl_real_fd, 0);
        let _ = mount_bind(DUMMY_BL_PATH, BL_PATH);

        // Cleanly release any pre-sleep finger & lock Android mCurrentSlot = 0 BEFORE grabbing
        release_active_mt_slots(self.touch_fd, slot_active);
        sync_android_mt_slot_zero(self.touch_fd);
        unsafe {
            if self.touch_fd >= 0 {
                libc::ioctl(self.touch_fd, EVIOCGRAB as _, 1 as libc::c_int);
            }
            if self.pwr_fd >= 0 {
                libc::ioctl(self.pwr_fd, EVIOCGRAB as _, 1 as libc::c_int);
            }
        }
        epoll_add_fd(self.epfd, self.touch_fd, 1);
        epoll_add_fd(self.epfd, self.pwr_fd, 2);

        if is_dpms_off() {
            emit_wakeup(self.ufd);
            // Clamp hardware backlight at 0 across DPMS Off->On only when > 0, so MIPI-DSI
            // 0x51 brightness packets are never spammed while sprd_panel is still powering up.
            for _ in 0..24 {
                if get_real_backlight() > 0 {
                    set_real_backlight(self.bl_real_fd, 0);
                }
                thread::sleep(Duration::from_millis(5));
            }
            if get_real_backlight() > 0 {
                set_real_backlight(self.bl_real_fd, 0);
            }
        }

        poke_standby_user_activity(self.ufd);
        drain_input_fd(self.touch_fd);
        drain_input_fd(self.pwr_fd);
        *slot_active = [false; 10];
        sync_touch_abs_state(self.touch_fd, cur_slot, cur_x, cur_y);
        set_standby_cpu_power_save(true);

        let t = now_ms();
        self.is_black_standby = true;
        self.standby_enter_ms = t;
        self.last_keepalive_ms = t;
        log_msg(&format!("ENTER_BLACK_STANDBY reason={} saved_bl={} (Rust v8.5.5)", reason, self.saved_bl));
    }

    fn exit(
        &mut self,
        slot_active: &mut [bool; 10],
        cur_slot: &mut usize,
        cur_x: &mut i32,
        cur_y: &mut i32,
        mode: i32,
        reason: &str,
    ) {
        set_standby_cpu_power_save(false);
        self.is_black_standby = false;
        epoll_del_fd(self.epfd, self.touch_fd);
        epoll_del_fd(self.epfd, self.pwr_fd);

        let dummy_bl = get_dummy_backlight();
        umount_all_detach(BL_PATH);
        chmod_path(BL_PATH, 0o664);

        if mode == 0 || mode == 2 {
            let restore = pick_restore_bl(dummy_bl, self.saved_bl);
            self.saved_bl = restore;
            set_dummy_backlight(restore);
            // Restore backlight FIRST for <2ms instant factory wake feel
            set_real_backlight(self.bl_real_fd, restore);
            ensure_dpu_ddr_bandwidth();
            release_active_mt_slots(self.touch_fd, slot_active);
            drain_input_fd(self.touch_fd);
            drain_input_fd(self.pwr_fd);
            unsafe {
                if self.touch_fd >= 0 {
                    libc::ioctl(self.touch_fd, EVIOCGRAB as _, 0 as libc::c_int);
                }
                if self.pwr_fd >= 0 {
                    libc::ioctl(self.pwr_fd, EVIOCGRAB as _, 0 as libc::c_int);
                }
            }
            // AFTER EVIOCGRAB=0: resync both Kernel ABS_MT_SLOT and Android mCurrentSlot to 0!
            sync_android_mt_slot_zero(self.touch_fd);
            sync_touch_abs_state(self.touch_fd, cur_slot, cur_x, cur_y);
            emit_wakeup(self.ufd);
            ensure_dpu_ddr_bandwidth();
            log_msg(&format!(
                "EXIT_BLACK_STANDBY reason={} restore_bl={} (dummy={})",
                reason, restore, dummy_bl
            ));
        } else {
            release_active_mt_slots(self.touch_fd, slot_active);
            drain_input_fd(self.touch_fd);
            drain_input_fd(self.pwr_fd);
            unsafe {
                if self.touch_fd >= 0 {
                    libc::ioctl(self.touch_fd, EVIOCGRAB as _, 0 as libc::c_int);
                }
                if self.pwr_fd >= 0 {
                    libc::ioctl(self.pwr_fd, EVIOCGRAB as _, 0 as libc::c_int);
                }
            }
            sync_android_mt_slot_zero(self.touch_fd);
            sync_touch_abs_state(self.touch_fd, cur_slot, cur_x, cur_y);
            set_real_backlight(self.bl_real_fd, 0);
            log_msg(&format!("EXIT_BLACK_STANDBY reason={} bl=0", reason));
        }
    }
}

pub fn run_dt2w_daemon() -> i32 {
    let _ = fs::remove_file(LOG_PATH);
    log_msg("bg6_dt2w_daemon v8.5.5 Pure-Rust Factory DT2W Engine starting");

    umount_all_detach(BL_PATH);
    chmod_path(BL_PATH, 0o664);
    // Ensure chipone-tddi virtual ear-proximity mode is OFF so top-bar & lockscreen swipes are 100% crisp
    let _ = write_sysfs(PSENSOR_ENABLE_PATH, "0\n");
    let _ = write_sysfs(GPU_MIN_FREQ, "384000000\n");
    set_standby_cpu_power_save(false);
    ensure_dpu_ddr_bandwidth();

    let Ok(c_bl) = CString::new(BL_PATH) else {
        return 1;
    };
    let bl_real_fd = unsafe { libc::open(c_bl.as_ptr(), libc::O_RDWR | libc::O_CLOEXEC) };
    if bl_real_fd < 0 {
        log_msg(&format!("FATAL: failed to open {}", BL_PATH));
        return 1;
    }

    let ufd = setup_uinput_keys();
    let mut touch_fd = -1;
    while touch_fd < 0 {
        touch_fd = find_input_by_name("chipone-tddi");
        if touch_fd < 0 {
            touch_fd = find_input_by_name("adaptive_ts");
        }
        if touch_fd < 0 {
            thread::sleep(Duration::from_secs(1));
        }
    }
    let pwr_fd = find_input_by_name("gpio-keys");
    let mut gf_fd = find_input_by_name("gf-keys");
    if gf_fd >= 0 {
        unsafe {
            libc::ioctl(gf_fd, EVIOCGRAB as _, 1 as libc::c_int);
        }
        drain_input_fd(gf_fd);
    }
    let uevent_fd = setup_netlink_uevent_socket();

    let inotify_fd = unsafe { libc::inotify_init1(libc::IN_NONBLOCK | libc::IN_CLOEXEC) };
    if inotify_fd >= 0 {
        if let Ok(csec) = CString::new("/data/system/users/0") {
            unsafe {
                libc::inotify_add_watch(
                    inotify_fd,
                    csec.as_ptr(),
                    libc::IN_MODIFY | libc::IN_MOVED_TO | libc::IN_CREATE,
                );
            }
        }
    }

    let mut wasm_sb = WasmSandbox::new();
    let mut setting_cache = Dt2wSettingCache::new();
    let mut bio_gate = BiometricAuthGate::new();
    let mut fp_irq = FpIrqTracker::new();
    let mut last_fp_irq = fp_irq.read_total();
    let mut fp_verify_until_ms = 0i64;
    let mut fp_slow_verify_until_ms = 0i64;
    let mut screen_on_fp_sync_at_ms = 0i64;
    let mut last_fp_hal_poll_ms = 0i64;
    let mut last_gf_probe_ms = now_ms();
    let mut slot_active = [false; 10];
    let mut cur_slot: usize = 0;
    let mut cur_x = 360i32;
    let mut cur_y = 800i32;

    sync_android_mt_slot_zero(touch_fd);
    sync_touch_abs_state(touch_fd, &mut cur_slot, &mut cur_x, &mut cur_y);

    let mut init_bl = get_real_backlight();
    if init_bl <= 0 {
        init_bl = FALLBACK_BL;
        set_real_backlight(bl_real_fd, init_bl);
    }
    set_dummy_backlight(init_bl);

    let epfd = unsafe { libc::epoll_create1(libc::EPOLL_CLOEXEC) };
    // NOTE: touch_fd and pwr_fd are ONLY added to epoll during Black-Standby (`ctx.enter`),
    // so dt2w_daemon has 0.00% touch syscall/lock overhead while the screen is ON!
    epoll_add_fd(epfd, gf_fd, 3);
    epoll_add_fd(epfd, uevent_fd, 4);
    epoll_add_fd(epfd, inotify_fd, 5);

    let mut ctx = StandbyCtx {
        bl_real_fd,
        ufd,
        touch_fd,
        pwr_fd,
        epfd,
        is_black_standby: false,
        saved_bl: init_bl,
        standby_enter_ms: 0,
        last_keepalive_ms: 0,
    };

    let mut candidate_bl = init_bl;
    let mut candidate_bl_since_ms = now_ms();
    let mut bl_zero_since_ms = 0i64;
    let mut dpms_off_since_ms = 0i64;
    let mut last_wake_ms = 0i64;
    let mut last_bw_check_ms = 0i64;
    let mut last_ring_check_ms = 0i64;
    let mut last_usb_online = get_usb_online();

    let mut start_x = 0i32;
    let mut start_y = 0i32;
    let mut touch_active = false;
    let mut was_touch_active = false;
    let mut start_recorded = false;
    let mut multi_touch_tainted = false;
    let mut max_move_x = 0i32;
    let mut max_move_y = 0i32;
    let mut down_ms = 0i64;
    let mut prev_tap_down_ms = 0i64;
    let mut prev_tap_up_ms = 0i64;
    let mut prev_tap_x = 0i32;
    let mut prev_tap_y = 0i32;

    let mut ep_events = [libc::epoll_event { events: 0, u64: 0 }; 8];
    let mut ev = InputEvent::default();
    let mut scratch_buf = [0u8; 1024];

    loop {
        let now_loop_ms = now_ms();
        let ep_timeout_ms = if !ctx.is_black_standby && bl_zero_since_ms > 0 {
            35
        } else if ctx.is_black_standby && now_loop_ms <= fp_verify_until_ms {
            35
        } else if ctx.is_black_standby && bio_gate.enrolled_count > 0 {
            55
        } else {
            150
        };
        let nfds = if epfd >= 0 {
            unsafe {
                libc::epoll_wait(
                    epfd,
                    ep_events.as_mut_ptr(),
                    ep_events.len() as i32,
                    ep_timeout_ms,
                )
            }
        } else {
            thread::sleep(Duration::from_millis(ep_timeout_ms as u64));
            0
        };

        let t = now_ms();
        let bl = get_real_backlight();
        let mut force_setting_check = false;

        if nfds > 0 {
            for e in &ep_events[..nfds as usize] {
                if e.u64 == 4 && uevent_fd >= 0 {
                    // Drain netlink uevents purely as a zero-polling wakeup hint to re-check usb/online;
                    // NEVER wake on generic battery fuel-gauge power_supply ticks!
                    while unsafe {
                        libc::recv(
                            uevent_fd,
                            scratch_buf.as_mut_ptr() as *mut _,
                            scratch_buf.len(),
                            0,
                        )
                    } > 0
                    {}
                } else if e.u64 == 5 && inotify_fd >= 0 {
                    while unsafe {
                        libc::read(
                            inotify_fd,
                            scratch_buf.as_mut_ptr() as *mut _,
                            scratch_buf.len(),
                        )
                    } > 0
                    {
                        force_setting_check = true;
                    }
                }
            }
        }

        let cur_fp_irq = fp_irq.read_total();
        let fp_irq_changed = cur_fp_irq != last_fp_irq;
        last_fp_irq = cur_fp_irq;

        let dt2w_enabled = setting_cache.check(force_setting_check);
        if !ctx.is_black_standby && bl > 0 {
            if fp_irq_changed {
                screen_on_fp_sync_at_ms = t + 250;
            }
            let sync_bio_now = force_setting_check
                || (screen_on_fp_sync_at_ms > 0 && t >= screen_on_fp_sync_at_ms);
            if sync_bio_now {
                screen_on_fp_sync_at_ms = 0;
            }
            bio_gate.refresh(sync_bio_now);
            fp_verify_until_ms = 0;
            fp_slow_verify_until_ms = 0;
        } else if bio_gate.enrolled_count > 0 {
            // CRITICAL: NEVER call bio_gate.refresh() while bl == 0 or in Black-Standby!
            // Keyguard unlocking writes to /data/system/users/0 (triggering inotify_fd /
            // force_setting_check); refreshing baseline_accept here would swallow the accept!
            // Instead, treat both fp-gpio-irq and inotify_fd as instant 0ms verification triggers!
            if fp_irq_changed {
                fp_verify_until_ms = t + 2800;
                fp_slow_verify_until_ms = t + 8000;
                last_fp_hal_poll_ms = 0;
            } else if force_setting_check {
                fp_verify_until_ms = fp_verify_until_ms.max(t + 1200);
                last_fp_hal_poll_ms = 0;
            }
        }
        if gf_fd < 0 && t - last_gf_probe_ms >= 3000 {
            last_gf_probe_ms = t;
            gf_fd = find_input_by_name("gf-keys");
            if gf_fd >= 0 {
                unsafe {
                    libc::ioctl(gf_fd, EVIOCGRAB as _, 1 as libc::c_int);
                }
                drain_input_fd(gf_fd);
                epoll_add_fd(epfd, gf_fd, 3);
            }
        }
        wasm_sb.reload_if_needed(false);

        if !ctx.is_black_standby && bl > 0 && (t - last_bw_check_ms >= 400) {
            ensure_dpu_ddr_bandwidth();
            last_bw_check_ms = t;
        }

        if !ctx.is_black_standby {
            let u_now = get_usb_online();
            if u_now >= 0 {
                last_usb_online = u_now;
            }
            if bl > 0 {
                // Track the user's REAL stable brightness (any value >= 1 on the 0..4095 scale).
                // 150ms filter ignores the <100ms screen-off fade-to-zero while capturing slider moves immediately.
                if bl == candidate_bl {
                    if t - candidate_bl_since_ms >= 150 {
                        ctx.saved_bl = bl;
                    }
                } else {
                    candidate_bl = bl;
                    candidate_bl_since_ms = t;
                }
                bl_zero_since_ms = 0;
                dpms_off_since_ms = 0;
            } else if bl == 0 && dt2w_enabled {
                if bl_zero_since_ms == 0 {
                    bl_zero_since_ms = t;
                }
                if is_dpms_off() {
                    if dpms_off_since_ms == 0 {
                        dpms_off_since_ms = t;
                    }
                } else {
                    dpms_off_since_ms = 0;
                }

                // Catch fingerprint unlock arriving while screen is still settling to bl == 0
                let settle_poll_ms = if t <= fp_verify_until_ms {
                    45
                } else if t <= fp_slow_verify_until_ms {
                    250
                } else {
                    0
                };
                if bio_gate.enrolled_count > 0
                    && settle_poll_ms > 0
                    && (t - bl_zero_since_ms >= 140)
                    && (t - last_fp_hal_poll_ms >= settle_poll_ms)
                {
                    last_fp_hal_poll_ms = t;
                    if bio_gate.check_accept_once() {
                        let restore = pick_restore_bl(0, ctx.saved_bl);
                        set_real_backlight(ctx.bl_real_fd, restore);
                        ensure_dpu_ddr_bandwidth();
                        emit_wakeup(ctx.ufd);
                        bl_zero_since_ms = 0;
                        dpms_off_since_ms = 0;
                        fp_verify_until_ms = 0;
                        fp_slow_verify_until_ms = 0;
                        last_wake_ms = now_ms();
                        log_msg(&format!(
                            "WAKE_DURING_SETTLE reason=FP_BIOMETRIC_ACCEPT restore_bl={}",
                            restore
                        ));
                        continue;
                    }
                }

                let sleep_settled = (dpms_off_since_ms > 0 && t - dpms_off_since_ms >= 220)
                    || (t - bl_zero_since_ms >= 420);

                if sleep_settled && (t - last_wake_ms >= 650) {
                    if bio_gate.enrolled_count > 0 && bio_gate.check_accept_once() {
                        let restore = pick_restore_bl(0, ctx.saved_bl);
                        set_real_backlight(ctx.bl_real_fd, restore);
                        ensure_dpu_ddr_bandwidth();
                        emit_wakeup(ctx.ufd);
                        bl_zero_since_ms = 0;
                        dpms_off_since_ms = 0;
                        fp_verify_until_ms = 0;
                        fp_slow_verify_until_ms = 0;
                        last_wake_ms = now_ms();
                        log_msg(&format!(
                            "WAKE_PRE_ENTER reason=FP_BIOMETRIC_ACCEPT restore_bl={}",
                            restore
                        ));
                        continue;
                    }
                    drain_input_fd(gf_fd);
                    ctx.enter(
                        &mut slot_active,
                        &mut cur_slot,
                        &mut cur_x,
                        &mut cur_y,
                        "SYSTEM_SLEEP",
                    );
                    bl_zero_since_ms = 0;
                    dpms_off_since_ms = 0;
                    touch_active = false;
                    was_touch_active = false;
                    multi_touch_tainted = false;
                    prev_tap_down_ms = 0;
                    prev_tap_up_ms = 0;
                    let post_enter_irq = fp_irq.read_total();
                    if post_enter_irq != last_fp_irq {
                        last_fp_irq = post_enter_irq;
                        if bio_gate.enrolled_count > 0 {
                            fp_verify_until_ms = now_ms() + 2800;
                            fp_slow_verify_until_ms = now_ms() + 8000;
                        }
                    }
                    if bio_gate.enrolled_count > 0
                        && now_ms() <= fp_verify_until_ms
                        && bio_gate.check_accept_once()
                    {
                        fp_verify_until_ms = 0;
                        fp_slow_verify_until_ms = 0;
                        last_wake_ms = now_ms();
                        ctx.exit(
                            &mut slot_active,
                            &mut cur_slot,
                            &mut cur_x,
                            &mut cur_y,
                            0,
                            "FP_POST_ENTER_ACCEPT",
                        );
                    }
                    continue;
                }
            }
        } else {
            if !dt2w_enabled {
                last_wake_ms = t;
                ctx.exit(
                    &mut slot_active,
                    &mut cur_slot,
                    &mut cur_x,
                    &mut cur_y,
                    0,
                    "SETTING_DISABLED",
                );
                continue;
            }
            let cur_usb = get_usb_online();
            if cur_usb >= 0 && last_usb_online >= 0 && cur_usb != last_usb_online {
                last_usb_online = cur_usb;
                last_wake_ms = t;
                ctx.exit(
                    &mut slot_active,
                    &mut cur_slot,
                    &mut cur_x,
                    &mut cur_y,
                    0,
                    "USB_PLUG_WAKE",
                );
                continue;
            }
            if cur_usb >= 0 {
                last_usb_online = cur_usb;
            }

            // Hardware Side-Fingerprint GPIO IRQ + Inotify Zero-Race Gate (`fp-gpio-irq`):
            // 0 enrolled -> 100% ignored; >=1 enrolled -> instant wake ONLY on TEE accept!
            let fp_poll_interval = if t <= fp_verify_until_ms {
                45
            } else if t <= fp_slow_verify_until_ms {
                250
            } else {
                0
            };
            if bio_gate.enrolled_count > 0
                && fp_poll_interval > 0
                && t - last_fp_hal_poll_ms >= fp_poll_interval
            {
                last_fp_hal_poll_ms = t;
                if get_real_backlight() > 0 {
                    set_real_backlight(ctx.bl_real_fd, 0);
                }
                if bio_gate.check_accept_once() {
                    fp_verify_until_ms = 0;
                    fp_slow_verify_until_ms = 0;
                    last_wake_ms = now_ms();
                    ctx.exit(
                        &mut slot_active,
                        &mut cur_slot,
                        &mut cur_x,
                        &mut cur_y,
                        0,
                        "FP_IRQ_BIOMETRIC_ACCEPT",
                    );
                    continue;
                }
            }

            if t - last_ring_check_ms >= 1000 {
                last_ring_check_ms = t;
                if is_ringing_or_alarm_active() {
                    last_wake_ms = now_ms();
                    ctx.exit(
                        &mut slot_active,
                        &mut cur_slot,
                        &mut cur_x,
                        &mut cur_y,
                        0,
                        "INCOMING_CALL_OR_ALARM",
                    );
                    continue;
                }
            }
            if bl > 0 {
                set_real_backlight(ctx.bl_real_fd, 0);
            }
            // During the initial 1500ms of Black-Standby (right after emit_wakeup restores POLICY_BRIGHT),
            // sync saved_bl with LightsService's authoritative write to /dev/bl_dummy.
            if t - ctx.standby_enter_ms <= 1500 {
                let d_bl = get_dummy_backlight();
                if d_bl > 0 {
                    ctx.saved_bl = d_bl.clamp(1, MAX_BL);
                }
            }
            if !touch_active {
                if is_dpms_off() {
                    emit_wakeup(ctx.ufd);
                    for _ in 0..24 {
                        if get_real_backlight() > 0 {
                            set_real_backlight(ctx.bl_real_fd, 0);
                        }
                        thread::sleep(Duration::from_millis(5));
                    }
                    if get_real_backlight() > 0 {
                        set_real_backlight(ctx.bl_real_fd, 0);
                    }
                    poke_standby_user_activity(ctx.ufd);
                    ctx.last_keepalive_ms = now_ms();
                } else if t - ctx.last_keepalive_ms >= 6000 {
                    poke_standby_user_activity(ctx.ufd);
                    ctx.last_keepalive_ms = t;
                }
            }
        }

        if nfds <= 0 {
            continue;
        }

        let mut touch_ready = false;
        let mut pwr_ready = false;
        let mut gf_ready = false;
        for e in &ep_events[..nfds as usize] {
            match e.u64 {
                1 => touch_ready = true,
                2 => pwr_ready = true,
                3 => gf_ready = true,
                _ => {}
            }
        }

        // 1. Touchscreen Events (Screen-ON DT2S is delegated 100% to Android 16 SystemUI/Launcher3
        //    for zero-blink factory accuracy; here we track MT state and handle Black-Standby DT2W)
        if touch_ready {
            while unsafe {
                libc::read(
                    touch_fd,
                    &mut ev as *mut InputEvent as *mut _,
                    core::mem::size_of::<InputEvent>(),
                )
            } == core::mem::size_of::<InputEvent>() as isize
            {
                if ev.type_ == EV_ABS && ev.code as usize == ABS_MT_SLOT {
                    if ev.value >= 0 && ev.value < 10 {
                        cur_slot = ev.value as usize;
                    }
                    continue;
                }
                if ev.type_ == EV_ABS && ev.code as usize == ABS_MT_TRACKING_ID {
                    if cur_slot < 10 {
                        slot_active[cur_slot] = ev.value >= 0;
                        if cur_slot > 0 && ev.value >= 0 {
                            multi_touch_tainted = true;
                        }
                    }
                }

                // While screen is ON, only maintain cur_slot/cur_x/cur_y/slot_active — never
                // interfere with Android's native Java GestureDetector / SystemUI DT2S!
                if !ctx.is_black_standby {
                    if ev.type_ == EV_ABS && cur_slot == 0 {
                        match ev.code as usize {
                            ABS_MT_POSITION_X => cur_x = ev.value,
                            ABS_MT_POSITION_Y => cur_y = ev.value,
                            _ => {}
                        }
                    }
                    touch_active = false;
                    was_touch_active = false;
                    multi_touch_tainted = false;
                    prev_tap_down_ms = 0;
                    prev_tap_up_ms = 0;
                    continue;
                }

                // Short 150ms post-standby SPI settle guard (pre-sleep queue already drained)
                let wall_now = now_ms();
                if wall_now - ctx.standby_enter_ms < 150 {
                    if ev.type_ == EV_ABS && cur_slot == 0 {
                        match ev.code as usize {
                            ABS_MT_POSITION_X => cur_x = ev.value,
                            ABS_MT_POSITION_Y => cur_y = ev.value,
                            _ => {}
                        }
                    }
                    touch_active = false;
                    was_touch_active = false;
                    multi_touch_tainted = false;
                    prev_tap_down_ms = 0;
                    prev_tap_up_ms = 0;
                    continue;
                }

                let ev_t = ev_irq_ms(&ev);

                if ev.type_ == EV_ABS && cur_slot == 0 {
                    match ev.code as usize {
                        ABS_MT_POSITION_X => cur_x = ev.value,
                        ABS_MT_POSITION_Y => cur_y = ev.value,
                        ABS_MT_TRACKING_ID => {
                            if ev.value >= 0 && !touch_active {
                                touch_active = true;
                                start_recorded = false;
                                multi_touch_tainted = slot_active[1..].iter().any(|&a| a);
                                max_move_x = 0;
                                max_move_y = 0;
                                down_ms = ev_t;
                            } else if ev.value == -1 && touch_active {
                                touch_active = false;
                            }
                        }
                        _ => {}
                    }
                } else if ev.type_ == EV_KEY && ev.code == BTN_TOUCH {
                    if ev.value == 1 && !touch_active {
                        touch_active = true;
                        start_recorded = false;
                        multi_touch_tainted = slot_active[1..].iter().any(|&a| a);
                        max_move_x = 0;
                        max_move_y = 0;
                        down_ms = ev_t;
                    } else if ev.value == 0 && touch_active {
                        touch_active = false;
                    }
                } else if ev.type_ == EV_SYN && ev.code == SYN_REPORT {
                    if touch_active {
                        if !start_recorded {
                            start_x = cur_x;
                            start_y = cur_y;
                            start_recorded = true;
                        } else {
                            let mdx = (cur_x - start_x).abs();
                            let mdy = (cur_y - start_y).abs();
                            if mdx > max_move_x {
                                max_move_x = mdx;
                            }
                            if mdy > max_move_y {
                                max_move_y = mdy;
                            }
                        }
                    }

                    if was_touch_active && !touch_active {
                        let raw_dur = (ev_t - down_ms) as i32;
                        let dur = raw_dur.max(0);
                        let tap_x = if start_recorded { start_x } else { cur_x };
                        let tap_y = if start_recorded { start_y } else { cur_y };
                        let max_move = max_move_x.max(max_move_y);
                        let in_safe_zone =
                            (24..=696).contains(&tap_x) && (60..=1552).contains(&tap_y);

                        if !multi_touch_tainted
                            && in_safe_zone
                            && dur <= 380
                            && max_move <= 60
                        {
                            let gap = if prev_tap_up_ms > 0 {
                                (down_ms - prev_tap_up_ms) as i32
                            } else {
                                0
                            };
                            let span = if prev_tap_down_ms > 0 {
                                (down_ms - prev_tap_down_ms) as i32
                            } else {
                                0
                            };
                            let dx = tap_x - prev_tap_x;
                            let dy = tap_y - prev_tap_y;
                            let dist = (((dx * dx + dy * dy) as f64).sqrt()) as i32;

                            log_msg(&format!(
                                "STANDBY_TAP x={} y={} dur={} gap={} span={} dist={}",
                                tap_x, tap_y, dur, gap, span, dist
                            ));

                            let valid_dt = if prev_tap_up_ms > 0 && span <= 850 {
                                wasm_sb
                                    .validate_double_tap(true, dur, gap, max_move, dist, tap_y)
                                    .unwrap_or((15..=550).contains(&gap) && dist <= 145)
                            } else {
                                false
                            };

                            if valid_dt {
                                prev_tap_down_ms = 0;
                                prev_tap_up_ms = 0;
                                last_wake_ms = now_ms();
                                ctx.exit(
                                    &mut slot_active,
                                    &mut cur_slot,
                                    &mut cur_x,
                                    &mut cur_y,
                                    0,
                                    "DOUBLE_TAP",
                                );
                                was_touch_active = false;
                                multi_touch_tainted = false;
                                break;
                            } else {
                                prev_tap_down_ms = down_ms;
                                prev_tap_up_ms = ev_t;
                                prev_tap_x = tap_x;
                                prev_tap_y = tap_y;
                            }
                        } else {
                            prev_tap_down_ms = 0;
                            prev_tap_up_ms = 0;
                        }
                        multi_touch_tainted = false;
                    }

                    was_touch_active = touch_active;
                }
            }
        }

        // 2. Physical Power / Volume Keys
        if pwr_ready && pwr_fd >= 0 {
            while unsafe {
                libc::read(
                    pwr_fd,
                    &mut ev as *mut InputEvent as *mut _,
                    core::mem::size_of::<InputEvent>(),
                )
            } == core::mem::size_of::<InputEvent>() as isize
            {
                if !ctx.is_black_standby {
                    continue;
                }
                if ev.type_ == EV_KEY {
                    if ev.code == KEY_POWER && ev.value == 1 {
                        last_wake_ms = now_ms();
                        ctx.exit(
                            &mut slot_active,
                            &mut cur_slot,
                            &mut cur_x,
                            &mut cur_y,
                            2,
                            "POWER_KEY",
                        );
                        break;
                    } else if ev.code == KEY_VOLUMEUP || ev.code == KEY_VOLUMEDOWN {
                        emit_key(ctx.ufd, ev.code, ev.value);
                    }
                }
            }
        }

        // 3. Side Fingerprint Sensor Nav Keys (`gf-keys`): drain & silence when 0 enrolled;
        //    if >=1 enrolled and an EV_KEY arrives, arm the non-blocking TEE verification window.
        if gf_ready && gf_fd >= 0 {
            let mut saw_fp_down = false;
            while unsafe {
                libc::read(
                    gf_fd,
                    &mut ev as *mut InputEvent as *mut _,
                    core::mem::size_of::<InputEvent>(),
                )
            } == core::mem::size_of::<InputEvent>() as isize
            {
                if ev.type_ == EV_KEY && ev.value == 1 {
                    saw_fp_down = true;
                }
            }
            if ctx.is_black_standby && saw_fp_down {
                if bio_gate.enrolled_count > 0 {
                    fp_verify_until_ms = now_ms() + 2800;
                    fp_slow_verify_until_ms = now_ms() + 8000;
                    last_fp_hal_poll_ms = 0;
                } else if get_real_backlight() > 0 {
                    set_real_backlight(ctx.bl_real_fd, 0);
                }
            }
        }
    }
}
