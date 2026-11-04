#!/bin/bash
for i in {1..24}; do
    if ! ps -p 385214 > /dev/null 2>&1; then
        echo "=== BUILD PROCESS FINISHED ==="
        tail -n 40 /nvme0n1-disk/shunno_os/build_sunno.log | tr '\r' '\n' | tail -n 40
        ls -lh /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system.img 2>/dev/null || true
        exit 0
    fi
    echo "=== [Check $i] $(date +%H:%M:%S) ==="
    tail -n 5 /nvme0n1-disk/shunno_os/build_sunno.log | tr '\r' '\n' | tail -n 5
    sleep 15
done
