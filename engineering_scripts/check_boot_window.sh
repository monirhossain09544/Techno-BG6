#!/system/bin/sh
echo "=== DMESG 0 to 27s ==="
dmesg | awk '$0 ~ /\[   ([0-9]|1[0-9]|2[0-7])\./ {print}'
