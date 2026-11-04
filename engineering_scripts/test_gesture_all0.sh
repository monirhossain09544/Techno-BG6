#!/system/bin/sh
echo "=== 1. SET ALL 17 GESTURE BITS TO 0 ==="
for cmd in al0 cc0 aa0 bb0 ab0 ba0 5e0 3e0 fp0 w00 o00 m00 e00 c00 z00 s00 v00; do
    echo "$cmd" > /proc/gesture_function 2>/dev/null
done
echo "=== gesture_state after *0 ==="
cat /proc/gesture_state

echo "=== 2. CYCLE DISPLAY IN NORMAL SUSPEND MODE (func mode 0) ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
input keyevent 223
sleep 2
input keyevent 224
sleep 2

echo "=== 3. CHECK DMESG ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel" | tail -n 35
