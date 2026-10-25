#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <poll.h>
#include <time.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/mount.h>
#include <linux/input.h>
#include <linux/uinput.h>

#define BL_PATH         "/sys/class/backlight/sprd_backlight/brightness"
#define ACTUAL_BL_PATH  "/sys/class/backlight/sprd_backlight/actual_brightness"
#define DUMMY_BL_PATH   "/dev/bl_dummy"
#define DPMS_PATH       "/sys/class/drm/card0-DSI-1/dpms"
#define ESD_PATH        "/sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/esd_check_enable"
#define SCENE_LIST_PATH "/sys/class/devfreq/scene-frequency/sprd-governor/scene_dfs_list"
#define SCENE_ENTER     "/sys/class/devfreq/scene-frequency/sprd-governor/scenario_dfs"
#define SCENE_EXIT      "/sys/class/devfreq/scene-frequency/sprd-governor/exit_scene"
#define DPU_WORK_INDEX  "/sys/class/devfreq/dpu/dpu_governor/work_index"
#define DPU_IDLE_INDEX  "/sys/class/devfreq/dpu/dpu_governor/idle_index"
#define GPU_MIN_FREQ    "/sys/class/devfreq/23100000.gpu/min_freq"
#define SETTINGS_PATH   "/data/system/users/0/settings_system.xml"
#define LOG_PATH        "/data/local/tmp/dt2w.log"

static long long now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000LL + ts.tv_nsec / 1000000LL;
}

static void log_msg(const char *fmt, ...) {
    FILE *fp = fopen(LOG_PATH, "a");
    if (!fp) return;
    fprintf(fp, "[%lld] ", now_ms());
    va_list ap;
    va_start(ap, fmt);
    vfprintf(fp, fmt, ap);
    va_end(ap);
    fprintf(fp, "\n");
    fclose(fp);
}

static void write_sysfs_str(const char *path, const char *val) {
    int fd = open(path, O_WRONLY);
    if (fd >= 0) {
        if (write(fd, val, strlen(val)) < 0) {}
        close(fd);
    }
}

/*
 * Disable periodic MIPI DSI ESD register reads on ICNL9916 video-mode panel
 * and ensure DDR RAM stays in `lcdon` (768MHz, never stuck in `lcdoff` 256MHz)
 * and DPU core clock stays at index 4 (384MHz) so "[drm] Warning: dpu underflow!" never occurs.
 */
static void ensure_dpu_ddr_bandwidth(void) {
    write_sysfs_str(ESD_PATH, "0\n");
    write_sysfs_str(DPU_WORK_INDEX, "4\n");
    write_sysfs_str(DPU_IDLE_INDEX, "4\n");

    int fd = open(SCENE_LIST_PATH, O_RDONLY);
    if (fd >= 0) {
        char buf[512];
        ssize_t n = read(fd, buf, sizeof(buf) - 1);
        close(fd);
        if (n > 0) {
            buf[n] = '\0';
            if (strstr(buf, "lcdon freq 768  flag 0") != NULL) {
                write_sysfs_str(SCENE_ENTER, "lcdon");
            }
            if (strstr(buf, "lcdoff freq 256  flag 0") == NULL &&
                strstr(buf, "lcdoff freq 256") != NULL) {
                write_sysfs_str(SCENE_EXIT, "lcdoff");
            }
        }
    }
}

static int is_dt2w_setting_enabled(void) {
    int fd = open(SETTINGS_PATH, O_RDONLY);
    if (fd >= 0) {
        char buf[65536];
        ssize_t n = read(fd, buf, sizeof(buf));
        close(fd);
        if (n > 30) {
            const char *key = "os_action_tapping_wake";
            size_t klen = 22;
            char *p = memmem(buf, (size_t)n, key, klen);
            if (p && (p + 28 <= buf + n)) {
                char val = p[27];
                if (val == '0') return 0;
                if (val == '1') return 1;
            }
        }
    }
    return 1;
}

static int get_real_backlight(void) {
    int fd = open(ACTUAL_BL_PATH, O_RDONLY);
    if (fd < 0) return -1;
    char buf[32];
    ssize_t n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return -1;
    buf[n] = '\0';
    return atoi(buf);
}

static void set_real_backlight(int bl_real_fd, int val) {
    if (bl_real_fd < 0) return;
    char buf[32];
    int len = snprintf(buf, sizeof(buf), "%d\n", val);
    if (pwrite(bl_real_fd, buf, len, 0) < 0) {}
}

static int get_dummy_backlight(void) {
    int fd = open(DUMMY_BL_PATH, O_RDONLY);
    if (fd < 0) return -1;
    char buf[32];
    ssize_t n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return -1;
    buf[n] = '\0';
    return atoi(buf);
}

static void set_dummy_backlight(int val) {
    int fd = open(DUMMY_BL_PATH, O_CREAT | O_TRUNC | O_WRONLY, 0666);
    if (fd < 0) return;
    char buf[32];
    int len = snprintf(buf, sizeof(buf), "%d\n", val);
    if (write(fd, buf, len) < 0) {}
    close(fd);
    chmod(DUMMY_BL_PATH, 0666);
}

static int is_dpms_off(void) {
    int fd = open(DPMS_PATH, O_RDONLY);
    if (fd < 0) return 0;
    char buf[32];
    ssize_t n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return 0;
    buf[n] = '\0';
    return (strncmp(buf, "Off", 3) == 0);
}

/*
 * Returns:
 *   0 = Do NOT sleep (inside an app, PIN pad bouncer, or Quick Settings shade)
 *   1 = Clean Lockscreen -> enter Black Standby directly
 *   2 = Unlocked Home Screen (QuickstepLauncher) or Status Bar -> lock & enter Black Standby
 */
static int is_screen_ready_for_dt2s(int tap_y) {
    FILE *fp = popen("/system/bin/dumpsys activity service com.android.systemui/.SystemUIService SysUiState PulseExpansionHandler KeyguardViewMediator", "r");
    if (!fp) return 0;
    char line[512];
    int keyguard_showing = 0;
    int occluded = 0;
    int bouncer_showing = 0;
    int qs_expanded = 0;

    while (fgets(line, sizeof(line), fp) != NULL) {
        if (strstr(line, "keygrd_visible") != NULL) keyguard_showing = 1;
        if (strstr(line, "mShowing: true") != NULL) keyguard_showing = 1;
        if (strstr(line, "mOccluded: true") != NULL) occluded = 1;
        if (strstr(line, "bouncer_visible") != NULL) bouncer_showing = 1;
        if (strstr(line, "bouncerShowing: true") != NULL) bouncer_showing = 1;
        if (strstr(line, "qsExpanded: true") != NULL) qs_expanded = 1;
    }
    pclose(fp);

    if (bouncer_showing || qs_expanded) return 0;
    if (keyguard_showing && !occluded) return 1;

    /* Unlocked screen: allow Status Bar (y < 90) or Home Screen (QuickstepLauncher) */
    if (tap_y < 90) return 2;

    /* Brief 70ms settle so single-tap app launch changes focus before we check */
    usleep(70000);
    FILE *wfp = popen("/system/bin/dumpsys window displays", "r");
    if (!wfp) return 0;
    int on_home_launcher = 0;
    int ime_showing = 0;
    while (fgets(line, sizeof(line), wfp) != NULL) {
        if (strstr(line, "mCurrentFocus=") != NULL &&
            strstr(line, "com.transsion.hilauncher/com.android.quickstep.src.com.android.launcher3.uioverrides.QuickstepLauncher") != NULL) {
            on_home_launcher = 1;
        }
        if (strstr(line, "mIsImeShowing=true") != NULL || strstr(line, "mImeShowing=true") != NULL) {
            ime_showing = 1;
        }
    }
    pclose(wfp);

    if (on_home_launcher && !ime_showing) return 2;
    return 0;
}

static int setup_uinput_keys(void) {
    int ufd = open("/dev/uinput", O_WRONLY | O_NONBLOCK);
    if (ufd < 0) return -1;

    ioctl(ufd, UI_SET_EVBIT, EV_KEY);
    ioctl(ufd, UI_SET_EVBIT, EV_SYN);
    ioctl(ufd, UI_SET_KEYBIT, KEY_WAKEUP);
    ioctl(ufd, UI_SET_KEYBIT, KEY_POWER);
    ioctl(ufd, UI_SET_KEYBIT, KEY_VOLUMEUP);
    ioctl(ufd, UI_SET_KEYBIT, KEY_VOLUMEDOWN);

    struct uinput_user_dev udev;
    memset(&udev, 0, sizeof(udev));
    snprintf(udev.name, UINPUT_MAX_NAME_SIZE, "dt2w-virtual-keys");
    udev.id.bustype = BUS_VIRTUAL;
    udev.id.vendor  = 0x1234;
    udev.id.product = 0x5678;
    udev.id.version = 1;

    if (write(ufd, &udev, sizeof(udev)) < 0) {
        close(ufd);
        return -1;
    }
    if (ioctl(ufd, UI_DEV_CREATE) < 0) {
        close(ufd);
        return -1;
    }
    return ufd;
}

/*
 * Dedicated virtual direct touchscreen (`dt2w-keepalive-touch`) used ONLY for
 * resetting PowerManagerService userActivityTime during Black Standby.
 * Because this is a separate input_dev from `chipone-tddi`, it NEVER mutates
 * `chipone-tddi` MT slots and NEVER requires ungrabbing `touch_fd` during standby!
 */
static int setup_uinput_touch(void) {
    int ufd = open("/dev/uinput", O_WRONLY | O_NONBLOCK);
    if (ufd < 0) return -1;

    ioctl(ufd, UI_SET_EVBIT, EV_KEY);
    ioctl(ufd, UI_SET_EVBIT, EV_ABS);
    ioctl(ufd, UI_SET_EVBIT, EV_SYN);
    ioctl(ufd, UI_SET_KEYBIT, BTN_TOUCH);
    ioctl(ufd, UI_SET_ABSBIT, ABS_MT_SLOT);
    ioctl(ufd, UI_SET_ABSBIT, ABS_MT_TRACKING_ID);
    ioctl(ufd, UI_SET_ABSBIT, ABS_MT_POSITION_X);
    ioctl(ufd, UI_SET_ABSBIT, ABS_MT_POSITION_Y);
    ioctl(ufd, UI_SET_ABSBIT, ABS_MT_TOUCH_MAJOR);
    ioctl(ufd, UI_SET_ABSBIT, ABS_MT_PRESSURE);
    ioctl(ufd, UI_SET_PROPBIT, INPUT_PROP_DIRECT);

    struct uinput_user_dev udev;
    memset(&udev, 0, sizeof(udev));
    snprintf(udev.name, UINPUT_MAX_NAME_SIZE, "dt2w-keepalive-touch");
    udev.id.bustype = BUS_VIRTUAL;
    udev.id.vendor  = 0x1234;
    udev.id.product = 0x5679;
    udev.id.version = 1;

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

    if (write(ufd, &udev, sizeof(udev)) < 0) {
        close(ufd);
        return -1;
    }
    if (ioctl(ufd, UI_DEV_CREATE) < 0) {
        close(ufd);
        return -1;
    }
    return ufd;
}

static void emit_key(int ufd, int code, int val) {
    if (ufd < 0) return;
    struct input_event ev;
    memset(&ev, 0, sizeof(ev));
    ev.type = EV_KEY;
    ev.code = code;
    ev.value = val;
    if (write(ufd, &ev, sizeof(ev)) < 0) {}

    memset(&ev, 0, sizeof(ev));
    ev.type = EV_SYN;
    ev.code = SYN_REPORT;
    ev.value = 0;
    if (write(ufd, &ev, sizeof(ev)) < 0) {}
}

static void emit_wakeup(int ufd) {
    emit_key(ufd, KEY_WAKEUP, 1);
    usleep(15000);
    emit_key(ufd, KEY_WAKEUP, 0);
}

static void write_input_ev(int fd, unsigned short type, unsigned short code, int value) {
    if (fd < 0) return;
    struct input_event ev;
    memset(&ev, 0, sizeof(ev));
    ev.type = type;
    ev.code = code;
    ev.value = value;
    if (write(fd, &ev, sizeof(ev)) < 0) {}
}

/*
 * Sends an 8ms horizontal micro-glide on the dedicated virtual uinput device `utouch_fd`.
 * Never touches `chipone-tddi` (`touch_fd`)!
 */
static void refresh_user_activity_via_uinput(int utouch_fd) {
    if (utouch_fd < 0) return;
    static int alt = 0;
    alt ^= 1;
    int py = alt ? 500 : 501;

    write_input_ev(utouch_fd, EV_ABS, ABS_MT_SLOT, 0);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TRACKING_ID, 99);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_X, 680);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_Y, py);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR, 4);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_PRESSURE, 10);
    write_input_ev(utouch_fd, EV_KEY, BTN_TOUCH, 1);
    write_input_ev(utouch_fd, EV_SYN, SYN_REPORT, 0);

    usleep(4000);

    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_X, 708);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_POSITION_Y, py);
    write_input_ev(utouch_fd, EV_SYN, SYN_REPORT, 0);

    usleep(4000);

    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TRACKING_ID, -1);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR, 0);
    write_input_ev(utouch_fd, EV_ABS, ABS_MT_PRESSURE, 0);
    write_input_ev(utouch_fd, EV_KEY, BTN_TOUCH, 0);
    write_input_ev(utouch_fd, EV_SYN, SYN_REPORT, 0);
}

/*
 * Ensures all 10 Type-B MT slots (0..9) and BTN_TOUCH on `touch_fd` are cleanly
 * released in both the kernel and Android InputReader.
 */
static void release_active_mt_slots(int touch_fd, int slot_active[10], int force_all) {
    if (touch_fd < 0) return;
    int any = 0;
    for (int s = 0; s < 10; s++) {
        if (force_all || slot_active[s]) {
            write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT, s);
            if (force_all) {
                write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID, 100 + s);
                write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
            }
            write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID, -1);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_PRESSURE, 0);
            write_input_ev(touch_fd, EV_ABS, ABS_MT_TOUCH_MAJOR, 0);
            write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
            slot_active[s] = 0;
            any = 1;
        }
    }
    if (any || force_all) {
        write_input_ev(touch_fd, EV_ABS, ABS_MT_SLOT, 0);
        write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
        write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
    }
}

static int find_input_by_name(const char *target) {
    char path[64], name[128];
    for (int i = 0; i < 16; i++) {
        snprintf(path, sizeof(path), "/dev/input/event%d", i);
        int fd = open(path, O_RDWR | O_NONBLOCK);
        if (fd < 0) {
            fd = open(path, O_RDONLY | O_NONBLOCK);
        }
        if (fd < 0) continue;
        memset(name, 0, sizeof(name));
        if (ioctl(fd, EVIOCGNAME(sizeof(name) - 1), name) >= 0) {
            if (strstr(name, target) != NULL) {
                log_msg("Matched input %s -> %s", target, path);
                return fd;
            }
        }
        close(fd);
    }
    return -1;
}

static void set_standby_cpu_power_save(int standby) {
    if (standby) {
        /* Cap Big Cortex-A75 cluster to minimum 768MHz & Little Cortex-A55 cluster to 884MHz during Black Standby */
        write_sysfs_str("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "768000\n");
        write_sysfs_str("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "884000\n");
        write_sysfs_str("/dev/cpuset/background/cpus", "0-1\n");
        write_sysfs_str("/dev/cpuset/system-background/cpus", "0-2\n");
    } else {
        /* Restore full 1.61GHz performance immediately before waking display */
        write_sysfs_str("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1612000\n");
        write_sysfs_str("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "1612000\n");
        write_sysfs_str("/dev/cpuset/background/cpus", "0-2\n");
        write_sysfs_str("/dev/cpuset/system-background/cpus", "0-3\n");
    }
}

static void enter_black_standby(int bl_real_fd, int ufd, int utouch_fd,
                                int touch_fd, int pwr_fd,
                                int slot_active[10],
                                int *is_black_standby, int saved_bl,
                                long long *standby_enter_ms,
                                long long *last_keepalive_ms,
                                const char *reason) {
    /*
     * 1. Isolate BL_PATH by bind-mounting /dev/bl_dummy over it BEFORE waking DPMS,
     *    and set real hardware backlight (via pre-opened bl_real_fd) to 0.
     */
    while (umount2(BL_PATH, MNT_DETACH) == 0) {}
    set_dummy_backlight(saved_bl >= 40 ? saved_bl : 220);
    set_real_backlight(bl_real_fd, 0);
    mount(DUMMY_BL_PATH, BL_PATH, NULL, MS_BIND, NULL);

    /*
     * 2. Release any active MT slots (0..9) in Android InputReader BEFORE grabbing
     *    touch_fd, then grab touch_fd and pwr_fd continuously for the entire standby duration.
     */
    release_active_mt_slots(touch_fd, slot_active, 0);
    if (touch_fd >= 0) ioctl(touch_fd, EVIOCGRAB, 1);
    if (pwr_fd >= 0)   ioctl(pwr_fd, EVIOCGRAB, 1);

    /*
     * 3. If the panel had already entered DRM DPMS Off, wake it silently
     *    while BL_PATH is bind-mounted to /dev/bl_dummy.
     */
    if (is_dpms_off()) {
        emit_wakeup(ufd);
        usleep(120000);
        set_real_backlight(bl_real_fd, 0);
    }

    /*
     * 4. Ensure DDR `lcdon` (768MHz) & DPU 384MHz, refresh userActivityTime
     *    via the separate virtual uinput touchscreen `utouch_fd`, and engage
     *    Standby CPU Power-Save (Big cores 768MHz, Little cores 884MHz).
     */
    ensure_dpu_ddr_bandwidth();
    refresh_user_activity_via_uinput(utouch_fd);
    set_standby_cpu_power_save(1);

    long long t = now_ms();
    *is_black_standby = 1;
    *standby_enter_ms = t;
    *last_keepalive_ms = t;
    log_msg("ENTER_BLACK_STANDBY reason=%s (CPU power-save active)", reason);
}

static void exit_black_standby(int bl_real_fd, int ufd, int utouch_fd,
                               int touch_fd, int pwr_fd,
                               int slot_active[10],
                               int *is_black_standby, int saved_bl,
                               int mode, const char *reason) {
    /*
     * 0. Restore full CPU performance (1.61GHz) immediately on wake!
     */
    set_standby_cpu_power_save(0);

    /*
     * 1. While touch_fd is STILL grabbed, clear any kernel MT slots (0..9) and BTN_TOUCH
     *    that were touched during standby, then release EVIOCGRAB cleanly.
     */
    release_active_mt_slots(touch_fd, slot_active, 0);
    if (touch_fd >= 0) ioctl(touch_fd, EVIOCGRAB, 0);
    if (pwr_fd >= 0)   ioctl(pwr_fd, EVIOCGRAB, 0);
    *is_black_standby = 0;

    int dummy_bl = get_dummy_backlight();
    while (umount2(BL_PATH, MNT_DETACH) == 0) {}
    chmod(BL_PATH, 0664);

    if (mode == 0 || mode == 2) {
        int restore = (dummy_bl >= 40) ? dummy_bl : ((saved_bl >= 40) ? saved_bl : 220);
        set_real_backlight(bl_real_fd, restore);
        ensure_dpu_ddr_bandwidth();
        emit_wakeup(ufd);
        refresh_user_activity_via_uinput(utouch_fd);
        ensure_dpu_ddr_bandwidth();
        log_msg("EXIT_BLACK_STANDBY reason=%s restore_bl=%d", reason, restore);
    } else {
        set_real_backlight(bl_real_fd, 0);
        log_msg("EXIT_BLACK_STANDBY reason=%s bl=0", reason);
    }
}

int main(void) {
    unlink(LOG_PATH);
    log_msg("dt2w_daemon v13 starting (Lockscreen + Home Desktop DT2S + Smart Standby CPU Power-Save)");

    while (umount2(BL_PATH, MNT_DETACH) == 0) {}
    chmod(BL_PATH, 0664);
    write_sysfs_str(GPU_MIN_FREQ, "384000000\n");
    set_standby_cpu_power_save(0);
    ensure_dpu_ddr_bandwidth();

    int bl_real_fd = open(BL_PATH, O_RDWR);
    if (bl_real_fd < 0) {
        log_msg("FATAL: failed to open %s", BL_PATH);
        return 1;
    }

    int ufd = setup_uinput_keys();
    int utouch_fd = setup_uinput_touch();
    int touch_fd = -1;
    int pwr_fd   = -1;
    int gf_fd    = -1;

    while (touch_fd < 0) {
        touch_fd = find_input_by_name("chipone-tddi");
        if (touch_fd < 0) touch_fd = find_input_by_name("adaptive_ts");
        if (touch_fd < 0) sleep(1);
    }
    pwr_fd = find_input_by_name("gpio-keys");
    gf_fd  = find_input_by_name("gf-keys");

    int slot_active[10];
    memset(slot_active, 0, sizeof(slot_active));
    int cur_slot = 0;

    /* Clear any residual stuck MT slots on startup */
    release_active_mt_slots(touch_fd, slot_active, 1);

    int is_black_standby = 0;
    int saved_bl = get_real_backlight();
    if (saved_bl < 40) {
        saved_bl = 220;
        set_real_backlight(bl_real_fd, saved_bl);
    }
    set_dummy_backlight(saved_bl);
    int candidate_bl = saved_bl;
    long long candidate_bl_since_ms = now_ms();

    long long bl_zero_since_ms = 0;
    long long standby_enter_ms = 0;
    long long last_keepalive_ms = 0;
    long long last_wake_ms = 0;
    long long last_bw_check_ms = 0;

    /* Touch tracking state (Slot 0 primary tap tracking) */
    int cur_x = 0, cur_y = 0;
    int start_x = 0, start_y = 0;
    int touch_active = 0;
    int was_touch_active = 0;
    int start_recorded = 0;
    int max_move_x = 0, max_move_y = 0;
    long long down_ms = 0;

    long long prev_tap_ms = 0;
    int prev_tap_x = 0, prev_tap_y = 0;

    struct pollfd pfds[3];
    pfds[0].fd = touch_fd;
    pfds[0].events = POLLIN;
    pfds[1].fd = pwr_fd;
    pfds[1].events = (pwr_fd >= 0) ? POLLIN : 0;
    pfds[2].fd = gf_fd;
    pfds[2].events = (gf_fd >= 0) ? POLLIN : 0;

    struct input_event ev;

    while (1) {
        int ret = poll(pfds, 3, 120);
        long long t = now_ms();
        int bl = get_real_backlight();
        int dt2w_enabled = is_dt2w_setting_enabled();

        if ((bl > 0 || is_black_standby) && (t - last_bw_check_ms >= 400)) {
            ensure_dpu_ddr_bandwidth();
            last_bw_check_ms = t;
        }

        if (!is_black_standby) {
            if (bl > 0) {
                if (bl >= 40) {
                    if (bl > saved_bl) {
                        saved_bl = bl;
                        candidate_bl = bl;
                        candidate_bl_since_ms = t;
                    } else if (bl == candidate_bl) {
                        if (t - candidate_bl_since_ms >= 600) {
                            saved_bl = bl;
                        }
                    } else {
                        candidate_bl = bl;
                        candidate_bl_since_ms = t;
                    }
                }
                bl_zero_since_ms = 0;
            } else if (bl == 0 && dt2w_enabled) {
                if (bl_zero_since_ms == 0) {
                    bl_zero_since_ms = t;
                } else if (t - bl_zero_since_ms >= 350 && t - last_wake_ms >= 1000) {
                    enter_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                        slot_active, &is_black_standby, saved_bl,
                                        &standby_enter_ms, &last_keepalive_ms,
                                        "SYSTEM_SLEEP");
                    bl_zero_since_ms = 0;
                    touch_active = 0;
                    was_touch_active = 0;
                    prev_tap_ms = 0;
                }
            }
        } else {
            if (!dt2w_enabled) {
                exit_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                   slot_active, &is_black_standby,
                                   saved_bl, 1, "SETTING_DISABLED");
                continue;
            }
            if (bl > 0) {
                set_real_backlight(bl_real_fd, 0);
            }
            if (!touch_active) {
                if (is_dpms_off()) {
                    emit_wakeup(ufd);
                    usleep(120000);
                    set_real_backlight(bl_real_fd, 0);
                    ensure_dpu_ddr_bandwidth();
                    refresh_user_activity_via_uinput(utouch_fd);
                    last_keepalive_ms = now_ms();
                } else if (t - last_keepalive_ms >= 6000) {
                    ensure_dpu_ddr_bandwidth();
                    refresh_user_activity_via_uinput(utouch_fd);
                    last_keepalive_ms = t;
                }
            }
        }

        if (ret <= 0) continue;

        /* 1. Handle Touchscreen Events */
        if (pfds[0].revents & POLLIN) {
            while (read(touch_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                long long ev_t = now_ms();

                if (ev.type == EV_ABS && ev.code == ABS_MT_SLOT) {
                    if (ev.value >= 0 && ev.value < 10) {
                        cur_slot = ev.value;
                    }
                    continue;
                }
                if (ev.type == EV_ABS && ev.code == ABS_MT_TRACKING_ID) {
                    if (cur_slot >= 0 && cur_slot < 10) {
                        slot_active[cur_slot] = (ev.value >= 0) ? 1 : 0;
                    }
                }

                if (!dt2w_enabled && !is_black_standby) {
                    touch_active = 0;
                    was_touch_active = 0;
                    prev_tap_ms = 0;
                    continue;
                }

                if (is_black_standby && (ev_t - standby_enter_ms < 450)) {
                    touch_active = 0;
                    was_touch_active = 0;
                    prev_tap_ms = 0;
                    continue;
                }

                /* Only track primary finger (Slot 0) for double-tap coordinates */
                if (ev.type == EV_ABS && cur_slot == 0) {
                    if (ev.code == ABS_MT_POSITION_X) cur_x = ev.value;
                    else if (ev.code == ABS_MT_POSITION_Y) cur_y = ev.value;
                    else if (ev.code == ABS_MT_TRACKING_ID) {
                        if (ev.value >= 0 && !touch_active) {
                            touch_active = 1;
                            start_recorded = 0;
                            max_move_x = 0;
                            max_move_y = 0;
                            down_ms = ev_t;
                        } else if (ev.value == -1 && touch_active) {
                            touch_active = 0;
                        }
                    }
                } else if (ev.type == EV_KEY && ev.code == BTN_TOUCH) {
                    if (ev.value == 1 && !touch_active) {
                        touch_active = 1;
                        start_recorded = 0;
                        max_move_x = 0;
                        max_move_y = 0;
                        down_ms = ev_t;
                    } else if (ev.value == 0 && touch_active) {
                        touch_active = 0;
                    }
                } else if (ev.type == EV_SYN && ev.code == SYN_REPORT) {
                    if (touch_active) {
                        if (!start_recorded) {
                            start_x = cur_x;
                            start_y = cur_y;
                            start_recorded = 1;
                        } else {
                            int mdx = cur_x - start_x;
                            if (mdx < 0) mdx = -mdx;
                            int mdy = cur_y - start_y;
                            if (mdy < 0) mdy = -mdy;
                            if (mdx > max_move_x) max_move_x = mdx;
                            if (mdy > max_move_y) max_move_y = mdy;
                        }
                    }

                    if (was_touch_active && !touch_active) {
                        long long dur = ev_t - down_ms;
                        int tap_x = start_x;
                        int tap_y = start_y;

                        if (is_black_standby) {
                            if (dur >= 5 && dur <= 350 && max_move_x <= 70 && max_move_y <= 70) {
                                long long gap = down_ms - prev_tap_ms;
                                int dx = tap_x - prev_tap_x;
                                if (dx < 0) dx = -dx;
                                int dy = tap_y - prev_tap_y;
                                if (dy < 0) dy = -dy;

                                log_msg("STANDBY_TAP x=%d y=%d dur=%lld gap=%lld dx=%d dy=%d",
                                        tap_x, tap_y, dur, gap, dx, dy);

                                if (prev_tap_ms > 0 && gap >= 20 && gap <= 750 && dx <= 200 && dy <= 200) {
                                    prev_tap_ms = 0;
                                    last_wake_ms = now_ms();
                                    exit_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                                       slot_active, &is_black_standby,
                                                       saved_bl, 0, "DOUBLE_TAP");
                                    was_touch_active = 0;
                                    break;
                                } else {
                                    prev_tap_ms = down_ms;
                                    prev_tap_x = tap_x;
                                    prev_tap_y = tap_y;
                                }
                            } else {
                                prev_tap_ms = 0;
                            }
                        } else if (dt2w_enabled) {
                            if (dur >= 5 && dur <= 320 && max_move_x <= 55 && max_move_y <= 55 &&
                                tap_y >= 10 && tap_y <= 1480 && (ev_t - last_wake_ms > 450)) {
                                long long gap = down_ms - prev_tap_ms;
                                int dx = tap_x - prev_tap_x;
                                if (dx < 0) dx = -dx;
                                int dy = tap_y - prev_tap_y;
                                if (dy < 0) dy = -dy;

                                if (prev_tap_ms > 0 && gap >= 20 && gap <= 600 && dx <= 140 && dy <= 140) {
                                    prev_tap_ms = 0;
                                    int dt2s_mode = is_screen_ready_for_dt2s(tap_y);
                                    if (dt2s_mode == 1) {
                                        log_msg("LOCKSCREEN_DT2S x=%d y=%d dur=%lld gap=%lld",
                                                tap_x, tap_y, dur, gap);
                                        enter_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                                            slot_active, &is_black_standby, saved_bl,
                                                            &standby_enter_ms, &last_keepalive_ms,
                                                            "LOCKSCREEN_DOUBLE_TAP");
                                        was_touch_active = 0;
                                        break;
                                    } else if (dt2s_mode == 2) {
                                        log_msg("HOMESCREEN_DT2S x=%d y=%d dur=%lld gap=%lld",
                                                tap_x, tap_y, dur, gap);
                                        /* Lock the device via virtual power key, then enter Black Standby */
                                        emit_key(ufd, KEY_POWER, 1);
                                        usleep(15000);
                                        emit_key(ufd, KEY_POWER, 0);
                                        usleep(80000);
                                        enter_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                                            slot_active, &is_black_standby, saved_bl,
                                                            &standby_enter_ms, &last_keepalive_ms,
                                                            "HOMESCREEN_DOUBLE_TAP");
                                        was_touch_active = 0;
                                        break;
                                    } else {
                                        log_msg("AWAKE_DT_IGNORED (not on lockscreen/homescreen) x=%d y=%d",
                                                tap_x, tap_y);
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

        /* 2. Handle Physical Power / Volume Keys */
        if (pwr_fd >= 0 && (pfds[1].revents & POLLIN)) {
            while (read(pwr_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                if (!is_black_standby) continue;

                if (ev.type == EV_KEY) {
                    if (ev.code == KEY_POWER && ev.value == 1) {
                        last_wake_ms = now_ms();
                        exit_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                           slot_active, &is_black_standby,
                                           saved_bl, 2, "POWER_KEY");
                        break;
                    } else if (ev.code == KEY_VOLUMEUP || ev.code == KEY_VOLUMEDOWN) {
                        emit_key(ufd, ev.code, ev.value);
                    }
                }
            }
        }

        /* 3. Handle Fingerprint Sensor Keys */
        if (gf_fd >= 0 && (pfds[2].revents & POLLIN)) {
            while (read(gf_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                if (!is_black_standby) continue;
                if (ev.type == EV_KEY && ev.value == 1) {
                    last_wake_ms = now_ms();
                    exit_black_standby(bl_real_fd, ufd, utouch_fd, touch_fd, pwr_fd,
                                       slot_active, &is_black_standby,
                                       saved_bl, 0, "FINGERPRINT");
                    break;
                }
            }
        }
    }

    return 0;
}
