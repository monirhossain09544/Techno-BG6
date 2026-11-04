#!/system/bin/sh
echo "=== 1. Check /data/adb/post-fs-data.d and /data/adb/service.d ==="
ls -la /data/adb/post-fs-data.d/ /data/adb/service.d/ 2>&1
for f in /data/adb/post-fs-data.d/* /data/adb/service.d/*; do
    if [ -f "$f" ]; then
        echo "--- $f ---"
        cat "$f"
    fi
done

echo "=== 2. Check if Magisk package or magiskd is running ==="
pm list packages | grep -iE "magisk|ksu|weishu"
ps -A | grep -iE "magisk|ksu"
mount | grep -E "magisk|debug_ramdisk|KSU|loop35"
