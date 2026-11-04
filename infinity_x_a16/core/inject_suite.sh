#!/bin/bash
set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_inject"

umount $MNT 2>/dev/null || true
mkdir -p $MNT

echo "=== 1. EXPAND EXT4 IMAGE FOR INJECTION ==="
avbtool erase_footer --image $IMG 2>/dev/null || true
e2fsck -fy $IMG || true
resize2fs -f $IMG 3500M

mount -o loop,rw $IMG $MNT

echo "=== 2. INSTALL NATIVE ARM64 SILICON DAEMON & HARDWARE RRO OVERLAY ==="
cp /nvme0n1-disk/infinity_x/bg6_perf_engine $MNT/system/bin/bg6_perf_engine
chown 0:2000 $MNT/system/bin/bg6_perf_engine
chmod 0755 $MNT/system/bin/bg6_perf_engine

cp /nvme0n1-disk/infinity_x/treble-overlay-tecno-bg6.apk $MNT/system/product/overlay/treble-overlay-tecno-bg6.apk
chown 0:0 $MNT/system/product/overlay/treble-overlay-tecno-bg6.apk
chmod 0644 $MNT/system/product/overlay/treble-overlay-tecno-bg6.apk

cat << 'EOF' > $MNT/system/etc/init/init.bg6.rc
# TECNO SPARK Go 2024 (TECNO-BG6 / Unisoc T606 ums9230)
# Project Infinity X v3.12 (Android 16 QPR2) Silicon & Hardware RC

on early-init
    setprop persist.vendor.hwc.display.modeid 0
    setprop keystore.module_hash.sent true

on init
    setprop persist.vendor.hwc.display.modeid 0
    setprop keystore.module_hash.sent true

on post-fs-data
    setprop persist.vendor.hwc.display.modeid 0
    setprop keystore.module_hash.sent true
    exec - root root -- /system/bin/bg6_perf_engine --boot

on boot
    setprop persist.vendor.hwc.display.modeid 0
    exec - root root -- /system/bin/bg6_perf_engine --boot

on property:sys.boot_completed=1
    setprop persist.vendor.hwc.display.modeid 0
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
EOF
chown 0:0 $MNT/system/etc/init/init.bg6.rc
chmod 0644 $MNT/system/etc/init/init.bg6.rc

python3 - << 'PYEOF'
import os
targets = {
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/bg6_perf_engine": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/product/overlay/treble-overlay-tecno-bg6.apk": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/etc/init/init.bg6.rc": "u:object_r:system_file:s0",
}
for p, ctx in targets.items():
    os.setxattr(p, "security.selinux", ctx.encode("ascii") + b"\x00", follow_symlinks=False)
print("SELinux xattrs applied to bg6_perf_engine, treble-overlay-tecno-bg6.apk, and init.bg6.rc")
PYEOF

echo "=== 3. VERIFY SEPOLICY & CONTEXTS (secilc + checkfc) ==="
VND="/nvme0n1-disk/hios14_rom/bg6_vendor_selinux"
secilc -m -M true -G -N -c 30 \
    $MNT/system/etc/selinux/plat_sepolicy.cil \
    $MNT/system/etc/selinux/mapping/33.0.cil \
    $MNT/system/etc/selinux/mapping/33.0.compat.cil \
    $MNT/system/system_ext/etc/selinux/system_ext_sepolicy.cil \
    $MNT/system/system_ext/etc/selinux/mapping/33.0.cil \
    $MNT/system/product/etc/selinux/product_sepolicy.cil \
    $MNT/system/product/etc/selinux/mapping/33.0.cil \
    $VND/plat_pub_versioned.cil \
    $VND/vendor_sepolicy.cil \
    -o /tmp/sepolicy_final_test -f /dev/null
echo "PASS: secilc binary policy compiled cleanly!"

cat $MNT/system/etc/selinux/plat_file_contexts \
    $MNT/system/system_ext/etc/selinux/system_ext_file_contexts \
    $MNT/system/product/etc/selinux/product_file_contexts \
    $VND/vendor_file_contexts > /tmp/all_fc
checkfc /tmp/sepolicy_final_test /tmp/all_fc
echo "PASS: checkfc file_contexts!"

cat $MNT/system/etc/selinux/plat_property_contexts \
    $MNT/system/system_ext/etc/selinux/system_ext_property_contexts \
    $MNT/system/product/etc/selinux/product_property_contexts \
    $VND/vendor_property_contexts > /tmp/all_pc
checkfc -p /tmp/sepolicy_final_test /tmp/all_pc
echo "PASS: checkfc property_contexts!"

sync
umount $MNT

echo "=== 4. SHRINK EXT4 & SIGN WITH AVBTOOL ==="
e2fsck -fy $IMG || true
resize2fs -M $IMG
e2fsck -fy $IMG || true

CUR_BYTES=$(stat -c %s $IMG)
PAD_BYTES=$(( (CUR_BYTES + 67108864 + 4095) / 4096 * 4096 ))
truncate -s $PAD_BYTES $IMG

avbtool add_hashtree_footer \
    --image $IMG \
    --partition_name system \
    --partition_size $PAD_BYTES \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048

avbtool verify_image \
    --image $IMG \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem

ls -lh $IMG
md5sum $IMG > /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img.md5
cat /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img.md5
