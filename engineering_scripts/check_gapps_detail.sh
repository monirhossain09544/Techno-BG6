#!/bin/bash
set -e
echo "=== gapps.mk ==="
cat /nvme0n1-disk/shunno_os/device/phh/treble/gapps.mk || true
echo "=== vendor/gapps/README.md ==="
cat /nvme0n1-disk/shunno_os/vendor/gapps/README.md || true
echo "=== vendor/gapps/arm64/arm64-vendor.mk ==="
cat /nvme0n1-disk/shunno_os/vendor/gapps/arm64/arm64-vendor.mk || true
echo "=== Check LFS status in vendor/gapps ==="
cd /nvme0n1-disk/shunno_os/vendor/gapps
ls -lh common/proprietary/priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk 2>/dev/null || ls -lh arm64/proprietary/priv-app/*/* 2>/dev/null || true
