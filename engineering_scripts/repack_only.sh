#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

echo "=== 1. Remove /system/xbin/su and /system/xbin from OUT/system ==="
rm -rf "$OUT/system/xbin/su" "$OUT/system/xbin"

echo "=== 2. Fix product/etc/build.prop display id so it also says Sunno-OS-1.0-Android14 ==="
sed -i 's/ro.build.display.id=.*/ro.build.display.id=Sunno-OS-1.0-Android14/g' "$OUT/system/product/etc/build.prop"
sed -i 's/ro.product.product.model=.*/ro.product.product.model=Sunno/g' "$OUT/system/product/etc/build.prop"
sed -i 's/ro.product.product.brand=.*/ro.product.product.brand=Sunno/g' "$OUT/system/product/etc/build.prop"
sed -i 's/ro.product.product.name=.*/ro.product.product.name=Sunno/g' "$OUT/system/product/etc/build.prop"

echo "=== 3. Rebuild system.img directly via build_image (~8s) ==="
sudo -u administrator PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH" \
    /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/build_image \
    "$OUT/system" \
    "$OUT/obj/PACKAGING/systemimage_intermediates/system_image_info.txt" \
    "$OUT/system.img" \
    "$OUT/system"

echo "=== 4. Mount read-only and verify 100% of contents ==="
mkdir -p /mnt/sunno_ro
umount /mnt/sunno_ro 2>/dev/null || true
mount -o loop,ro "$OUT/system.img" /mnt/sunno_ro
echo "--- Check su binary (must be empty): ---"
find /mnt/sunno_ro -name "su" -ls || true
echo "--- Check SunnoRiderTile, HTMLViewer, Overlays, GApps: ---"
ls -lh /mnt/sunno_ro/system/priv-app/SunnoRiderTile/SunnoRiderTile.apk
ls -lh /mnt/sunno_ro/system/app/HTMLViewer/HTMLViewer.apk
ls -lh /mnt/sunno_ro/system/product/overlay/*tecno-bg6*
ls -lh /mnt/sunno_ro/system/product/priv-app/GmsCore/GmsCore.apk /mnt/sunno_ro/system/product/priv-app/Phonesky/Phonesky.apk
echo "--- Check build.prop branding: ---"
grep -E "ro.product.(system|product).(brand|model|name)|ro.build.display.id|ro.sunno" /mnt/sunno_ro/system/build.prop /mnt/sunno_ro/system/product/etc/build.prop
umount /mnt/sunno_ro
ls -lh "$OUT/system.img"
stat -c "%s" "$OUT/system.img"
