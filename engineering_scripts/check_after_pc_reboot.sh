#!/bin/bash
echo "=== Checking build process on server ==="
ps -ef | grep -E "run_build|soong|ninja" | grep -v grep || echo "No active build process (likely finished!)"
echo "=== Last 30 lines of build_sunno.log ==="
tail -n 30 /nvme0n1-disk/shunno_os/build_sunno.log | tr '\r' '\n' | tail -n 30
echo "=== Checking built system.img ==="
ls -lh /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system.img 2>/dev/null || echo "system.img not yet created"
