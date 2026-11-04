#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
cp -f /data/local/tmp/dt2w_daemon "$MODDIR/bin/dt2w_daemon"
chmod 0755 "$MODDIR/bin/dt2w_daemon"
chown 0:0 "$MODDIR/bin/dt2w_daemon"

cp -f /data/local/tmp/service.sh "$MODDIR/service.sh"
chmod 0755 "$MODDIR/service.sh"

cp -f /data/local/tmp/system.prop "$MODDIR/system.prop"
chmod 0644 "$MODDIR/system.prop"

rm -f /data/local/tmp/dt2w_daemon /data/local/tmp/service.sh /data/local/tmp/system.prop /data/local/tmp/restore_dt2w.sh

resetprop -n ro.tapping_wake_support 1
resetprop -n ro.tapping_broadcast_support 1
settings put system os_action_tapping_wake 1
settings put global os_action_tapping_wake 1

if [ -e /proc/gesture_function ]; then
    umount /proc/gesture_function 2>/dev/null
    echo -n "cc0" > /dev/dt2w_state
    chmod 0666 /dev/dt2w_state
    mount -o bind /dev/dt2w_state /proc/gesture_function 2>/dev/null
fi

if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    echo 1 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
fi

pm enable com.transsion.microintelligence/com.transsion.microintelligence.TappingWakeActivity >/dev/null 2>&1
pm enable com.transsion.microintelligence/com.transsion.microintelligence.TappingBroadcastActivity >/dev/null 2>&1

killall -9 dt2w_daemon 2>/dev/null
if runcon u:r:magisk:s0 true 2>/dev/null; then
    nohup runcon u:r:magisk:s0 "$MODDIR/bin/dt2w_daemon" >/dev/null 2>&1 &
elif runcon u:r:su:s0 true 2>/dev/null; then
    nohup runcon u:r:su:s0 "$MODDIR/bin/dt2w_daemon" >/dev/null 2>&1 &
else
    nohup "$MODDIR/bin/dt2w_daemon" >/dev/null 2>&1 &
fi

sleep 1
echo "=== VERIFY DT2W STATUS ==="
echo "ro.tapping_wake_support=$(getprop ro.tapping_wake_support)"
echo "os_action_tapping_wake=$(settings get system os_action_tapping_wake)"
echo "psensor_enable=$(cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null)"
echo "gesture_function=$(cat /proc/gesture_function 2>/dev/null)"
echo "dt2w_daemon_pid=$(pidof dt2w_daemon)"
cat /data/local/tmp/dt2w.log 2>/dev/null
