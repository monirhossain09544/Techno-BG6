#!/system/bin/sh
echo "=== 1. CHECK SPI DRIVERS & CTS PROC ==="
ls -la /sys/bus/spi/drivers/
ls -la /sys/bus/spi/devices/
ls -la /sys/devices/virtual/sprd_sensorhub_tp/device/

echo "=== 2. DISABLE GESTURE MODE IN REAL /proc/gesture_function ==="
umount -l /proc/gesture_function 2>/dev/null
echo -n "cc0" > /proc/gesture_function 2>/dev/null
echo -n "al0" > /proc/gesture_function 2>/dev/null
cat /proc/gesture_function
cat /proc/gesture_state 2>/dev/null

echo "=== 3. CYCLE DISPLAY IN NORMAL SUSPEND MODE (func mode 0) ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
input keyevent 223
sleep 2
input keyevent 224
sleep 2

echo "=== 4. CHECK DMESG ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel" | tail -n 35
