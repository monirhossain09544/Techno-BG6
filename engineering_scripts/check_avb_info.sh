#!/bin/bash
set -e

OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"
/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool info_image --image "$OUT/system.img"
echo "=== Checkvbmeta_a.bin from bg6_device ==="
/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool info_image --image /nvme0n1-disk/bg6_device/vbmeta_a.bin || true
