#!/bin/bash
for i in {1..12}; do
    if ! ps -p 385214 > /dev/null 2>&1; then
        echo "=== BUILD PROCESS EXITED ==="
        tail -n 50 /nvme0n1-disk/shunno_os/build_sunno.log
        exit 0
    fi
    echo "=== [Check $i] $(date +%H:%M:%S) ==="
    ps -eo pid,pcpu,pmem,comm,args --sort=-pcpu | head -n 6
    ls -lh /nvme0n1-disk/shunno_os/out/soong/build.treble_arm64_bgN.ninja* /nvme0n1-disk/shunno_os/out/build-treble_arm64_bgN.ninja* 2>/dev/null || true
    tail -n 6 /nvme0n1-disk/shunno_os/build_sunno.log | tr '\r' '\n' | tail -n 6
    sleep 15
done
