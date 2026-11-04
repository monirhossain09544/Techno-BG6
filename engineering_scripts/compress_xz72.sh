#!/bin/bash
set -e
OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"
xz -T72 -6 -k -c "$OUT/system.img" > /nvme0n1-disk/sunno_release/sunno_system.img.xz
ls -lh /nvme0n1-disk/sunno_release/sunno_system.img.xz
stat -c "%s" /nvme0n1-disk/sunno_release/sunno_system.img.xz
