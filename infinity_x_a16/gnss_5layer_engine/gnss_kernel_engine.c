#define _GNU_SOURCE
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
