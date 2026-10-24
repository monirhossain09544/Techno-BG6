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
#include <linux/input.h>
#include <linux/uinput.h>

#define BL_PATH       "/sys/class/backlight/sprd_backlight/brightness"
#define DPMS_PATH     "/sys/class/drm/card0-DSI-1/dpms"
#define ESD_PATH      "/sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/esd_check_enable"
#define SETTINGS_PATH "/data/system/users/0/settings_system.xml"
#define LOG_PATH      "/data/local/tmp/dt2w.log"

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

/*
 * Disable periodic MIPI DSI ESD register reads on ICNL9916 video-mode panel
 * which otherwise stall the DSI lane every 2000ms and cause "[drm] Warning: dpu underflow!"
 */
static void disable_esd_check(void) {
    int fd = open(ESD_PATH, O_WRONLY);
    if (fd >= 0) {
        if (write(fd, "0\n", 2) < 0) {}
        close(fd);
    }
}

/*
 * Checks the native HiOS Settings toggle:
 * Settings -> Special Function -> Actions and Gestures -> Tapping Wake
 * (`os_action_tapping_wake` in /data/system/users/0/settings_system.xml)
 */
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

static int get_backlight(void) {
    int fd = open(BL_PATH, O_RDONLY);
    if (fd < 0) return -1;
    char buf[32];
    ssize_t n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return -1;
    buf[n] = '\0';
    return atoi(buf);
}

static void set_backlight(int val) {
    int fd = open(BL_PATH, O_WRONLY);
    if (fd < 0) return;
    char buf[32];
    int len = snprintf(buf, sizeof(buf), "%d\n", val);
    if (write(fd, buf, len) < 0) {}
    close(fd);
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
 * Fast (~1ms) exact Lockscreen & Bouncer check via SystemUIService dumpables.
 * Returns 1 ONLY when:
 *   - Lockscreen is currently visible (keygrd_visible or mShowing: true)
 *   - Lockscreen is not occluded by camera/call (mOccluded: false)
 *   - PIN/Pattern Bouncer is NOT open (bouncerShowing: false and no bouncer_visible)
 *   - Quick Settings is NOT expanded (qsExpanded: false)
 */
static int is_lockscreen_ready_for_dt2s(void) {
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

    return (keyguard_showing && !occluded && !bouncer_showing && !qs_expanded);
}

static int setup_uinput(void) {
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
 * Injects an imperceptible 8ms horizontal micro-glide (dx=28px, dy=0) at
 * (680, 500) -> (708, 500) with ABS_MT_TRACKING_ID=99 on /dev/input/event2.
 *
 * Why a 28px horizontal micro-glide instead of a stationary tap:
 * 1. Resets PowerManagerService lastUserActivityTime to 0ms ago (userActivitySummary=0x1).
 * 2. Because dx=28px > touchSlop (8px), SystemUI NotificationPanelViewController
 *    does NOT treat it as an empty-space tap (`onEmptySpaceClick` / `sysui_lockscreen_gesture: [3,0,0]`),
 *    preventing any Lockscreen bounce animation or unnecessary GPU wakeups.
 * 3. Because dy=0, it never vertically scrolls the Lockscreen or Notification Shade.
 */
static void refresh_user_activity_via_touch(int touch_fd, int keep_grabbed) {
    if (touch_fd < 0) return;
    static int alt = 0;
    alt ^= 1;
    int py = alt ? 500 : 501;

    if (keep_grabbed) {
        ioctl(touch_fd, EVIOCGRAB, 0);
    }

    write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID, 99);
    write_input_ev(touch_fd, EV_ABS, ABS_MT_POSITION_X, 680);
    write_input_ev(touch_fd, EV_ABS, ABS_MT_POSITION_Y, py);
    write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 1);
    write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);

    usleep(4000);

    write_input_ev(touch_fd, EV_ABS, ABS_MT_POSITION_X, 708);
    write_input_ev(touch_fd, EV_ABS, ABS_MT_POSITION_Y, py);
    write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);

    usleep(4000);

    write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID, -1);
    write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
    write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);

    if (keep_grabbed) {
        ioctl(touch_fd, EVIOCGRAB, 1);
    }
}

static void release_touch_slot(int touch_fd) {
    if (touch_fd < 0) return;
    write_input_ev(touch_fd, EV_ABS, ABS_MT_TRACKING_ID, -1);
    write_input_ev(touch_fd, EV_KEY, BTN_TOUCH, 0);
    write_input_ev(touch_fd, EV_SYN, SYN_REPORT, 0);
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

static void enter_black_standby(int ufd, int touch_fd, int pwr_fd,
                                int *is_black_standby,
                                long long *standby_enter_ms,
                                long long *last_keepalive_ms,
                                const char *reason) {
    disable_esd_check();

    /*
     * 1. Clamp backlight to 0 and lock permissions to 0444 BEFORE waking DPMS
     *    so Android's light HAL cannot illuminate the panel.
     */
    chmod(BL_PATH, 0664);
    set_backlight(0);
    chmod(BL_PATH, 0444);

    /*
     * 2. Release any active touch in Android InputReader, then grab touch_fd
     *    and pwr_fd so standby touches/power presses are handled cleanly.
     */
    release_touch_slot(touch_fd);
    if (touch_fd >= 0) ioctl(touch_fd, EVIOCGRAB, 1);
    if (pwr_fd >= 0)   ioctl(pwr_fd, EVIOCGRAB, 1);

    /*
     * 3. If the panel had already entered DRM DPMS Off, wake it silently
     *    while backlight is locked at 0 so the ICNL9916 TDDI chip stays active,
     *    and wait 120ms for sprd_dsi_encoder_enable() to finish before poking userActivity.
     */
    if (is_dpms_off()) {
        emit_wakeup(ufd);
        usleep(120000);
        chmod(BL_PATH, 0664);
        set_backlight(0);
        chmod(BL_PATH, 0444);
        disable_esd_check();
    }

    /*
     * 4. Refresh PowerManagerService userActivityTime via an 8ms micro-glide
     *    so DisplayPowerController never attempts to sleep or blink the panel.
     */
    refresh_user_activity_via_touch(touch_fd, 1);

    long long t = now_ms();
    *is_black_standby = 1;
    *standby_enter_ms = t;
    *last_keepalive_ms = t;
    log_msg("ENTER_BLACK_STANDBY reason=%s", reason);
}

static void exit_black_standby(int ufd, int touch_fd, int pwr_fd,
                               int *is_black_standby, int saved_bl,
                               int mode, const char *reason) {
    /*
     * mode:
     *   0 = Wake screen (Double-Tap to Wake or Fingerprint)
     *   1 = Disable DT2W setting while in standby
     *   2 = Power button pressed while in standby -> wake cleanly
     */
    if (touch_fd >= 0) ioctl(touch_fd, EVIOCGRAB, 0);
    if (pwr_fd >= 0)   ioctl(pwr_fd, EVIOCGRAB, 0);
    *is_black_standby = 0;
    disable_esd_check();

    if (mode == 0 || mode == 2) {
        int restore = (saved_bl >= 40) ? saved_bl : 220;
        chmod(BL_PATH, 0664);
        set_backlight(restore);
        emit_wakeup(ufd);
        refresh_user_activity_via_touch(touch_fd, 0);
        log_msg("EXIT_BLACK_STANDBY reason=%s restore_bl=%d", reason, restore);
    } else {
        chmod(BL_PATH, 0664);
        set_backlight(0);
        log_msg("EXIT_BLACK_STANDBY reason=%s bl=0", reason);
    }
}

int main(void) {
    unlink(LOG_PATH);
    log_msg("dt2w_daemon v9 starting (Zero-Underflow + Zero-Blink + Precision DT2S)");

    chmod(BL_PATH, 0664);
    disable_esd_check();

    int ufd = setup_uinput();
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

    int is_black_standby = 0;
    int saved_bl = get_backlight();
    if (saved_bl < 40) {
        saved_bl = 220;
        set_backlight(saved_bl);
    }
    int candidate_bl = saved_bl;
    long long candidate_bl_since_ms = now_ms();

    long long bl_zero_since_ms = 0;
    long long standby_enter_ms = 0;
    long long last_keepalive_ms = 0;
    long long last_wake_ms = 0;

    /* Touch tracking state */
    int cur_x = 0, cur_y = 0;
    int start_x = 0, start_y = 0;
    int touch_active = 0;
    int was_touch_active = 0;
    int start_recorded = 0;
    int max_move_x = 0, max_move_y = 0;
    long long down_ms = 0;
    int ignoring_synthetic = 0;

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
        int bl = get_backlight();
        int dt2w_enabled = is_dt2w_setting_enabled();

        if (!is_black_standby) {
            if (bl > 0) {
                /*
                 * Only save backlight when it has been stable for >= 600ms
                 * (or increased), so Android's fade-to-sleep ramp never
                 * overwrites saved_bl with a dim intermediate value.
                 */
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
                /* Wait 350ms after screen turns off so Android finishes sleep transition */
                if (bl_zero_since_ms == 0) {
                    bl_zero_since_ms = t;
                } else if (t - bl_zero_since_ms >= 350 && t - last_wake_ms >= 1000) {
                    enter_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
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
                exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
                                   saved_bl, 1, "SETTING_DISABLED");
                continue;
            }
            /*
             * Keep MIPI DSI clock running continuously without ever letting
             * Android's 10s Lockscreen userActivityTimeout expire.
             * Only inject keepalive when user's finger is not currently touching.
             */
            if (!touch_active) {
                if (is_dpms_off()) {
                    chmod(BL_PATH, 0444);
                    emit_wakeup(ufd);
                    usleep(120000);
                    disable_esd_check();
                    refresh_user_activity_via_touch(touch_fd, 1);
                    last_keepalive_ms = now_ms();
                } else if (t - last_keepalive_ms >= 6000) {
                    chmod(BL_PATH, 0444);
                    refresh_user_activity_via_touch(touch_fd, 1);
                    last_keepalive_ms = t;
                }
            }
        }

        if (ret <= 0) continue;

        /* 1. Handle Touchscreen Events */
        if (pfds[0].revents & POLLIN) {
            while (read(touch_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                long long ev_t = now_ms();

                /*
                 * Filter out the entire echoed synthetic user-activity touch sequence
                 * (starts at ABS_MT_TRACKING_ID == 99, ends at SYN_REPORT after BTN_TOUCH == 0)
                 */
                if (ev.type == EV_ABS && ev.code == ABS_MT_TRACKING_ID && ev.value == 99) {
                    ignoring_synthetic = 1;
                    continue;
                }
                if (ignoring_synthetic > 0) {
                    if (ev.type == EV_KEY && ev.code == BTN_TOUCH && ev.value == 0) {
                        ignoring_synthetic = 2;
                    } else if (ignoring_synthetic == 2 && ev.type == EV_SYN && ev.code == SYN_REPORT) {
                        ignoring_synthetic = 0;
                    }
                    continue;
                }

                if (!dt2w_enabled && !is_black_standby) {
                    touch_active = 0;
                    was_touch_active = 0;
                    prev_tap_ms = 0;
                    continue;
                }

                /* Ignore residual buffered touches for 450ms right after entering Black Standby */
                if (is_black_standby && (ev_t - standby_enter_ms < 450)) {
                    touch_active = 0;
                    was_touch_active = 0;
                    prev_tap_ms = 0;
                    continue;
                }

                if (ev.type == EV_ABS) {
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

                    /* Evaluate tap when finger lifts up (was_touch_active == 1 && touch_active == 0) */
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
                                    exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
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
                            /*
                             * Awake tap detection for Lockscreen Double-Tap to Sleep:
                             * Allow natural taps anywhere on the Lockscreen (y = 80..1480)
                             * with dur <= 320ms and movement <= 55px.
                             */
                            if (dur >= 5 && dur <= 320 && max_move_x <= 55 && max_move_y <= 55 &&
                                tap_y >= 80 && tap_y <= 1480 && (ev_t - last_wake_ms > 450)) {
                                long long gap = down_ms - prev_tap_ms;
                                int dx = tap_x - prev_tap_x;
                                if (dx < 0) dx = -dx;
                                int dy = tap_y - prev_tap_y;
                                if (dy < 0) dy = -dy;

                                if (prev_tap_ms > 0 && gap >= 20 && gap <= 600 && dx <= 140 && dy <= 140) {
                                    prev_tap_ms = 0;
                                    if (is_lockscreen_ready_for_dt2s()) {
                                        log_msg("LOCKSCREEN_DT2S x=%d y=%d dur=%lld gap=%lld",
                                                tap_x, tap_y, dur, gap);
                                        enter_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
                                                            &standby_enter_ms, &last_keepalive_ms,
                                                            "LOCKSCREEN_DOUBLE_TAP");
                                        was_touch_active = 0;
                                        break;
                                    } else {
                                        log_msg("AWAKE_DT_IGNORED (not on clean lockscreen) x=%d y=%d",
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
                        exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
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
                    exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
                                       saved_bl, 0, "FINGERPRINT");
                    break;
                }
            }
        }
    }

    return 0;
}
