#!/system/bin/sh
echo "=== 1. Tail of phone's service.sh ==="
sed -n '145,195p' /data/adb/modules/bg6_hios_pro/service.sh
echo "---"
tail -n 50 /data/adb/modules/bg6_hios_pro/service.sh

echo "=== 2. Check Foodpanda UID and what mounts exist ==="
FP_UID=$(pm list packages -U | grep foodpanda | sed 's/.*uid://')
echo "Foodpanda UID: $FP_UID"
grep -E "KSU|loop35|gesture|bg6" /proc/mounts
