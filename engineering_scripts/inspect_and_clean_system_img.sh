#!/bin/bash
set -e

OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

echo "=== 1. Check where HTMLViewer is in OUT ==="
find "$OUT" -name "HTMLViewer.apk" 2>/dev/null || true

echo "=== 2. Copy system.img to /nvme0n1-disk/bg6_device/sunno_system.img and mount it ==="
cp "$OUT/system.img" /nvme0n1-disk/bg6_device/sunno_system.img
mkdir -p /mnt/sunno_sys
mount -o loop,rw /nvme0n1-disk/bg6_device/sunno_system.img /mnt/sunno_sys

echo "=== 3. Remove any su binary inside mounted image ==="
find /mnt/sunno_sys -name "su" -ls -delete || true

echo "=== 4. Install HTMLViewer.apk if not already in /mnt/sunno_sys/system/app/HTMLViewer ==="
HTML_APK=$(find "$OUT" -name "HTMLViewer.apk" | head -n 1)
if [ -n "$HTML_APK" ] && [ ! -f /mnt/sunno_sys/system/app/HTMLViewer/HTMLViewer.apk ] && [ ! -f /mnt/sunno_sys/system/product/app/HTMLViewer/HTMLViewer.apk ]; then
    mkdir -p /mnt/sunno_sys/system/app/HTMLViewer
    cp "$HTML_APK" /mnt/sunno_sys/system/app/HTMLViewer/HTMLViewer.apk
    chmod 644 /mnt/sunno_sys/system/app/HTMLViewer/HTMLViewer.apk
    chcon u:object_r:system_file:s0 /mnt/sunno_sys/system/app/HTMLViewer /mnt/sunno_sys/system/app/HTMLViewer/HTMLViewer.apk
    echo "Installed $HTML_APK into /mnt/sunno_sys/system/app/HTMLViewer/HTMLViewer.apk"
fi

echo "=== 5. Verify mounted Sunno OS contents ==="
ls -lh /mnt/sunno_sys/system/priv-app/SunnoRiderTile/SunnoRiderTile.apk
ls -lh /mnt/sunno_sys/system/etc/permissions/privapp-permissions-sunno.xml
ls -lh /mnt/sunno_sys/system/product/overlay/*tecno-bg6*
ls -lh /mnt/sunno_sys/system/product/priv-app/GmsCore/GmsCore.apk /mnt/sunno_sys/system/product/priv-app/Phonesky/Phonesky.apk
find /mnt/sunno_sys -name "HTMLViewer.apk" -ls
find /mnt/sunno_sys -name "su" -ls

umount /mnt/sunno_sys
e2fsck -fy /nvme0n1-disk/bg6_device/sunno_system.img || true
ls -lh /nvme0n1-disk/bg6_device/sunno_system.img
stat -c "%s" /nvme0n1-disk/bg6_device/sunno_system.img
