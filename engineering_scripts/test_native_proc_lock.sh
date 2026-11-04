#!/system/bin/sh
echo "=== 1. Check current mounts matching gesture or bg6 ==="
grep -E "gesture|dt2w|bg6|ksu" /proc/mounts

echo "=== 2. Unmount /proc/gesture_function and lock permissions natively ==="
umount /proc/gesture_function 2>/dev/null
rm -f /dev/dt2w_state
chown 0:0 /proc/gesture_function
chmod 0444 /proc/gesture_function
ls -laZ /proc/gesture_function

echo "=== 3. Test if system (uid 1000) can write to /proc/gesture_function ==="
su 1000 -c 'echo 1 > /proc/gesture_function' 2>&1
echo "gesture_state after uid 1000 write attempt:"
cat /proc/gesture_state | tr '\n' ' '
echo ""

echo "=== 4. Check where adaptive-ts.ko is loaded from ==="
cat /vendor_dlkm/lib/modules/modules.load* | grep -E "adaptive|chipone|drm"
ls -la /system/lib/modules/ /vendor/lib/modules/adaptive-ts.ko /vendor_dlkm/lib/modules/adaptive-ts.ko 2>&1
