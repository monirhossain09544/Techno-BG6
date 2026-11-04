#!/bin/bash
set -e

OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

echo "=== Checking any remaining tdgsi / treble / generic strings in build.prop files ==="
grep -iE "tdgsi|treble|mainline|generic" "$OUT/system/build.prop" "$OUT/system/product/etc/build.prop" "$OUT/system/system_ext/etc/build.prop" 2>/dev/null || true

# Replace any tdgsi_arm64_ab / treble_arm64_bgN / mainline in all 3 build.prop files with Sunno / Sunno-BG6
for propfile in "$OUT/system/build.prop" "$OUT/system/product/etc/build.prop" "$OUT/system/system_ext/etc/build.prop"; do
    if [ -f "$propfile" ]; then
        sed -i 's/tdgsi_arm64_ab/Sunno-BG6/g' "$propfile"
        sed -i 's/treble_arm64_bgN/sunno_bg6/g' "$propfile"
        sed -i 's/=mainline/=Sunno/g' "$propfile"
        sed -i 's/=generic/=Sunno/g' "$propfile"
        sed -i 's/test-keys/release-keys/g' "$propfile"
        sed -i 's/=userdebug/=user/g' "$propfile"
    fi
done

echo "=== Verified updated build.prop identity ==="
grep -E "ro.product.|ro.build." "$OUT/system/build.prop" | head -n 35

echo "=== Rebuilding system.img and sparse compressed image ==="
sudo -u administrator PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH" \
    /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/build_image \
    "$OUT/system" \
    "$OUT/obj/PACKAGING/systemimage_intermediates/system_image_info.txt" \
    "$OUT/system.img" \
    "$OUT/system"

/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/img2simg "$OUT/system.img" /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
pigz -1 -f /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img 2>/dev/null || gzip -1 -f /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
ls -lh /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img.gz
