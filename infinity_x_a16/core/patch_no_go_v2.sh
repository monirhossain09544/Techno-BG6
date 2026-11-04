#!/bin/bash
set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_inject"

umount $MNT 2>/dev/null || true
mkdir -p $MNT

avbtool erase_footer --image $IMG 2>/dev/null || true
mount -o loop,rw $IMG $MNT

# 1. Clean vendor_build_bg6.prop (ro.config.low_ram=false, strip -TGo)
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
out_p = "/nvme0n1-disk/infinity_x/mnt_inject/system/etc/vendor_build_bg6.prop"
with open(out_p, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n".join(lines) + "\n")
PY
chown 0:0 $MNT/system/etc/vendor_build_bg6.prop
chmod 0644 $MNT/system/etc/vendor_build_bg6.prop

# 2. Install android.hardware.ram.normal.xml
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

# 3. Update rw-system.sh (placed both at top AND after /mnt/phh mount)
python3 - << 'PY'
rw_path = "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/rw-system.sh"
with open(rw_path, "r") as f:
    rw = f.read()

# Remove any previous injected block
if "# === TECNO-BG6 PERMANENT NON-GO" in rw:
    s = rw.index("# === TECNO-BG6 PERMANENT NON-GO")
    e = rw.index("# === END TECNO-BG6 OVERWRITE ===\n") + len("# === END TECNO-BG6 OVERWRITE ===\n")
    rw = rw[:s] + rw[e:]

if "# === TECNO-BG6 MNT-PHH OVERWRITE" in rw:
    s = rw.index("# === TECNO-BG6 MNT-PHH OVERWRITE")
    e = rw.index("# === END TECNO-BG6 MNT-PHH ===\n") + len("# === END TECNO-BG6 MNT-PHH ===\n")
    rw = rw[:s] + rw[e:]

top_block = """# === TECNO-BG6 PERMANENT NON-GO & VENDOR OVERWRITE ===
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
resetprop_phh persist.vendor.hwc.display.modeid 0
resetprop_phh ro.vendor.build.display.id BG6-F069-OP-V2387-250722
if [ -f /system/etc/vendor_build_bg6.prop ]; then
    mount -o bind /system/etc/vendor_build_bg6.prop /vendor/build.prop 2>/dev/null || true
fi
# === END TECNO-BG6 OVERWRITE ===
"""

mnt_block = """chmod 0 /mnt/phh/unreadable
# === TECNO-BG6 MNT-PHH OVERWRITE ===
resetprop_phh ro.config.low_ram false
if [ -f /system/etc/vendor_build_bg6.prop ]; then
    mount -o bind /system/etc/vendor_build_bg6.prop /vendor/build.prop 2>/dev/null || true
fi
if [ -f /odm/etc/build.prop ]; then
    cp -a /odm/etc/build.prop /mnt/phh/odm_build.prop
    sed -i -e 's/ro.config.low_ram=true/ro.config.low_ram=false/g' -e 's/-TGo//g' /mnt/phh/odm_build.prop
    chmod 0644 /mnt/phh/odm_build.prop
    chcon u:object_r:vendor_configs_file:s0 /mnt/phh/odm_build.prop
    mount -o bind /mnt/phh/odm_build.prop /vendor/odm_build.prop 2>/dev/null || true
    mount -o bind /mnt/phh/odm_build.prop /odm/etc/build.prop 2>/dev/null || true
fi
if [ -f /vendor/overlay/unisoc_go_overlay_frameworks_res.apk ]; then
    mount -o bind /mnt/phh/empty /vendor/overlay/unisoc_go_overlay_frameworks_res.apk 2>/dev/null || true
fi
if [ -f /vendor/etc/fstab.enableswap ]; then
    cp -a /vendor/etc/fstab.enableswap /mnt/phh/fstab.enableswap
    sed -i -e 's/zramsize=75%/zramsize=4294967296/g' /mnt/phh/fstab.enableswap
    chcon u:object_r:vendor_configs_file:s0 /mnt/phh/fstab.enableswap
    mount -o bind /mnt/phh/fstab.enableswap /vendor/etc/fstab.enableswap 2>/dev/null || true
fi
# === END TECNO-BG6 MNT-PHH ===
"""

rw = rw.replace("#!/system/bin/sh\n", "#!/system/bin/sh\n" + top_block, 1)
rw = rw.replace("chmod 0 /mnt/phh/unreadable\n", mnt_block, 1)

with open(rw_path, "w") as f:
    f.write(rw)
PY
chown 0:2000 $MNT/system/bin/rw-system.sh
chmod 0755 $MNT/system/bin/rw-system.sh

# 4. Create /system/bin/bg6-perf-tune.sh for 4GB ZRAM + Non-Go enforcement
cat << 'SH_EOF' > $MNT/system/bin/bg6-perf-tune.sh
#!/system/bin/sh
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
resetprop_phh persist.vendor.hwc.display.modeid 0
resetprop_phh ro.vendor.build.display.id BG6-F069-OP-V2387-250722

cmd overlay disable android.go_unisoc_framework_res.overlay 2>/dev/null || true

# Resize zram0 to full 4GB (4294967296 bytes) LZ4 if smaller
if [ -e /sys/block/zram0 ]; then
    cur_zram=$(cat /sys/block/zram0/disksize 2>/dev/null)
    if [ "$cur_zram" != "4294967296" ]; then
        swapoff /dev/block/zram0 2>/dev/null || true
        echo 1 > /sys/block/zram0/reset 2>/dev/null || true
        echo lz4 > /sys/block/zram0/comp_algorithm 2>/dev/null || true
        echo 4294967296 > /sys/block/zram0/disksize 2>/dev/null || true
        mkswap /dev/block/zram0 >/dev/null 2>&1 || true
        swapon /dev/block/zram0 2>/dev/null || true
    fi
fi
SH_EOF
chown 0:2000 $MNT/system/bin/bg6-perf-tune.sh
chmod 0755 $MNT/system/bin/bg6-perf-tune.sh

# 5. Update init.bg6.rc
cat << 'RCEOF' > $MNT/system/etc/init/init.bg6.rc
# TECNO SPARK Go 2024 (TECNO-BG6 / Unisoc T606 ums9230)
# Project Infinity X v3.12 (Android 16 QPR2) Non-Go & 4GB ZRAM RC

on early-init
    mount none /system/etc/vendor_build_bg6.prop /vendor/build.prop bind
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true

on init
    mount none /system/etc/vendor_build_bg6.prop /vendor/build.prop bind
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true

on post-fs
    mount none /system/etc/vendor_build_bg6.prop /vendor/build.prop bind
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false

on post-fs-data
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true
    exec - root root -- /system/bin/bg6_perf_engine --boot

on boot
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false
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

# 6. Apply exact SELinux contexts (CRITICAL: rw-system.sh and phh-on-boot.sh MUST be phhsu_exec!)
python3 - << 'PY'
import os
targets = {
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/bg6_perf_engine": "u:object_r:system_file:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/rw-system.sh": "u:object_r:phhsu_exec:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/phh-on-boot.sh": "u:object_r:phhsu_exec:s0",
    "/nvme0n1-disk/infinity_x/mnt_inject/system/bin/bg6-perf-tune.sh": "u:object_r:phhsu_exec:s0",
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
echo "PATCH_DONE"
