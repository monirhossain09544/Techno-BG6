#!/system/bin/sh
echo "=== STEP 1: Backup boot_a and write clean boot_nomagisk.img to boot_a ==="
cp -f /data/local/tmp/boot_test/boot_a.img /data/adb/boot_a_magisk_backup.img
ORIG_SZ=$(stat -c %s /data/local/tmp/boot_test/boot_nomagisk.img)
if [ "$ORIG_SZ" = "67108864" ]; then
    dd if=/data/local/tmp/boot_test/boot_nomagisk.img of=/dev/block/by-name/boot_a bs=4096 conv=fsync 2>&1
    S1=$(sha256sum /data/local/tmp/boot_test/boot_nomagisk.img | awk '{print $1}')
    S2=$(sha256sum /dev/block/by-name/boot_a | awk '{print $1}')
    echo "boot_nomagisk sha256: $S1"
    echo "boot_a        sha256: $S2"
else
    echo "ERROR: unexpected boot_nomagisk.img size $ORIG_SZ"
    exit 1
fi

echo "=== STEP 2: Remove com.topjohnwu.magisk package & Magisk files ==="
pm uninstall com.topjohnwu.magisk 2>&1 || pm hide com.topjohnwu.magisk 2>&1
rm -rf /cache/magisk /cache/magisk.log /cache/magisk.log.bak /data/adb/magisk /data/adb/magisk.db
echo "Check topjohnwu in pm list packages:"
pm list packages | grep topjohnwu || echo "CLEAN: com.topjohnwu.magisk gone"
echo "Check /cache/magisk:"
ls -d /cache/magisk 2>/dev/null || echo "CLEAN: /cache/magisk gone"

echo "=== STEP 3: Stop magiskd and unmount /debug_ramdisk live ==="
for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        umount -l /debug_ramdisk/.magisk/pts 2>/dev/null
        umount -l /debug_ramdisk/.magisk/worker 2>/dev/null
        umount -l /debug_ramdisk 2>/dev/null
    "
done
kill -9 $(pidof magiskd) 2>/dev/null
sleep 1
ps -A | grep magiskd || echo "CLEAN: magiskd stopped"
mount | grep debug_ramdisk || echo "CLEAN: /debug_ramdisk unmounted"

echo "=== STEP 4: Clean up /data/local/tmp/boot_test and /data/local/tmp/fp_dex ==="
rm -rf /data/local/tmp/boot_test /data/local/tmp/fp_dex
