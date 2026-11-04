import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

REMOTE_SH = r'''#!/bin/bash
set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_inject"

umount $MNT 2>/dev/null || true
mkdir -p $MNT

echo "=== 1. PREPARE CLEANED NON-GO VENDOR BUILD.PROP ==="
python3 - << 'PY'
with open("/nvme0n1-disk/bg6_device/bg6_vendor_build.prop", "rb") as f:
    raw = f.read()
txt = raw.decode("utf-16", errors="ignore") if 0 in raw[:20] else raw.decode("utf-8", errors="ignore")
lines = []
for line in txt.splitlines():
    line = line.rstrip("\r\n")
    if line.startswith("ro.config.low_ram="):
        line = "ro.config.low_ram=false"
    line = line.replace("-TGo", "")
    lines.append(line)
if not any(l.startswith("ro.config.low_ram=") for l in lines):
    lines.append("ro.config.low_ram=false")
lines.append("persist.sys.phh.unisoc_color_transform_workaround=1")
lines.append("persist.vendor.hwc.display.modeid=0")
with open("/nvme0n1-disk/infinity_x/vendor_build_bg6.prop", "w", encoding="utf-8", newline="\n") as f:
    f.write("\n".join(lines) + "\n")
print("Generated clean /nvme0n1-disk/infinity_x/vendor_build_bg6.prop with ro.config.low_ram=false!")
PY

echo "=== 2. UPDATE & COMPILE NATIVE C DAEMON (bg6_perf_engine) WITH COLOR FIX & 4GB ZRAM ==="
cat << 'CEOF' > /nvme0n1-disk/infinity_x/bg6_perf_engine.c
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/system_properties.h>
#include <unistd.h>

static void write_node(const char* path, const char* val) {
    int fd = open(path, O_WRONLY | O_CLOEXEC);
    if (fd >= 0) {
        (void)write(fd, val, strlen(val));
        close(fd);
    }
}

static void setup_4gb_zram(void) {
    // Check if zram0 disksize is less than 4GB (4294967296); if uninitialized (0), set 4GB LZ4
    int fd = open("/sys/block/zram0/disksize", O_RDONLY | O_CLOEXEC);
    if (fd >= 0) {
        char buf[64] = {0};
        ssize_t n = read(fd, buf, sizeof(buf) - 1);
        close(fd);
        if (n > 0 && atoll(buf) == 0) {
            write_node("/sys/block/zram0/comp_algorithm", "lz4");
            write_node("/sys/block/zram0/disksize", "4294967296");
        }
    }
}

static void apply_silicon_tuning(void) {
    setup_4gb_zram();

    // 1. Unisoc T606 (ums9230 / qogirl6) CPU Cluster 0 (6x Cortex-A55 @ 614MHz - 1.82GHz)
    write_node("/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq", "614400");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1820000");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/down_rate_limit_us", "10000");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/freq_margin", "15");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us", "10000");

    // 2. Unisoc T606 (ums9230 / qogirl6) CPU Cluster 1 (2x Cortex-A75 @ 614MHz - 2.028GHz)
    write_node("/sys/devices/system/cpu/cpufreq/policy6/scaling_min_freq", "614400");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "2028000");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/down_rate_limit_us", "15000");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/freq_margin", "20");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/schedutil/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/schedutil/down_rate_limit_us", "15000");

    // 3. Unisoc Energy-Aware Scheduler (unisched) & WALT I/O Busy
    write_node("/proc/sys/unisched/sched_walt_io_is_busy", "1");
    write_node("/proc/sys/unisched/group_ctl/root/boost", "0");
    write_node("/proc/sys/unisched/group_ctl/top-app/boost", "25");
    write_node("/proc/sys/unisched/group_ctl/foreground/boost", "10");
    write_node("/proc/sys/unisched/group_ctl/system/boost", "5");
    write_node("/proc/sys/unisched/group_ctl/background/boost", "-10");
    write_node("/proc/sys/unisched/group_ctl/camera-daemon/boost", "15");

    // 4. UClamp & CPU Shares
    write_node("/dev/cpuctl/top-app/cpu.shares", "5120");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.min", "25");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.max", "100");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.latency_sensitive", "1");

    write_node("/dev/cpuctl/foreground/cpu.shares", "4196");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.min", "10");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.max", "100");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.latency_sensitive", "1");

    write_node("/dev/cpuctl/system/cpu.uclamp.min", "10");
    write_node("/dev/cpuctl/system/cpu.uclamp.max", "100");
    write_node("/dev/cpuctl/system/cpu.uclamp.latency_sensitive", "1");

    write_node("/dev/cpuctl/background/cpu.shares", "512");
    write_node("/dev/cpuctl/background/cpu.uclamp.min", "0");
    write_node("/dev/cpuctl/background/cpu.uclamp.max", "40");
    write_node("/dev/cpuctl/background/cpu.uclamp.latency_sensitive", "0");

    write_node("/dev/cpuctl/system-background/cpu.uclamp.min", "0");
    write_node("/dev/cpuctl/system-background/cpu.uclamp.max", "50");
    write_node("/dev/cpuctl/system-background/cpu.uclamp.latency_sensitive", "0");

    // 5. Asymmetric Cpuset Pinning (keep background off Cortex-A75 cpu6-7)
    write_node("/dev/cpuset/top-app/cpus", "0-7");
    write_node("/dev/cpuset/foreground/cpus", "0-7");
    write_node("/dev/cpuset/background/cpus", "0-3");
    write_node("/dev/cpuset/system-background/cpus", "0-5");
    write_node("/dev/cpuset/restricted/cpus", "0-3");

    // 6. ARM Mali-G57 MP1 (23100000.gpu) 60Hz Frame-Aligned Polling
    write_node("/sys/class/devfreq/23100000.gpu/polling_interval", "16");

    // 7. Kernel 5.15.149 MGLRU & ZRAM LZ4 VM Tuning
    write_node("/sys/kernel/mm/lru_gen/enabled", "7");
    write_node("/sys/kernel/mm/lru_gen/min_ttl_ms", "1000");
    write_node("/proc/sys/vm/page-cluster", "0");
    write_node("/proc/sys/vm/swappiness", "100");
    write_node("/proc/sys/vm/vfs_cache_pressure", "80");
    write_node("/proc/sys/vm/watermark_scale_factor", "30");
    write_node("/proc/sys/vm/dirty_ratio", "15");
    write_node("/proc/sys/vm/dirty_background_ratio", "5");
    write_node("/proc/sys/vm/compaction_proactiveness", "0");
    write_node("/proc/sys/kernel/sched_migration_cost_ns", "500000");

    // 8. Block I/O Queue Tuning
    const char* devs[] = {"mmcblk0", "sda", "sdb", "sdc", "dm-0", "dm-1", "dm-2", "dm-3", "dm-4", "dm-5"};
    char path[128];
    for (size_t i = 0; i < sizeof(devs)/sizeof(devs[0]); ++i) {
        snprintf(path, sizeof(path), "/sys/block/%s/queue/read_ahead_kb", devs[i]);
        write_node(path, "128");
        snprintf(path, sizeof(path), "/sys/block/%s/queue/nr_requests", devs[i]);
        write_node(path, "64");
        snprintf(path, sizeof(path), "/sys/block/%s/queue/iostats", devs[i]);
        write_node(path, "0");
        snprintf(path, sizeof(path), "/sys/block/%s/queue/add_random", devs[i]);
        write_node(path, "0");
    }
}

static void enforce_lte_and_display_guard(void) {
    __system_property_set("persist.vendor.hwc.display.modeid", "0");
    __system_property_set("persist.sys.phh.unisoc_color_transform_workaround", "1");
    __system_property_set("keystore.module_hash.sent", "true");

    write_node("/proc/sys/net/ipv6/conf/all/accept_ra", "0");
    write_node("/proc/sys/net/ipv6/conf/default/accept_ra", "0");
    const char* lte_ifaces[] = {"seth_lte0", "seth_lte1", "seth_lte2", "seth_lte3"};
    char path[128];
    for (int i = 0; i < 4; ++i) {
        snprintf(path, sizeof(path), "/proc/sys/net/ipv6/conf/%s/accept_ra", lte_ifaces[i]);
        write_node(path, "0");
        snprintf(path, sizeof(path), "/sys/class/net/%s/tx_queue_len", lte_ifaces[i]);
        write_node(path, "1000");
    }
    write_node("/sys/class/net/wlan0/tx_queue_len", "1000");
    write_node("/proc/sys/net/ipv4/tcp_fastopen", "3");
    write_node("/proc/sys/net/ipv4/tcp_ecn", "0");
    write_node("/proc/sys/net/core/netdev_max_backlog", "5000");
    write_node("/proc/sys/net/core/rmem_max", "8388608");
    write_node("/proc/sys/net/core/wmem_max", "8388608");
}

int main(int argc, char** argv) {
    enforce_lte_and_display_guard();
    apply_silicon_tuning();

    if (argc > 1 && strcmp(argv[1], "--boot") == 0) {
        return 0;
    }

    int tick = 0;
    while (1) {
        sleep(15);
        enforce_lte_and_display_guard();
        if (++tick >= 4) {
            apply_silicon_tuning();
            tick = 0;
        }
    }
    return 0;
}
CEOF

CLANG="/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r498229b/bin/clang"
STRIP="/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r498229b/bin/llvm-strip"
SYSROOT="/nvme0n1-disk/shunno_os/out/soong/ndk/sysroot"
CRTBEGIN="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/crtbegin_dynamic/android_arm64_armv8-a"
CRTEND="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/crtend_android/android_arm64_armv8-a"
SYSLIB="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/lib64"
BIONIC_LIB="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/libc/android_arm64_armv8-a_shared_current/0e7aadb4ccf134e3003f27a606ef3a68"

$CLANG --target=aarch64-linux-android34 --sysroot=$SYSROOT \
    -B$CRTBEGIN -B$CRTEND -L$BIONIC_LIB -L$SYSLIB \
    -O3 -mcpu=cortex-a75 -flto=thin -fPIE -pie \
    -Wall -Wextra -Werror \
    /nvme0n1-disk/infinity_x/bg6_perf_engine.c \
    -o /nvme0n1-disk/infinity_x/bg6_perf_engine
$STRIP --strip-all /nvme0n1-disk/infinity_x/bg6_perf_engine

echo "=== 3. MOUNT IMAGE IN-PLACE (KEEPING EXACT BLOCK COUNT 819427) ==="
avbtool erase_footer --image $IMG 2>/dev/null || true
mount -o loop,rw $IMG $MNT

cp /nvme0n1-disk/infinity_x/bg6_perf_engine $MNT/system/bin/bg6_perf_engine
chown 0:2000 $MNT/system/bin/bg6_perf_engine
chmod 0755 $MNT/system/bin/bg6_perf_engine

cp /nvme0n1-disk/infinity_x/vendor_build_bg6.prop $MNT/system/etc/vendor_build_bg6.prop
chown 0:0 $MNT/system/etc/vendor_build_bg6.prop
chmod 0644 $MNT/system/etc/vendor_build_bg6.prop

cat << 'XMLEOF' > $MNT/system/etc/permissions/android.hardware.ram.normal.xml
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <feature name="android.hardware.ram.normal" />
</permissions>
XMLEOF
chown 0:0 $MNT/system/etc/permissions/android.hardware.ram.normal.xml
chmod 0644 $MNT/system/etc/permissions/android.hardware.ram.normal.xml

cp $MNT/system/etc/permissions/android.hardware.ram.normal.xml $MNT/system/product/etc/permissions/android.hardware.ram.normal.xml
chown 0:0 $MNT/system/product/etc/permissions/android.hardware.ram.normal.xml
chmod 0644 $MNT/system/product/etc/permissions/android.hardware.ram.normal.xml

# Remove any ram.low xml if present anywhere in system/product/system_ext
rm -f $MNT/system/etc/permissions/*ram.low* $MNT/system/product/etc/permissions/*ram.low* $MNT/system/system_ext/etc/permissions/*ram.low* 2>/dev/null || true

# Inject vendor overwrite and resetprop_phh into rw-system.sh
python3 - << 'PY'
rw_path = "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/rw-system.sh"
with open(rw_path, "r") as f:
    rw = f.read()

block = """# === TECNO-BG6 PERMANENT NON-GO & VENDOR OVERWRITE ===
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
resetprop_phh persist.vendor.hwc.display.modeid 0
resetprop_phh ro.vendor.build.display.id BG6-F069-OP-V2387-250722
if [ -f /system/etc/vendor_build_bg6.prop ]; then
    mount -o bind /system/etc/vendor_build_bg6.prop /vendor/build.prop 2>/dev/null || true
fi
for lowxml in /vendor/etc/permissions/android.hardware.ram.low.xml /odm/etc/permissions/android.hardware.ram.low.xml; do
    if [ -f "$lowxml" ]; then
        mount -o bind /system/etc/permissions/android.hardware.ram.normal.xml "$lowxml" 2>/dev/null || true
    fi
done
# === END TECNO-BG6 OVERWRITE ===
"""

if "# === TECNO-BG6 PERMANENT NON-GO" in rw:
    s = rw.index("# === TECNO-BG6 PERMANENT NON-GO")
    e = rw.index("# === END TECNO-BG6 OVERWRITE ===\n") + len("# === END TECNO-BG6 OVERWRITE ===\n")
    rw = rw[:s] + block + rw[e:]
else:
    rw = rw.replace("#!/system/bin/sh\n", "#!/system/bin/sh\n" + block, 1)

with open(rw_path, "w") as f:
    f.write(rw)
print("Injected Non-Go vendor overwrite into rw-system.sh!")
PY
chown 0:2000 $MNT/system/bin/rw-system.sh
chmod 0755 $MNT/system/bin/rw-system.sh

# Update init.bg6.rc so vendor/build.prop is bind-mounted at early-init BEFORE PropertyLoadBootDefaults!
cat << 'RCEOF' > $MNT/system/etc/init/init.bg6.rc
# TECNO SPARK Go 2024 (TECNO-BG6 / Unisoc T606 ums9230)
# Project Infinity X v3.12 (Android 16 QPR2) Non-Go & Silicon RC

on early-init
    mount none /system/etc/vendor_build_bg6.prop /vendor/build.prop bind
    mount none /system/etc/permissions/android.hardware.ram.normal.xml /vendor/etc/permissions/android.hardware.ram.low.xml bind
    mount none /system/etc/permissions/android.hardware.ram.normal.xml /odm/etc/permissions/android.hardware.ram.low.xml bind
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true

on init
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true

on post-fs-data
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true
    exec - root root -- /system/bin/bg6_perf_engine --boot

on boot
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    exec - root root -- /system/bin/bg6_perf_engine --boot

on property:sys.boot_completed=1
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    start bg6_perf_engine
    start bg6_tune_boot

service bg6_perf_engine /system/bin/bg6_perf_engine --daemon
    class late_start
    user root
    group root system
    seclabel u:r:phhsu_daemon:s0

service bg6_tune_boot /system/bin/sh /system/bin/bg6-perf-tune.sh
    class late_start
    user root
    group root system
    oneshot
    disabled
    seclabel u:r:phhsu_daemon:s0
RCEOF
chown 0:0 $MNT/system/etc/init/init.bg6.rc
chmod 0644 $MNT/system/etc/init/init.bg6.rc

# Ensure build.prop, product/etc/build.prop, system_ext/etc/build.prop all enforce ro.config.low_ram=false
python3 - << 'PY'
props_to_set = [
    ("ro.config.low_ram", "false"),
    ("ro.com.google.acsa", "true"),
    ("ro.opa.eligible_device", "true"),
    ("persist.sys.phh.unisoc_color_transform_workaround", "1"),
    ("persist.vendor.hwc.display.modeid", "0"),
    ("ro.adb.secure", "0"),
    ("persist.sys.usb.config", "mtp,adb"),
]
for rel in ["system/build.prop", "system/product/etc/build.prop", "system/system_ext/etc/build.prop"]:
    p = "/nvme0n1-disk/infinity_x/mnt_inject/" + rel
    with open(p, "r") as f:
        lines = f.read().splitlines()
    out = []
    seen = set()
    for l in lines:
        k = l.split("=", 1)[0] if "=" in l and not l.startswith("#") else None
        if k in dict(props_to_set):
            out.append(f"{k}={dict(props_to_set)[k]}")
            seen.add(k)
        else:
            out.append(l)
    for k, v in props_to_set:
        if k not in seen:
            out.append(f"{k}={v}")
    with open(p, "w") as f:
        f.write("\n".join(out) + "\n")
print("Updated system, product, and system_ext build.prop files!")
PY

python3 - << 'PY'
import os
targets = {
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/bg6_perf_engine": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/rw-system.sh": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/etc/vendor_build_bg6.prop": "u:object_r:vendor_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/etc/permissions/android.hardware.ram.normal.xml": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/product/etc/permissions/android.hardware.ram.normal.xml": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/etc/init/init.bg6.rc": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/build.prop": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/product/etc/build.prop": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/system_ext/etc/build.prop": "u:object_r:system_file:s0",
}
for p, ctx in targets.items():
    os.setxattr(p, "security.selinux", ctx.encode("ascii") + b"\x00", follow_symlinks=False)
print("Applied SELinux xattrs to all modified files!")
PY

sync
umount $MNT

BLOCKS=$(dumpe2fs -h $IMG 2>/dev/null | awk -F: '/Block count:/ {gsub(/ /,"",$2); print $2}')
FS_BYTES=$(( BLOCKS * 4096 ))
PART_BYTES=$(( FS_BYTES + 67108864 ))
truncate -s $FS_BYTES $IMG
e2fsck -fy $IMG || true

avbtool add_hashtree_footer \
    --image $IMG \
    --partition_name system \
    --partition_size $PART_BYTES \
    --hash_algorithm sha256 \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048

chown administrator:administrator $IMG
ls -lh $IMG
md5sum $IMG
'''

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

sftp = client.open_sftp()
with sftp.open("/nvme0n1-disk/infinity_x/patch_no_go.sh", "w") as f:
    f.write(REMOTE_SH)
sftp.close()

cmd = 'echo "${BG6_SERVER_PASS}" | sudo -S bash /nvme0n1-disk/infinity_x/patch_no_go.sh'
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
err = stderr.read().decode("utf-8", errors="ignore")
if err:
    print("STDERR:", err)
client.close()
