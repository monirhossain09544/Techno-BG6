#!/system/bin/sh
grep -rn "gesture" /vendor/etc/init/ /system/etc/init/ /system_ext/etc/init/ /product/etc/init/ /odm/etc/init/ 2>/dev/null
echo "=== Check /proc/mounts for any suspicious mounts ==="
grep -E "gesture|dt2w|bg6|ksu|KSU|handheld|gmsexpress" /proc/mounts
