#!/bin/bash
for i in {1..16}; do
    if ! ps -p 385214 > /dev/null 2>&1; then
        echo "=== BUILD PROCESS EXITED ==="
        tail -n 50 /nvme0n1-disk/shunno_os/build_sunno.log
        exit 0
    fi
    echo "=== [Check $i] $(date +%H:%M:%S) ==="
    uptime
    tail -n 4 /nvme0n1-disk/shunno_os/build_sunno.log | tr '\r' '\n' | tail -n 4
    sleep 30
done
