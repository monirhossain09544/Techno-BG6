#!/system/bin/sh
echo "=== Install updated /data/adb/ksu/.allowlist ==="
cp -f /data/local/tmp/ksu_allowlist_new.bin /data/adb/ksu/.allowlist
chown 0:0 /data/adb/ksu/.allowlist
chmod 0600 /data/adb/ksu/.allowlist
ls -la /data/adb/ksu/.allowlist

echo "=== Install updated sync_booster.sh ==="
sed -i 's/\r$//' /data/local/tmp/sync_booster.sh
cp -f /data/local/tmp/sync_booster.sh /data/adb/modules/bg6_hios_pro/sync_booster.sh
chown 0:0 /data/adb/modules/bg6_hios_pro/sync_booster.sh
chmod 0755 /data/adb/modules/bg6_hios_pro/sync_booster.sh

echo "=== Restart Foodpanda & run sync_booster.sh ==="
am force-stop com.logistics.rider.foodpanda
rm -f /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus*
monkey -p com.logistics.rider.foodpanda -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1
sleep 2
/system/bin/sh /data/adb/modules/bg6_hios_pro/sync_booster.sh
sleep 6

echo "=========================================="
echo "=== 5 VERIFICATION CHECKS (LIVE PROOF) ==="
echo "=========================================="
echo "[Check 1] pandora.db.perseus-wal rootedDevice flag:"
/data/adb/ksu/bin/busybox strings /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus-wal | grep -o '"rootedDevice":"[a-z]*"' | sort | uniq -c

echo "[Check 2] Foodpanda mount namespace (magisk | /data/adb | overlay):"
RP=$(pidof com.logistics.rider.foodpanda)
echo "Foodpanda PID: $RP"
cat /proc/$RP/mounts | grep -E 'magisk|/data/adb|overlay' || echo "PASS: 0 matches (100% clean namespace)"

echo "[Check 3] Magisk daemon & /debug_ramdisk & /cache/magisk:"
ps -A | grep magiskd || echo "PASS: magiskd not running"
mount | grep debug_ramdisk || echo "PASS: /debug_ramdisk not mounted"
ls -d /cache/magisk /data/adb/magisk 2>/dev/null || echo "PASS: /cache/magisk & /data/adb/magisk removed"

echo "[Check 4] Visible Root Manager packages (topjohnwu | weishu):"
pm list packages | grep -E "topjohnwu|weishu" || echo "PASS: 0 visible root packages"

echo "[Check 5] boot_a ramdisk verification (magiskboot cpio test):"
mkdir -p /data/local/tmp/verify_boot_a
cd /data/local/tmp/verify_boot_a
dd if=/dev/block/by-name/boot_a of=boot_a_now.img bs=4096 2>/dev/null
/data/adb/ksu/bin/magiskboot unpack boot_a_now.img >/dev/null 2>&1
/data/adb/ksu/bin/magiskboot cpio ramdisk.cpio test
echo "boot_a cpio test exit code: $? (0 = clean stock ramdisk)"
cd /
rm -rf /data/local/tmp/verify_boot_a /data/local/tmp/ksu_allowlist_new.bin /data/local/tmp/sync_booster.sh
