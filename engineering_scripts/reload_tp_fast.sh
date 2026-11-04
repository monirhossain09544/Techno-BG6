#!/system/bin/sh
pkill -9 -f "find /sys /proc" 2>/dev/null
echo "=== 1. ENSURE PSENSOR_ENABLE = 0 AND GESTURE_FUNCTION = al0 (OFF) ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable

echo "=== 2. CYCLE DISPLAY OFF -> ON TO RELOAD ICNL9916 SRAM FIRMWARE ==="
input keyevent 223
sleep 2
input keyevent 224
sleep 2

echo "=== 3. CHECK DMESG FOR CTS FIRMWARE RELOAD ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel" | tail -n 40
