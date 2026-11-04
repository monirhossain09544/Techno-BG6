#!/system/bin/sh
echo "=== FIND KO & FW FILES ==="
find /system /vendor /product /system_ext /odm /mnt /dev /debug_ramdisk /lib -name "*chipone*" -o -name "*icnl*" -o -name "*adaptive-ts*" -o -name "*sprd_drm*" 2>/dev/null
echo "=== VENDOR FIRMWARE DIR ==="
ls -la /vendor/firmware/ /system/etc/firmware/ /etc/firmware/ /lib/firmware/ 2>/dev/null
echo "=== BLOCK DEVICES ==="
ls -la /dev/block/by-name/ 2>/dev/null
