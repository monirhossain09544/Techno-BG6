#!/system/bin/sh
echo "=== 1. CHECK GESTURE_WAKEUP_ENABLED / SYSFS ==="
find /sys /proc -name "*gesture*" -o -name "*cts*" -o -name "*chipone*" -o -name "*tran_touch*" 2>/dev/null
cat /sys/devices/virtual/sprd_sensorhub_tp/device/* 2>/dev/null

echo "=== 2. CYCLE DISPLAY OFF AND ON IN TRAN_PS_OFF MODE ==="
input keyevent 223
sleep 2
input keyevent 224
sleep 2

echo "=== 3. CHECK DMESG AFTER DISPLAY CYCLE ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel|dsi" | tail -n 50
