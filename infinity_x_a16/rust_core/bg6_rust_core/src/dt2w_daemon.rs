use std::ffi::CString;
use std::fs::{self, OpenOptions};
use std::io::Write;
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

const INPUT_PROP_DIRECT: libc::c_int = 0x01;
const BUS_VIRTUAL: u16 = 0x06;

const UI_SET_EVBIT: libc::c_ulong = 0x4004_5564;
const UI_SET_KEYBIT: libc::c_ulong = 0x4004_5565;
const UI_SET_ABSBIT: libc::c_ulong = 0x4004_5567;
const UI_SET_PROPBIT: libc::c_ulong = 0x4004_556e;
const UI_DEV_CREATE: libc::c_ulong = 0x5501;
const EVIOCGRAB: libc::c_ulong = 0x4004_4590;

const fn eviocgname(len: usize) -> libc::c_ulong {
    ((2u32 << 30) | ((len as u32) << 16) | (0x45u32 << 8) | 0x06u32) as libc::c_ulong
}

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
}

fn ensure_dpu_ddr_bandwidth() {
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

fn get_dummy_backlight() -> i32 {
    read_sysfs_i64(DUMMY_BL_PATH).unwrap_or(-1) as i32
}

fn set_dummy_backlight(val: i32) {
    let _ = write_atomic_file(DUMMY_BL_PATH, &format!("{}\n", val), 0o666);
}

fn is_screen_ready_for_dt2s(tap_y: i32) -> i32 {
    let sysui = run_stdout(
        "/system/bin/dumpsys",
        &[
            "activity",
            "service",
            "com.android.systemui/.SystemUIService",
            "SysUiState",
            "PulseExpansionHandler",
            "KeyguardViewMediator",
        ],
    );
    let mut keyguard_showing = false;
    let mut occluded = false;
    let mut bouncer_showing = false;
    let mut qs_expanded = false;

    for line in sysui.lines() {
        if line.contains("keygrd_visible") || line.contains("mShowing: true") {
            keyguard_showing = true;
        }
        if line.contains("mOccluded: true") {
            occluded = true;
        }
        if line.contains("bouncer_visible") || line.contains("bouncerShowing: true") {
            bouncer_showing = true;
        }
        if line.contains("qsExpanded: true") {
            qs_expanded = true;
        }
    }

    if bouncer_showing || qs_expanded {
        return 0;
    }
    if keyguard_showing && !occluded {
        return 1;
    }
    if tap_y < 90 {
        return 2;
    }

    thread::sleep(Duration::from_millis(70));
    let win = run_stdout("/system/bin/dumpsys", &["window", "displays"]);
    let mut on_home_launcher = false;
    let mut ime_showing = false;
    for line in win.lines() {
        if line.contains("mCurrentFocus=")
            && (line.contains("QuickstepLauncher") || line.contains("NexusLauncherActivity"))
        {
            on_home_launcher = true;
        }
        if line.contains("mIsImeShowing=true") || line.contains("mImeShowing=true") {
            ime_showing = true;
        }
    }
    if on_home_launcher && !ime_showing {
        2
    } else {
        0
    }
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

fn setup_uinput_touch() -> i32 {
    let Ok(cpath) = CString::new("/dev/uinput") else {
        return -1;
    };
    let ufd = unsafe { libc::open(cpath.as_ptr(), libc::O_WRONLY | libc::O_NONBLOCK | libc::O_CLOEXEC) };
    if ufd < 0 {
        return -1;
    }
    unsafe {
        libc::ioctl(ufd, UI_SET_EVBIT as _, EV_KEY as libc::c_int);
        libc::ioctl(ufd, UI_SET_EVBIT as _, EV_ABS as libc::c_int);
        libc::ioctl(ufd, UI_SET_EVBIT as _, EV_SYN as libc::c_int);
        libc::ioctl(ufd, UI_SET_KEYBIT as _, BTN_TOUCH as libc::c_int);
        libc::ioctl(ufd, UI_SET_ABSBIT as _, ABS_MT_SLOT as libc::c_int);
        libc::ioctl(ufd, UI_SET_ABSBIT as _, ABS_MT_TRACKING_ID as libc::c_int);
        libc::ioctl(ufd, UI_SET_ABSBIT as _, ABS_MT_POSITION_X as libc::c_int);
        libc::ioctl(ufd, UI_SET_ABSBIT as _, ABS_MT_POSITION_Y as libc::c_int);
        libc::ioctl(ufd, UI_SET_ABSBIT as _, ABS_MT_TOUCH_MAJOR as libc::c_int);
        libc::ioctl(ufd, UI_SET_ABSBIT as _, ABS_MT_PRESSURE as libc::c_int);
        libc::ioctl(ufd, UI_SET_PROPBIT as _, INPUT_PROP_DIRECT);

        let mut udev: UinputUserDev = core::mem::zeroed();
        let name = b"dt2w-keepalive-touch";
        udev.name[..name.len()].copy_from_slice(name);
        udev.id = InputId {
            bustype: BUS_VIRTUAL,
            vendor: 0x1234,
            product: 0x5679,
            version: 1,
        };
        udev.absmin[ABS_MT_SLOT] = 0;
        udev.absmax[ABS_MT_SLOT] = 1;
        udev.absmin[ABS_MT_TRACKING_ID] = 0;
        udev.absmax[ABS_MT_TRACKING_ID] = 65535;
        udev.absmin[ABS_MT_POSITION_X] = 0;
        udev.absmax[ABS_MT_POSITION_X] = 719;
        udev.absmin[ABS_MT_POSITION_Y] = 0;
        udev.absmax[ABS_MT_POSITION_Y] = 1611;
        udev.absmin[ABS_MT_TOUCH_MAJOR] = 0;
        udev.absmax[ABS_MT_TOUCH_MAJOR] = 255;
        udev.absmin[ABS_MT_PRESSURE] = 0;
        udev.absmax[ABS_MT_PRESSURE] = 255;

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

fn refresh_user_activity_via_uinput(utouch_fd: i32, alt: &mut bool) {
    if utouch_fd < 0 {
        return;
    }
    *alt = !*alt;
    let py = if *alt { 500 } else { 501 };

    write_input_ev(utouch_fd, EV_ABS, ABS_MT_SLOT as u16, 0);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, 99);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_X as u16, 680);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_Y as u16, py);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR as u16, 4);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_PRESSURE as u16, 10);
    write_input_ev(utouch_fd, EV_KEY, BTN_TOUCH, 1);
    write_input_ev(utouch_fd, EV_SYN, SYN_REPORT, 0);

    thread::sleep(Duration::from_millis(4));

    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_X as u16, 708);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_Y as u16, py);
    write_input_ev(utouch_fd, EV_SYN, SYN_REPORT, 0);

    thread::sleep(Duration::from_millis(4));

    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, -1);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR as u16, 0);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_PRESSURE as u16, 0);
    write_input_ev(utouch_fd, EV_KEY, BTN_TOUCH, 0);
    write_input_ev(utouch_fd, EV_SYN, SYN_REPORT, 0);
}

fn release_active_mt_slots(touch_fd: i32, slot_active: &mut [bool; 10], force_all: bool) {
    if touch_fd < 0 {
        return;
    }
    let mut any = false;
    for s in 0..10 {
        if force_all || slot_active[s] {
            write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT as u16, s as i32);
            if force_all {
                write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, 100 + s as i32);
                write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
            }
            write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID as u16, -1);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_PRESSURE as u16, 0);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR as u16, 0);
            write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
            slot_active[s] = false;
            any = true;
        }
    }
    if any || force_all {
        write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT as u16, 0);
        write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
        write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
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
        let _ = write_sysfs(RING0_PROC_PATH, "mode=standby\n");
    } else {
        let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1820000\n");
        let _ = write_sysfs("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "2028000\n");
        let _ = write_sysfs("/dev/cpuset/background/cpus", "0-2\n");
        let _ = write_sysfs("/dev/cpuset/system-background/cpus", "0-3\n");
        let _ = write_sysfs(RING0_PROC_PATH, "mode=auto\n");
    }
}

struct Dt2wSettingCache {
    enabled: bool,
    last_mtime_sec: i64,
    last_mtime_nsec: i64,
    last_poll_ms: i64,
    last_psensor: i32,
}

impl Dt2wSettingCache {
    fn new() -> Self {
        Self {
            enabled: true,
            last_mtime_sec: 0,
            last_mtime_nsec: 0,
            last_poll_ms: 0,
            last_psensor: -1,
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
        let target_ps = if self.enabled { 1 } else { 0 };
        if target_ps != self.last_psensor {
            let _ = write_sysfs(PSENSOR_ENABLE_PATH, if self.enabled { "1\n" } else { "0\n" });
            self.last_psensor = target_ps;
        }
        self.enabled
    }
}

struct StandbyCtx {
    bl_real_fd: i32,
    ufd: i32,
    utouch_fd: i32,
    touch_fd: i32,
    pwr_fd: i32,
    is_black_standby: bool,
    saved_bl: i32,
    standby_enter_ms: i64,
    last_keepalive_ms: i64,
    keepalive_alt: bool,
}

impl StandbyCtx {
    fn enter(&mut self, slot_active: &mut [bool; 10], reason: &str) {
        umount_all_detach(BL_PATH);
        set_dummy_backlight(if self.saved_bl >= 40 { self.saved_bl } else { 220 });
        set_real_backlight(self.bl_real_fd, 0);
        let _ = mount_bind(DUMMY_BL_PATH, BL_PATH);

        release_active_mt_slots(self.touch_fd, slot_active, false);
        unsafe {
            if self.touch_fd >= 0 {
                libc::ioctl(self.touch_fd, EVIOCGRAB as _, 1 as libc::c_int);
            }
            if self.pwr_fd >= 0 {
                libc::ioctl(self.pwr_fd, EVIOCGRAB as _, 1 as libc::c_int);
            }
        }

        if is_dpms_off() {
            emit_wakeup(self.ufd);
            thread::sleep(Duration::from_millis(120));
            set_real_backlight(self.bl_real_fd, 0);
        }

        ensure_dpu_ddr_bandwidth();
        refresh_user_activity_via_uinput(self.utouch_fd, &mut self.keepalive_alt);
        set_standby_cpu_power_save(true);

        let t = now_ms();
        self.is_black_standby = true;
        self.standby_enter_ms = t;
        self.last_keepalive_ms = t;
        log_msg(&format!("ENTER_BLACK_STANDBY reason={} (Rust v8.0)", reason));
    }

    fn exit(&mut self, slot_active: &mut [bool; 10], mode: i32, reason: &str) {
        set_standby_cpu_power_save(false);

        release_active_mt_slots(self.touch_fd, slot_active, false);
        unsafe {
            if self.touch_fd >= 0 {
                libc::ioctl(self.touch_fd, EVIOCGRAB as _, 0 as libc::c_int);
            }
            if self.pwr_fd >= 0 {
                libc::ioctl(self.pwr_fd, EVIOCGRAB as _, 0 as libc::c_int);
            }
        }
        self.is_black_standby = false;

        let dummy_bl = get_dummy_backlight();
        umount_all_detach(BL_PATH);
        chmod_path(BL_PATH, 0o664);

        if mode == 0 || mode == 2 {
            let restore = if dummy_bl >= 40 {
                dummy_bl
            } else if self.saved_bl >= 40 {
                self.saved_bl
            } else {
                220
            };
            set_real_backlight(self.bl_real_fd, restore);
            ensure_dpu_ddr_bandwidth();
            emit_wakeup(self.ufd);
            refresh_user_activity_via_uinput(self.utouch_fd, &mut self.keepalive_alt);
            ensure_dpu_ddr_bandwidth();
            log_msg(&format!(
                "EXIT_BLACK_STANDBY reason={} restore_bl={}",
                reason, restore
            ));
        } else {
            set_real_backlight(self.bl_real_fd, 0);
            log_msg(&format!("EXIT_BLACK_STANDBY reason={} bl=0", reason));
        }
    }
}

pub fn run_dt2w_daemon() -> i32 {
    let _ = fs::remove_file(LOG_PATH);
    log_msg("bg6_dt2w_daemon v8.0 Pure-Rust starting (epoll + Netlink UEvent + inotify + Wasm Sandbox)");

    umount_all_detach(BL_PATH);
    chmod_path(BL_PATH, 0o664);
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
    let utouch_fd = setup_uinput_touch();
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
    let gf_fd = find_input_by_name("gf-keys");
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
    let mut slot_active = [false; 10];
    let mut cur_slot: usize = 0;

    release_active_mt_slots(touch_fd, &mut slot_active, true);

    let mut init_bl = get_real_backlight();
    if init_bl < 40 {
        init_bl = 220;
        set_real_backlight(bl_real_fd, init_bl);
    }
    set_dummy_backlight(init_bl);

    let mut ctx = StandbyCtx {
        bl_real_fd,
        ufd,
        utouch_fd,
        touch_fd,
        pwr_fd,
        is_black_standby: false,
        saved_bl: init_bl,
        standby_enter_ms: 0,
        last_keepalive_ms: 0,
        keepalive_alt: false,
    };

    let mut candidate_bl = init_bl;
    let mut candidate_bl_since_ms = now_ms();
    let mut bl_zero_since_ms = 0i64;
    let mut last_wake_ms = 0i64;
    let mut last_bw_check_ms = 0i64;
    let mut last_ring_check_ms = 0i64;
    let mut last_usb_online = get_usb_online();

    let mut cur_x = 0i32;
    let mut cur_y = 0i32;
    let mut start_x = 0i32;
    let mut start_y = 0i32;
    let mut touch_active = false;
    let mut was_touch_active = false;
    let mut start_recorded = false;
    let mut max_move_x = 0i32;
    let mut max_move_y = 0i32;
    let mut down_ms = 0i64;
    let mut prev_tap_ms = 0i64;
    let mut prev_tap_x = 0i32;
    let mut prev_tap_y = 0i32;

    // Setup epoll multiplexing across touch_fd, pwr_fd, gf_fd, uevent_fd, and inotify_fd
    let epfd = unsafe { libc::epoll_create1(libc::EPOLL_CLOEXEC) };
    let register_ep = |fd: i32, tag: u64| {
        if epfd >= 0 && fd >= 0 {
            let mut ev = libc::epoll_event {
                events: libc::EPOLLIN as u32,
                u64: tag,
            };
            unsafe {
                libc::epoll_ctl(epfd, libc::EPOLL_CTL_ADD, fd, &mut ev);
            }
        }
    };
    register_ep(touch_fd, 1);
    register_ep(pwr_fd, 2);
    register_ep(gf_fd, 3);
    register_ep(uevent_fd, 4);
    register_ep(inotify_fd, 5);

    let mut ep_events = [libc::epoll_event { events: 0, u64: 0 }; 8];
    let mut ev = InputEvent::default();
    let mut scratch_buf = [0u8; 1024];

    loop {
        let nfds = if epfd >= 0 {
            unsafe { libc::epoll_wait(epfd, ep_events.as_mut_ptr(), ep_events.len() as i32, 120) }
        } else {
            thread::sleep(Duration::from_millis(120));
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
                        libc::recv(uevent_fd, scratch_buf.as_mut_ptr() as *mut _, scratch_buf.len(), 0)
                    } > 0
                    {}
                } else if e.u64 == 5 && inotify_fd >= 0 {
                    while unsafe {
                        libc::read(inotify_fd, scratch_buf.as_mut_ptr() as *mut _, scratch_buf.len())
                    } > 0
                    {
                        force_setting_check = true;
                    }
                }
            }
        }

        let dt2w_enabled = setting_cache.check(force_setting_check);
        wasm_sb.reload_if_needed(false);

        if (bl > 0 || ctx.is_black_standby) && (t - last_bw_check_ms >= 400) {
            ensure_dpu_ddr_bandwidth();
            last_bw_check_ms = t;
        }

        if !ctx.is_black_standby {
            let u_now = get_usb_online();
            if u_now >= 0 {
                last_usb_online = u_now;
            }
            if bl > 0 {
                if bl >= 40 {
                    if bl > ctx.saved_bl {
                        ctx.saved_bl = bl;
                        candidate_bl = bl;
                        candidate_bl_since_ms = t;
                    } else if bl == candidate_bl {
                        if t - candidate_bl_since_ms >= 600 {
                            ctx.saved_bl = bl;
                        }
                    } else {
                        candidate_bl = bl;
                        candidate_bl_since_ms = t;
                    }
                }
                bl_zero_since_ms = 0;
            } else if bl == 0 && dt2w_enabled {
                if bl_zero_since_ms == 0 {
                    bl_zero_since_ms = t;
                } else if t - bl_zero_since_ms >= 350 && t - last_wake_ms >= 1000 {
                    ctx.enter(&mut slot_active, "SYSTEM_SLEEP");
                    bl_zero_since_ms = 0;
                    touch_active = false;
                    was_touch_active = false;
                    prev_tap_ms = 0;
                }
            }
        } else {
            if !dt2w_enabled {
                last_wake_ms = t;
                ctx.exit(&mut slot_active, 0, "SETTING_DISABLED");
                continue;
            }
            let cur_usb = get_usb_online();
            if cur_usb >= 0 && last_usb_online >= 0 && cur_usb != last_usb_online {
                last_usb_online = cur_usb;
                last_wake_ms = t;
                ctx.exit(&mut slot_active, 0, "USB_PLUG_WAKE");
                continue;
            }
            if cur_usb >= 0 {
                last_usb_online = cur_usb;
            }
            if t - last_ring_check_ms >= 1000 {
                last_ring_check_ms = t;
                if is_ringing_or_alarm_active() {
                    last_wake_ms = now_ms();
                    ctx.exit(&mut slot_active, 0, "INCOMING_CALL_OR_ALARM");
                    continue;
                }
            }
            if bl > 0 {
                set_real_backlight(ctx.bl_real_fd, 0);
            }
            if !touch_active {
                if is_dpms_off() {
                    emit_wakeup(ctx.ufd);
                    thread::sleep(Duration::from_millis(120));
                    set_real_backlight(ctx.bl_real_fd, 0);
                    ensure_dpu_ddr_bandwidth();
                    refresh_user_activity_via_uinput(ctx.utouch_fd, &mut ctx.keepalive_alt);
                    ctx.last_keepalive_ms = now_ms();
                } else if t - ctx.last_keepalive_ms >= 6000 {
                    ensure_dpu_ddr_bandwidth();
                    refresh_user_activity_via_uinput(ctx.utouch_fd, &mut ctx.keepalive_alt);
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

        // 1. Touchscreen Events
        if touch_ready {
            while unsafe {
                libc::read(
                    touch_fd,
                    &mut ev as *mut InputEvent as *mut _,
                    core::mem::size_of::<InputEvent>(),
                )
            } == core::mem::size_of::<InputEvent>() as isize
            {
                let ev_t = now_ms();

                if ev.type_ == EV_ABS && ev.code as usize == ABS_MT_SLOT {
                    if ev.value >= 0 && ev.value < 10 {
                        cur_slot = ev.value as usize;
                    }
                    continue;
                }
                if ev.type_ == EV_ABS && ev.code as usize == ABS_MT_TRACKING_ID {
                    if cur_slot < 10 {
                        slot_active[cur_slot] = ev.value >= 0;
                    }
                }

                if !dt2w_enabled && !ctx.is_black_standby {
                    touch_active = false;
                    was_touch_active = false;
                    prev_tap_ms = 0;
                    continue;
                }
                if ctx.is_black_standby && (ev_t - ctx.standby_enter_ms < 450) {
                    touch_active = false;
                    was_touch_active = false;
                    prev_tap_ms = 0;
                    continue;
                }

                if ev.type_ == EV_ABS && cur_slot == 0 {
                    match ev.code as usize {
                        ABS_MT_POSITION_X => cur_x = ev.value,
                        ABS_MT_POSITION_Y => cur_y = ev.value,
                        ABS_MT_TRACKING_ID => {
                            if ev.value >= 0 && !touch_active {
                                touch_active = true;
                                start_recorded = false;
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
                        let dur = (ev_t - down_ms) as i32;
                        let tap_x = start_x;
                        let tap_y = start_y;
                        let max_move = max_move_x.max(max_move_y);

                        if ctx.is_black_standby {
                            if dur >= 5 && dur <= 350 && max_move <= 70 {
                                let gap = (down_ms - prev_tap_ms) as i32;
                                let dist = (tap_x - prev_tap_x).abs().max((tap_y - prev_tap_y).abs());
                                log_msg(&format!(
                                    "STANDBY_TAP x={} y={} dur={} gap={} dist={}",
                                    tap_x, tap_y, dur, gap, dist
                                ));

                                let valid_dt = if prev_tap_ms > 0 {
                                    wasm_sb
                                        .validate_double_tap(true, dur, gap, max_move, dist, tap_y)
                                        .unwrap_or(gap >= 20 && gap <= 750 && dist <= 200)
                                } else {
                                    false
                                };

                                if valid_dt {
                                    prev_tap_ms = 0;
                                    last_wake_ms = now_ms();
                                    ctx.exit(&mut slot_active, 0, "DOUBLE_TAP");
                                    was_touch_active = false;
                                    break;
                                } else {
                                    prev_tap_ms = down_ms;
                                    prev_tap_x = tap_x;
                                    prev_tap_y = tap_y;
                                }
                            } else {
                                prev_tap_ms = 0;
                            }
                        } else if dt2w_enabled {
                            if dur >= 5
                                && dur <= 320
                                && max_move <= 55
                                && (10..=1480).contains(&tap_y)
                                && (ev_t - last_wake_ms > 450)
                            {
                                let gap = (down_ms - prev_tap_ms) as i32;
                                let dist = (tap_x - prev_tap_x).abs().max((tap_y - prev_tap_y).abs());

                                let valid_dt = if prev_tap_ms > 0 {
                                    wasm_sb
                                        .validate_double_tap(false, dur, gap, max_move, dist, tap_y)
                                        .unwrap_or(gap >= 20 && gap <= 600 && dist <= 140)
                                } else {
                                    false
                                };

                                if valid_dt {
                                    prev_tap_ms = 0;
                                    let dt2s_mode = is_screen_ready_for_dt2s(tap_y);
                                    if dt2s_mode == 1 {
                                        log_msg(&format!("LOCKSCREEN_DT2S x={} y={}", tap_x, tap_y));
                                        ctx.enter(&mut slot_active, "LOCKSCREEN_DOUBLE_TAP");
                                        was_touch_active = false;
                                        break;
                                    } else if dt2s_mode == 2 {
                                        log_msg(&format!("HOMESCREEN_DT2S x={} y={}", tap_x, tap_y));
                                        emit_key(ctx.ufd, KEY_POWER, 1);
                                        thread::sleep(Duration::from_millis(15));
                                        emit_key(ctx.ufd, KEY_POWER, 0);
                                        thread::sleep(Duration::from_millis(80));
                                        ctx.enter(&mut slot_active, "HOMESCREEN_DOUBLE_TAP");
                                        was_touch_active = false;
                                        break;
                                    }
                                } else {
                                    prev_tap_ms = down_ms;
                                    prev_tap_x = tap_x;
                                    prev_tap_y = tap_y;
                                }
                            } else {
                                prev_tap_ms = 0;
                            }
                        } else {
                            prev_tap_ms = 0;
                        }
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
                        ctx.exit(&mut slot_active, 2, "POWER_KEY");
                        break;
                    } else if ev.code == KEY_VOLUMEUP || ev.code == KEY_VOLUMEDOWN {
                        emit_key(ctx.ufd, ev.code, ev.value);
                    }
                }
            }
        }

        // 3. Fingerprint Sensor Keys
        if gf_ready && gf_fd >= 0 {
            while unsafe {
                libc::read(
                    gf_fd,
                    &mut ev as *mut InputEvent as *mut _,
                    core::mem::size_of::<InputEvent>(),
                )
            } == core::mem::size_of::<InputEvent>() as isize
            {
                if !ctx.is_black_standby {
                    continue;
                }
                if ev.type_ == EV_KEY && ev.value == 1 {
                    last_wake_ms = now_ms();
                    ctx.exit(&mut slot_active, 0, "FINGERPRINT");
                    break;
                }
            }
        }
    }
}
