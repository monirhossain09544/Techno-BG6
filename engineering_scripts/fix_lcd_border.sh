#!/system/bin/sh
echo "=== 1. Stop dt2w_daemon and clean up dummy mounts ==="
killall -9 dt2w_daemon 2>/dev/null
while umount -l /sys/class/backlight/sprd_backlight/brightness 2>/dev/null; do :; done
while umount -l /proc/gesture_function 2>/dev/null; do :; done
rm -f /dev/bl_dummy /dev/dt2w_state 2>/dev/null
chmod 0664 /sys/class/backlight/sprd_backlight/brightness 2>/dev/null

echo "=== 2. Disable TRAN_PS_SUSPEND_MODE (psensor_enable = 0) ==="
if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
    echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
    chmod 0444 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
    echo "psensor_enable is now: $(cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable)"
fi

if [ -e /proc/gesture_function ]; then
    chown 0:0 /proc/gesture_function 2>/dev/null
    chmod 0444 /proc/gesture_function 2>/dev/null
fi

echo "=== 3. Re-enable normal ESD check and reset DPU/PQ ==="
echo 1 > /sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/esd_check_enable 2>/dev/null
settings put system os_action_tapping_wake 0 2>/dev/null
settings put global os_action_tapping_wake 0 2>/dev/null

echo "=== 4. Power-cycle LCD panel (full AVDD/AVEE cut + hardware reset + full MIPI DSI init) ==="
input keyevent 223
sleep 2
input keyevent 224
sleep 1
dmesg | grep -iE "sprd_panel|sprd_dsi|cts|icnl" | tail -n 25
