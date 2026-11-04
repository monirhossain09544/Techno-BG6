#!/system/bin/sh
/data/adb/ksud --help 2>&1
/data/adb/ksud profile --help 2>&1
echo "=== Hexdump of /data/adb/ksu/.allowlist ==="
/data/adb/ksu/bin/busybox hexdump -C /data/adb/ksu/.allowlist
