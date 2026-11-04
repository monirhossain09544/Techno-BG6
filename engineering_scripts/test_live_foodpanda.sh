#!/system/bin/sh
echo "=== 1. Check databases in com.logistics.rider.foodpanda ==="
ls -la /data/data/com.logistics.rider.foodpanda/databases/

echo "=== 2. Stop Foodpanda and clear ONLY pandora.db.perseus* ==="
am force-stop com.logistics.rider.foodpanda
rm -f /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus*

echo "=== 3. Unmount any KSU/module mounts from zygote64? NO, keep system apps working, instead watch & clean Foodpanda namespace or check how Foodpanda behaves right now ==="
monkey -p com.logistics.rider.foodpanda -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1
sleep 8

RP=$(pidof com.logistics.rider.foodpanda)
echo "Foodpanda PID: $RP"

echo "=== 4. Check pandora.db.perseus-wal for rootedDevice ==="
ls -la /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus* 2>/dev/null
for f in /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus*; do
    echo "--- $f ---"
    /data/adb/ksu/bin/busybox strings "$f" | grep -o '"rootedDevice":"[a-z]*"' | sort | uniq -c
done
