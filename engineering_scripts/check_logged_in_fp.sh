#!/system/bin/sh
echo "=== 1. Foodpanda Running Process & Mount Namespace ==="
RP=$(pidof com.logistics.rider.foodpanda)
echo "Foodpanda PID: $RP"
if [ -n "$RP" ]; then
    cat /proc/$RP/mounts | grep -E 'magisk|/data/adb|overlay|KSU' || echo "PASS: Mount namespace 100% clean (0 matches)"
fi

echo "=== 2. Check pandora.db.perseus & pandora.db.perseus-wal ==="
for f in /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus-wal; do
    if [ -f "$f" ]; then
        echo "--- $f (size: $(stat -c %s "$f")) ---"
        /data/adb/ksu/bin/busybox strings "$f" | grep -o '"rootedDevice":"[a-z]*"' | sort | uniq -c
    fi
done

echo "=== 3. Latest 3 Perseus event snippets with rootedDevice & riderId ==="
/data/adb/ksu/bin/busybox strings /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus-wal | grep "rootedDevice" | tail -n 3 | grep -o -E '"rootedDevice":"[a-z]*"|"riderId":"[^"]*"|"rider_id":"[^"]*"|"eventAction":"[^"]*"|"payloadTimeStamp":"[^"]*"'

echo "=== 4. Check all other databases & shared_prefs in Foodpanda for any root flag ==="
grep -rnI -i "rooted" /data/data/com.logistics.rider.foodpanda/shared_prefs/ 2>/dev/null || echo "PASS: No rooted flag in shared_prefs"
for db in /data/data/com.logistics.rider.foodpanda/databases/*; do
    /data/adb/ksu/bin/busybox strings "$db" 2>/dev/null | grep -i '"rootedDevice":"true"' && echo "FOUND TRUE in $db"
done
echo "Done scanning all DBs for rootedDevice:true"

echo "=== 5. Check logcat for RootBeer / QLog / rootedDevice ==="
logcat -d | grep -iE "RootBeer|QLog|rootedDevice|checkRootedDevice" | tail -n 20 || echo "PASS: No RootBeer detections in logcat"
