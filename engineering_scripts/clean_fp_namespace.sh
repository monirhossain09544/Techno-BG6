#!/system/bin/sh
RP=$(pidof com.logistics.rider.foodpanda)
echo "Foodpanda PID: $RP"
echo "=== Before namespace cleanup ==="
cat /proc/$RP/mounts | grep -E 'magisk|/data/adb|overlay|KSU|loop'

echo "=== Unmounting module mounts inside Foodpanda namespace ==="
nsenter -t "$RP" -m -- /system/bin/sh -c '
    for mp in $(awk "/KSU|\/data\/adb|overlay|loop/ {print \$2}" /proc/self/mounts | sort -r); do
        umount -l "$mp" 2>/dev/null
    done
'

echo "=== After namespace cleanup ==="
cat /proc/$RP/mounts | grep -E 'magisk|/data/adb|overlay|KSU' || echo "100% CLEAN NAMESPACE!"
