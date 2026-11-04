#!/system/bin/sh
echo "=== 1. Check /cache/magisk and what UID 10030 sees ==="
ls -la /cache/
su 10030 -c '
for d in /data/local /data/local/bin /data/local/xbin /sbin /su/bin /system/bin /system/bin/.ext /system/bin/failsafe /system/sd/xbin /system/usr/we-need-root /system/xbin /system_ext/bin /cache /data /dev; do
    [ -e "$d/su" ] && echo "UID 10030 SEES su: $d/su"
    [ -e "$d/magisk" ] && echo "UID 10030 SEES magisk: $d/magisk"
done
'

echo "=== 2. Check all files in Foodpanda APK dir and grep for rootedDevice ==="
FP_DIR=$(dirname $(pm path com.logistics.rider.foodpanda | head -n 1 | cut -d: -f2))
ls -la "$FP_DIR"
ls -la "$FP_DIR/lib/arm64" 2>/dev/null
grep -rn "rootedDevice" /data/data/com.logistics.rider.foodpanda/ 2>/dev/null | head -n 20
