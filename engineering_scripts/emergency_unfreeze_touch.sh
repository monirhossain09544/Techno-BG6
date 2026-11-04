#!/system/bin/sh
echo "=== 1. KILLING dt2w_daemon & RELEASING EVIOCGRAB ==="
killall -9 dt2w_daemon 2>/dev/null
pkill -9 -f dt2w_daemon 2>/dev/null

echo "=== 2. UNMOUNTING BACKLIGHT & GESTURE BIND MOUNTS ==="
umount -l /sys/class/backlight/sprd_backlight/brightness 2>/dev/null
umount -l /proc/gesture_function 2>/dev/null
chmod 0664 /sys/class/backlight/sprd_backlight/brightness 2>/dev/null
echo 800 > /sys/class/backlight/sprd_backlight/brightness 2>/dev/null

echo "=== 3. RESTORING CPU FREQ ==="
echo 1612000 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq 2>/dev/null
echo 1612000 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq 2>/dev/null

echo "=== 4. DISABLE PSENSOR_ENABLE & CHECK GESTURE_FUNCTION ==="
if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
fi
echo "psensor_enable: $(cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null)"
echo "gesture_function: $(cat /proc/gesture_function 2>/dev/null)"

echo "=== 5. CHECK DMESG FOR CTS ==="
dmesg | grep -iE "cts|chipone|tran_touch" | tail -n 30
