#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

for propfile in "$OUT/system/build.prop" "$OUT/system/product/etc/build.prop" "$OUT/system/system_ext/etc/build.prop"; do
    if [ -f "$propfile" ]; then
        sed -i 's/userdebug/user/g' "$propfile"
    fi
done

echo "=== Verified pure Sunno build.prop ==="
grep -E "ro.product.system.|ro.build.display.id|ro.build.flavor|ro.build.product|ro.build.description|ro.system.build.fingerprint" "$OUT/system/build.prop"

sudo -u administrator PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH" \
    /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/build_image \
    "$OUT/system" \
    "$OUT/obj/PACKAGING/systemimage_intermediates/system_image_info.txt" \
    "$OUT/system.img" \
    "$OUT/system"

/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/img2simg "$OUT/system.img" /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
pigz -1 -f /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img 2>/dev/null || gzip -1 -f /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
ls -lh /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img.gz
