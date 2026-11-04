#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
echo "=== 1. All files in $MODDIR ==="
find "$MODDIR" -maxdepth 4 -ls

echo "=== 2. Check why handheld_core_hardware.xml and gmsexpressplus.xml were bind-mounted ==="
umount /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
umount /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
umount /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null

diff -u /vendor/etc/permissions/handheld_core_hardware.xml "$MODDIR/files/handheld_core_hardware.xml"
echo "---"
diff -u /product/etc/sysconfig/gmsexpressplus.xml "$MODDIR/files/gmsexpressplus.xml"

echo "=== 3. Re-mount with source name KSU or check /proc/mounts ==="
grep -E "loop|KSU|ksu|bg6" /proc/mounts
