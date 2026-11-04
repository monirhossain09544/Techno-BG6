#!/bin/bash
for i in {1..12}; do
    if ! ps -p 375019 > /dev/null 2>&1; then
        echo "=== BUILD PROCESS EXITED ==="
        tail -n 45 /nvme0n1-disk/shunno_os/build_sunno.log
        exit 0
    fi
    echo "=== [Check $i] $(date +%H:%M:%S) ==="
    tail -n 5 /nvme0n1-disk/shunno_os/build_sunno.log | tr '\r' '\n' | tail -n 5
    sleep 15
done
