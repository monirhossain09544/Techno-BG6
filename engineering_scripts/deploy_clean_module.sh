#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
cp /data/local/tmp/new_post-fs-data.sh "$MODDIR/post-fs-data.sh"
cp /data/local/tmp/new_service.sh "$MODDIR/service.sh"
cp /data/local/tmp/new_system.prop "$MODDIR/system.prop"
cp /data/local/tmp/new_customize.sh "$MODDIR/customize.sh"

chmod 0755 "$MODDIR/post-fs-data.sh" "$MODDIR/service.sh" "$MODDIR/customize.sh"
chmod 0644 "$MODDIR/system.prop"
chown 0:0 "$MODDIR/post-fs-data.sh" "$MODDIR/service.sh" "$MODDIR/system.prop" "$MODDIR/customize.sh"

rm -f "$MODDIR/bin/dt2w_daemon" /dev/dt2w_state
killall -9 dt2w_daemon 2>/dev/null

# Apply native lock on /proc/gesture_function
umount /proc/gesture_function 2>/dev/null
chown 0:0 /proc/gesture_function 2>/dev/null
chmod 0444 /proc/gesture_function 2>/dev/null

# Ensure psensor_enable is 0
chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null

# Deduplicate and remount ro on xml bind-mounts
umount /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
umount /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
mount -o bind "$MODDIR/files/handheld_core_hardware.xml" /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
mount -o remount,ro,bind /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null

umount /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
umount /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
mount -o bind "$MODDIR/files/gmsexpressplus.xml" /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
mount -o remount,ro,bind /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null

# Apply runtime props and settings
resetprop -n persist.sys.traneffect.enable 0
resetprop -n ro.tran.effectengine.dynamicblur.support 0
resetprop -n ro.os_independent_tiles_anim.support 0
resetprop -n ro.tapping_wake_support 0
settings put system os_action_tapping_wake 0
settings put global os_action_tapping_wake 0
pm disable com.transsion.microintelligence/com.transsion.microintelligence.TappingWakeActivity 2>/dev/null
pm disable com.transsion.microintelligence/com.transsion.microintelligence.TappingBroadcastActivity 2>/dev/null

echo "=== Verification after live apply ==="
ls -laZ /proc/gesture_function
cat /proc/gesture_state | tr '\n' ' '
echo ""
cat /sys/bus/spi/devices/spi3.0/misc/irq_info
grep -E "loop35|KSU|gesture" /proc/mounts
