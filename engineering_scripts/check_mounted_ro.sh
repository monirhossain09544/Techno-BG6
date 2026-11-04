#!/bin/bash
set -e

OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"
mkdir -p /mnt/sunno_ro
mount -o loop,ro "$OUT/system.img" /mnt/sunno_ro
echo "=== Mounted RO successfully! Checking contents: ==="
df -h /mnt/sunno_ro
find /mnt/sunno_ro -name "su" -ls || true
ls -lh /mnt/sunno_ro/system/priv-app/SunnoRiderTile/SunnoRiderTile.apk
ls -lh /mnt/sunno_ro/system/product/overlay/*tecno-bg6*
ls -lh /mnt/sunno_ro/system/product/priv-app/GmsCore/GmsCore.apk /mnt/sunno_ro/system/product/priv-app/Phonesky/Phonesky.apk
umount /mnt/sunno_ro
