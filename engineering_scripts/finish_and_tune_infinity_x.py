import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

script = r'''#!/bin/bash
set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
cd /nvme0n1-disk/infinity_x

AVBTOOL="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool"
KEY="/nvme0n1-disk/shunno_os/build/make/target/product/gsi/testkey_rsa2048.pem"

set_selinux() {
    local ctx="$1"
    shift
    python3 - "$ctx" "$@" << 'PYEOF'
import sys, os
ctx = sys.argv[1].encode('utf-8') + b'\x00'
for target in sys.argv[2:]:
    os.setxattr(target, "security.selinux", ctx, follow_symlinks=False)
PYEOF
}

echo "=== 1. MOUNT IMAGE TO INJECT UMS9230 (T606) 2026 HARDWARE TUNING ==="
umount mnt_rw 2>/dev/null || true
$AVBTOOL erase_footer --image infinity_x_bg6_ready.img 2>/dev/null || true
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true
resize2fs -f infinity_x_bg6_ready.img 3500M >/dev/null 2>&1
mkdir -p mnt_rw
mount -o rw,loop infinity_x_bg6_ready.img mnt_rw

cat > mnt_rw/system/etc/init/init.bg6.rc << 'RCEOF'
# TECNO SPARK Go 2024 (TECNO-BG6) | Unisoc T606 (ums9230 / qogirl6)
# Precision Hardware & SoC Optimization Profile (6x Cortex-A55 + 2x Cortex-A75, Mali-G57)

on early-init
    setprop persist.vendor.hwc.display.modeid 0

on init
    setprop persist.vendor.hwc.display.modeid 0

on post-fs
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.fuse.bpf.override false

on boot
    setprop persist.vendor.hwc.display.modeid 0

on property:sys.boot_completed=1
    setprop persist.vendor.hwc.display.modeid 0

    # 1. Bangladesh 4G LTE IPv4 Stability (Disable broken IPv6 RA on Unisoc seth_lte0..3)
    write /proc/sys/net/ipv6/conf/seth_lte0/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte1/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte2/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte3/accept_ra 0

    # 2. Unisoc T606 (ums9230) DynamIQ CPU Scheduler (schedutil) Precision Tuning
    # Little Cluster: 6x Cortex-A55 (policy0)
    write /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us 500
    write /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us 20000
    # Big Cluster: 2x Cortex-A75 (policy6)
    write /sys/devices/system/cpu/cpufreq/policy6/schedutil/up_rate_limit_us 500
    write /sys/devices/system/cpu/cpufreq/policy6/schedutil/down_rate_limit_us 15000

    # 3. UClamp / Task Placement Tuning for Interactive Smoothness
    write /dev/cpuctl/top-app/cpu.uclamp.min 15
    write /dev/cpuctl/top-app/cpu.uclamp.latency_sensitive 1
    write /dev/cpuctl/foreground/cpu.uclamp.max 85
    write /dev/cpuctl/background/cpu.uclamp.max 40
    write /dev/cpuctl/system-background/cpu.uclamp.max 50

    # 4. Memory, ZRAM (LZ4), & VM Subsystem Tuning for Kernel 5.15.149
    write /proc/sys/vm/page-cluster 0
    write /proc/sys/vm/swappiness 100
    write /proc/sys/vm/vfs_cache_pressure 80
    write /proc/sys/vm/dirty_ratio 15
    write /proc/sys/vm/dirty_background_ratio 5
    write /proc/sys/vm/watermark_scale_factor 30

    # 5. Storage Block Queue I/O Latency Tuning
    write /sys/block/mmcblk0/queue/read_ahead_kb 128
    write /sys/block/mmcblk0/queue/nr_requests 64
    write /sys/block/sda/queue/read_ahead_kb 128
    write /sys/block/sda/queue/nr_requests 64
RCEOF
chown 0:0 mnt_rw/system/etc/init/init.bg6.rc
chmod 0644 mnt_rw/system/etc/init/init.bg6.rc
set_selinux "u:object_r:system_file:s0" mnt_rw/system/etc/init/init.bg6.rc

# Update build.prop with Unisoc T606 (Cortex-A75/A55 + Mali-G57) ART & SurfaceFlinger props
sed -i '/# TECNO-BG6 Hardware & Display Optimizations/,$d' mnt_rw/system/build.prop
cat >> mnt_rw/system/build.prop << 'PROPEOF'

# TECNO-BG6 Hardware & Display Optimizations (Unisoc T606 / ums9230 / Mali-G57)
persist.vendor.hwc.display.modeid=0
persist.sys.fuse.bpf.override=false
ro.surface_flinger.use_content_detection_for_refresh_rate=false
ro.surface_flinger.max_frame_buffer_acquired_buffers=3
debug.sf.latch_unsignaled=1
debug.sf.auto_latch_unsignaled=false
debug.sf.disable_backpressure=1
dalvik.vm.isa.arm64.variant=cortex-a75
dalvik.vm.isa.arm64.features=default
dalvik.vm.isa.arm.variant=cortex-a55
dalvik.vm.isa.arm.features=default
pm.dexopt.bg-dexopt=speed-profile
pm.dexopt.shared=speed
PROPEOF
chown 0:0 mnt_rw/system/build.prop
chmod 0600 mnt_rw/system/build.prop
set_selinux "u:object_r:system_file:s0" mnt_rw/system/build.prop

sync
umount mnt_rw

echo "=== 2. SHRINK EXT4 WITH RESIZE2FS -M & SIGN WITH AVBTOOL ==="
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true
resize2fs -M infinity_x_bg6_ready.img >/dev/null 2>&1
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true

BLOCKS=$(tune2fs -l infinity_x_bg6_ready.img | awk '/^Block count:/ {print $3}')
FS_BYTES=$((BLOCKS * 4096))
TOTAL_BYTES=$((FS_BYTES + 67108864))
echo "FS_BYTES=$FS_BYTES TOTAL_BYTES=$TOTAL_BYTES"
truncate -s $TOTAL_BYTES infinity_x_bg6_ready.img

$AVBTOOL add_hashtree_footer \
    --image infinity_x_bg6_ready.img \
    --partition_name system \
    --hash_algorithm sha256 \
    --key $KEY \
    --algorithm SHA256_RSA2048

$AVBTOOL verify_image --image infinity_x_bg6_ready.img --key $KEY
ls -lh infinity_x_bg6_ready.img
echo "=== INFINITY_X_READY_AND_SIGNED ==="
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/finish_tune_inf.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/finish_tune_inf.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=300)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
