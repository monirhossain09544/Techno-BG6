#!/system/bin/sh
echo "=== 1. DT2W LOG ==="
ls -la /data/local/tmp/
cat /data/local/tmp/dt2w.log 2>/dev/null | tail -n 80

echo "=== 2. BACKLIGHT & TOUCH SYSFS ==="
ls -l /sys/class/backlight/sprd_backlight/brightness
cat /sys/class/backlight/sprd_backlight/brightness
cat /sys/class/backlight/sprd_backlight/actual_brightness 2>/dev/null
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
cat /proc/gesture_function 2>/dev/null
echo ""

echo "=== 3. DMESG TOUCH / CTS / PANEL ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel|backlight|input" | tail -n 60

echo "=== 4. DUMPSYS INPUT (GRABBED DEVICES & TOUCH STATE) ==="
dumpsys input | head -n 120

echo "=== 5. SYSTEMUI / NOTIFICATION PANEL STATE ==="
settings get secure sysui_qs_tiles
getprop | grep -E "qs|status_bar|dynamic|notify|blur|traneffect"
dumpsys activity top | grep -E "ACTIVITY|mResumed"
