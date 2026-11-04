#!/system/bin/sh
ls -la /vendor/lib/modules/ 2>/dev/null | head -n 40
mount | grep -E "vendor|socko|odmko|modules"
df -h | grep -E "vendor|socko|odmko"
getprop ro.boot.slot_suffix
