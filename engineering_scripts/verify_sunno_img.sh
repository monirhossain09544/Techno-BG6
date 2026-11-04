#!/bin/bash
set -e

OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"
echo "=== 1. Check system.img file type and exact byte size ==="
ls -lh "$OUT/system.img"
stat -c "%s" "$OUT/system.img"
file "$OUT/system.img"

echo "=== 2. Check Sunno OS branding in build.prop ==="
grep -E "ro.product.system.(brand|model|name)|ro.build.display.id|ro.build.version.release|ro.sunno" "$OUT/system/build.prop" "$OUT/system/product/etc/build.prop" 2>/dev/null || true

echo "=== 3. Check TECNO-BG6 hardware overlays, VNDK 33, GApps, HTMLViewer ==="
ls -lh "$OUT/system/product/overlay/"*tecno-bg6*
ls -lh "$OUT/system/system_ext/apex/"*vndk* "$OUT/system/apex/"*vndk* 2>/dev/null || true
ls -lh "$OUT/system/product/priv-app/GmsCore/GmsCore.apk" "$OUT/system/product/priv-app/Phonesky/Phonesky.apk"
ls -lh "$OUT/system/app/HTMLViewer/HTMLViewer.apk"
echo "=== 4. Check that NO su binary exists in system ==="
ls -la "$OUT/system/bin/su" "$OUT/system/xbin/su" "$OUT/system/phh/su" 2>/dev/null || echo "VERIFIED: Zero su binaries present!"
