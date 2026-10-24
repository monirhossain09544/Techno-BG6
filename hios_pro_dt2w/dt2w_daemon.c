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

#define BL_PATH   "/sys/class/backlight/sprd_backlight/brightness"
#define DPMS_PATH "/sys/class/drm/card0-DSI-1/dpms"
#define LOG_PATH  "/data/local/tmp/dt2w.log"

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

static int is_lockscreen_showing(void) {
    FILE *fp = popen("/system/bin/dumpsys window policy", "r");
    if (!fp) return 0;
    char line[256];
    int showing = 0;
    int not_occluded = 0;
    while (fgets(line, sizeof(line), fp) != NULL) {
        if (strstr(line, "showing=true") != NULL) showing = 1;
        else if (strstr(line, "showing=false") != NULL) showing = 0;
        if (strstr(line, "showingAndNotOccluded=true") != NULL) not_occluded = 1;
    }
    pclose(fp);
    return (showing && not_occluded);
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
    emit_key(ufd, KEY_WAKEUP, 0);
}

static int find_input_by_name(const char *target_substr) {
    char path[64];
    char name[128];
    for (int i = 0; i < 12; i++) {
        snprintf(path, sizeof(path), "/dev/input/event%d", i);
        int fd = open(path, O_RDONLY | O_NONBLOCK);
        if (fd < 0) continue;
        memset(name, 0, sizeof(name));
        if (ioctl(fd, EVIOCGNAME(sizeof(name) - 1), name) >= 0) {
            if (strstr(name, target_substr) != NULL) {
                log_msg("Matched input %s -> %s", target_substr, path);
                return fd;
            }
        }
        close(fd);
    }
    return -1;
}

static void drain_input(int fd) {
    if (fd < 0) return;
    struct input_event ev;
    while (read(fd, &ev, sizeof(ev)) == sizeof(ev)) {}
}

static void wait_touch_release(int touch_fd, int max_ms) {
    long long start = now_ms();
    struct pollfd pfd = { .fd = touch_fd, .events = POLLIN };
    struct input_event ev;
    while (now_ms() - start < max_ms) {
        int r = poll(&pfd, 1, 15);
        if (r > 0 && (pfd.revents & POLLIN)) {
            while (read(touch_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                if ((ev.type == EV_KEY && ev.code == BTN_TOUCH && ev.value == 0) ||
                    (ev.type == EV_ABS && ev.code == ABS_MT_TRACKING_ID && ev.value == -1)) {
                    return;
                }
            }
        }
    }
}

static void wait_power_release(int pwr_fd, int max_ms) {
    long long start = now_ms();
    struct pollfd pfd = { .fd = pwr_fd, .events = POLLIN };
    struct input_event ev;
    while (now_ms() - start < max_ms) {
        int r = poll(&pfd, 1, 15);
        if (r > 0 && (pfd.revents & POLLIN)) {
            while (read(pwr_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                if (ev.type == EV_KEY && ev.code == KEY_POWER && ev.value == 0) {
                    return;
                }
            }
        }
    }
}

static void enter_black_standby(int ufd, int touch_fd, int pwr_fd, int *is_black_standby,
                                long long *standby_enter_ms, long long *last_keepalive_ms,
                                const char *reason) {
    if (*is_black_standby) return;

    /* Lock backlight at 0 before waking DSI so screen stays 100% pitch black */
    chmod(BL_PATH, 0664);
    set_backlight(0);
    chmod(BL_PATH, 0444);

    if (touch_fd >= 0) ioctl(touch_fd, EVIOCGRAB, 1);
    if (pwr_fd >= 0)   ioctl(pwr_fd, EVIOCGRAB, 1);

    emit_wakeup(ufd);
    *is_black_standby = 1;
    *standby_enter_ms = now_ms();
    *last_keepalive_ms = *standby_enter_ms;
    log_msg("ENTER_BLACK_STANDBY reason=%s", reason);
}

static void exit_black_standby(int ufd, int touch_fd, int pwr_fd, int *is_black_standby,
                               int saved_bl, int wait_mode, const char *reason) {
    if (!*is_black_standby) return;

    /* Restore backlight immediately so screen turns on in <5ms */
    chmod(BL_PATH, 0664);
    if (saved_bl < 20) saved_bl = 120;
    set_backlight(saved_bl);
    emit_wakeup(ufd);

    if (wait_mode == 1 && touch_fd >= 0) {
        wait_touch_release(touch_fd, 180);
    } else if (wait_mode == 2 && pwr_fd >= 0) {
        wait_power_release(pwr_fd, 250);
    }

    drain_input(touch_fd);
    if (touch_fd >= 0) ioctl(touch_fd, EVIOCGRAB, 0);
    if (pwr_fd >= 0)   ioctl(pwr_fd, EVIOCGRAB, 0);

    *is_black_standby = 0;
    log_msg("EXIT_BLACK_STANDBY reason=%s restored_bl=%d", reason, saved_bl);
}

int main(void) {
    unlink(LOG_PATH);
    log_msg("dt2w_daemon v4 starting");

    /* Ensure backlight is writable on daemon startup */
    chmod(BL_PATH, 0664);

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
    if (saved_bl < 20) {
        saved_bl = 150;
        set_backlight(saved_bl);
    }

    long long bl_zero_since_ms = 0;
    long long standby_enter_ms = 0;
    long long last_keepalive_ms = 0;
    long long last_wake_ms = 0;

    /* Touch tracking state */
    int cur_x = 0, cur_y = 0;
    int start_x = 0, start_y = 0;
    int touch_active = 0;
    int start_recorded = 0;
    int moved_too_much = 0;
    long long down_ms = 0;
    long long cur_down_event_ms = 0;

    long long prev_tap_ms = 0;
    int prev_tap_x = 0, prev_tap_y = 0;
    long long last_swipe_ms = 0;

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

        if (!is_black_standby) {
            if (bl > 0) {
                if (bl >= 20) saved_bl = bl;
                bl_zero_since_ms = 0;
            } else if (bl == 0) {
                /* Wait 300ms after screen turns off so Android finishes sleep transition */
                if (bl_zero_since_ms == 0) {
                    bl_zero_since_ms = t;
                } else if (t - bl_zero_since_ms >= 300 && t - last_wake_ms >= 600) {
                    enter_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
                                        &standby_enter_ms, &last_keepalive_ms, "SYSTEM_SLEEP");
                    bl_zero_since_ms = 0;
                    touch_active = 0;
                    cur_down_event_ms = 0;
                    prev_tap_ms = 0;
                }
            }
        } else {
            /* Keep MIPI DSI clock running while backlight remains locked at 0 */
            if (is_dpms_off() || (t - last_keepalive_ms >= 4000)) {
                chmod(BL_PATH, 0444);
                emit_wakeup(ufd);
                last_keepalive_ms = t;
            }
        }

        if (ret <= 0) continue;

        /* 1. Handle Touchscreen Events (both in Black Standby and on Lockscreen) */
        if (pfds[0].revents & POLLIN) {
            while (read(touch_fd, &ev, sizeof(ev)) == sizeof(ev)) {
                long long ev_t = now_ms();

                /* Ignore residual buffered touches for 450ms right after entering Black Standby */
                if (is_black_standby && (ev_t - standby_enter_ms < 450)) {
                    touch_active = 0;
                    cur_down_event_ms = 0;
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
                            moved_too_much = 0;
                            down_ms = ev_t;
                            cur_down_event_ms = ev_t;
                        } else if (ev.value == -1 && touch_active) {
                            touch_active = 0;
                        }
                    }
                } else if (ev.type == EV_KEY && ev.code == BTN_TOUCH) {
                    if (ev.value == 1 && !touch_active) {
                        touch_active = 1;
                        start_recorded = 0;
                        moved_too_much = 0;
                        down_ms = ev_t;
                        cur_down_event_ms = ev_t;
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
                            if (mdx > 50 || mdy > 50) {
                                moved_too_much = 1;
                                last_swipe_ms = ev_t;
                            }
                        }
                    }

                    if (touch_active && cur_down_event_ms > 0) {
                        long long t_down = cur_down_event_ms;
                        int down_x = cur_x;
                        int down_y = cur_y;
                        cur_down_event_ms = 0;

                        long long gap = t_down - prev_tap_ms;
                        int dx = down_x - prev_tap_x;
                        if (dx < 0) dx = -dx;
                        int dy = down_y - prev_tap_y;
                        if (dy < 0) dy = -dy;

                        if (is_black_standby) {
                            log_msg("STANDBY_TAP x=%d y=%d gap=%lld dx=%d dy=%d", down_x, down_y, gap, dx, dy);
                            if (prev_tap_ms > 0 && gap >= 30 && gap <= 800 && dx <= 260 && dy <= 260) {
                                prev_tap_ms = 0;
                                touch_active = 0;
                                last_wake_ms = now_ms();
                                exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby, saved_bl, 1, "DOUBLE_TAP");
                                break;
                            } else {
                                prev_tap_ms = t_down;
                                prev_tap_x = down_x;
                                prev_tap_y = down_y;
                            }
                        } else {
                            /* Screen is ON: check for Lockscreen Double-Tap to Sleep */
                            if (!moved_too_much && prev_tap_ms > 0 &&
                                gap >= 35 && gap <= 500 && dx <= 150 && dy <= 150 &&
                                (t_down - last_swipe_ms > 2500 || down_y < 750) &&
                                (t_down - last_wake_ms > 600)) {
                                if (is_lockscreen_showing()) {
                                    log_msg("LOCKSCREEN_DT2S x=%d y=%d gap=%lld", down_x, down_y, gap);
                                    prev_tap_ms = 0;
                                    touch_active = 0;
                                    wait_touch_release(touch_fd, 200);
                                    enter_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby,
                                                        &standby_enter_ms, &last_keepalive_ms, "LOCKSCREEN_DOUBLE_TAP");
                                    break;
                                }
                                prev_tap_ms = 0;
                            } else if (!moved_too_much) {
                                prev_tap_ms = t_down;
                                prev_tap_x = down_x;
                                prev_tap_y = down_y;
                            } else {
                                prev_tap_ms = 0;
                            }
                        }
                    }

                    /* If finger lifted after moving too much (a swipe), invalidate prev_tap_ms */
                    if (!touch_active && moved_too_much) {
                        prev_tap_ms = 0;
                    }
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
                        exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby, saved_bl, 2, "POWER_KEY");
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
                    exit_black_standby(ufd, touch_fd, pwr_fd, &is_black_standby, saved_bl, 0, "FINGERPRINT");
                    break;
                }
            }
        }
    }

    return 0;
}
