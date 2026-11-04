import paramiko

GNSS_ENGINE_C = r'''#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mount.h>
#include <sys/stat.h>

extern int __system_property_get(const char *name, char *value);

static void replace_substr(char *str, const char *old_s, const char *new_s) {
    char buffer[8192];
    char *p;
    if (!(p = strstr(str, old_s))) return;
    size_t old_len = strlen(old_s);
    size_t new_len = strlen(new_s);
    while ((p = strstr(str, old_s)) != NULL) {
        size_t prefix_len = p - str;
        if (prefix_len + new_len + strlen(p + old_len) + 1 >= sizeof(buffer)) break;
        memcpy(buffer, str, prefix_len);
        memcpy(buffer + prefix_len, new_s, new_len);
        strcpy(buffer + prefix_len + new_len, p + old_len);
        strcpy(str, buffer);
    }
}

static void sanitize_kernel_cmdline(void) {
    FILE *fp = fopen("/proc/cmdline", "r");
    if (!fp) return;
    char cmdline[8192];
    memset(cmdline, 0, sizeof(cmdline));
    if (fgets(cmdline, sizeof(cmdline) - 1, fp) == NULL) {
        fclose(fp);
        return;
    }
    fclose(fp);

    replace_substr(cmdline, "androidboot.verifiedbootstate=orange", "androidboot.verifiedbootstate=green");
    replace_substr(cmdline, "androidboot.verifiedbootstate=yellow", "androidboot.verifiedbootstate=green");
    replace_substr(cmdline, "androidboot.vbmeta.device_state=unlocked", "androidboot.vbmeta.device_state=locked");
    replace_substr(cmdline, "androidboot.flash.locked=0", "androidboot.flash.locked=1");

    mkdir("/mnt/phh", 0755);
    const char *target = "/mnt/phh/cmdline_clean";
    int fd = open(target, O_WRONLY | O_CREAT | O_TRUNC, 0444);
    if (fd >= 0) {
        if (write(fd, cmdline, strlen(cmdline)) > 0) {}
        close(fd);
        chmod(target, 0444);
        mount(target, "/proc/cmdline", NULL, MS_BIND, NULL);
    }
}

int main(int argc, char **argv) {
    sanitize_kernel_cmdline();
    if (system("/system/bin/setprop persist.sys.override_mock_location true") < 0) {}

    if (argc > 1 && strcmp(argv[1], "--once") == 0) {
        return 0;
    }

    char coords[128];
    while (1) {
        int active = 0;
        if (access("/mnt/phh/kernel_gps.conf", F_OK) == 0) {
            active = 1;
        } else {
            memset(coords, 0, sizeof(coords));
            if (__system_property_get("persist.sys.kernel.gps.coords", coords) > 0) {
                if (coords[0] != '\0' && strcmp(coords, "0") != 0 && strcmp(coords, "off") != 0) {
                    active = 1;
                }
            }
        }
        if (active) {
            if (system("/system/bin/cmd location providers send-extra-command gps kernel_inject >/dev/null 2>&1") < 0) {}
        }
        sleep(1);
    }
    return 0;
}
'''

KERNEL_GPS_SH = r'''#!/system/bin/sh
# Native Kernel-Level Hardware GNSS Location Controller (TECNO-BG6)

ACTION="$1"
case "$ACTION" in
    set)
        LAT="$2"
        LON="$3"
        ALT="${4:-15.2}"
        ACC="${5:-3.4}"
        if [ -z "$LAT" ] || [ -z "$LON" ]; then
            echo "Usage: kernel-gps set <lat> <lon> [alt] [acc]"
            exit 1
        fi
        mkdir -p /mnt/phh
        echo "${LAT},${LON},${ALT},${ACC}" > /mnt/phh/kernel_gps.conf
        chmod 0644 /mnt/phh/kernel_gps.conf
        setprop persist.sys.override_mock_location true
        setprop persist.sys.kernel.gps.coords "${LAT},${LON},${ALT},${ACC}"
        cmd location providers send-extra-command gps kernel_inject >/dev/null 2>&1
        echo "[KERNEL-GNSS] Active hardware GNSS coordinates locked to: ${LAT}, ${LON} (alt=${ALT}m, acc=${ACC}m)"
        ;;
    off|stop|clear)
        rm -f /mnt/phh/kernel_gps.conf
        setprop persist.sys.kernel.gps.coords ""
        echo "[KERNEL-GNSS] Hardware coordinate override disabled (Mock locations remain stealth-masked)."
        ;;
    status|*)
        COORDS="$(getprop persist.sys.kernel.gps.coords)"
        STEALTH="$(getprop persist.sys.override_mock_location)"
        echo "=== TECNO-BG6 Native Kernel GNSS Engine ==="
        echo "Stealth Mock Masking : ${STEALTH:-true}"
        echo "Kernel GNSS Override : ${COORDS:-<disabled - using real GPS or stealth mock app>}"
        ;;
esac
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

sftp = c.open_sftp()
with sftp.file("/nvme0n1-disk/infinity_x/mock_work/gnss_kernel_engine.c", "w") as f:
    f.write(GNSS_ENGINE_C)
with sftp.file("/nvme0n1-disk/infinity_x/mock_work/kernel-gps", "w") as f:
    f.write(KERNEL_GPS_SH)
sftp.close()

cmd = """
set -e
cd /nvme0n1-disk/infinity_x/mock_work

CLANG="/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r498229b/bin/clang"
SYSROOT=$(find /nvme0n1-disk/shunno_os/prebuilts/ndk -name "sysroot" | sort | tail -n 1)
echo "Found NDK sysroot: $SYSROOT"

$CLANG --target=aarch64-linux-android34 --sysroot="$SYSROOT" -O2 -Wall gnss_kernel_engine.c -o gnss_kernel_engine
file gnss_kernel_engine
ls -lh gnss_kernel_engine kernel-gps framework.jar services.jar
echo "GNSS_KERNEL_ENGINE_COMPILED_OK"
"""

stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
