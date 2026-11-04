#!/bin/bash
set -e

OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"
mkdir -p /nvme0n1-disk/sunno_release

echo "=== Converting system.img to Android sparse image and compressing with gzip -1 ==="
/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/img2simg "$OUT/system.img" /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
ls -lh /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
pigz -1 -k -f /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img 2>/dev/null || gzip -1 -k -f /nvme0n1-disk/sunno_release/sunno_os_android14_sparse.img
ls -lh /nvme0n1-disk/sunno_release/
