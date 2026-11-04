#!/system/bin/sh
echo "=== 1. TURN OFF ALL GESTURE BITS IN /proc/gesture_function ==="
umount -l /proc/gesture_function 2>/dev/null
for cmd in al1 cc1 w01 c01 aa1 bb1 ab1 ba1 5e1 3e1 fp1 o01 m01 e01 z01 s01 v01; do
    echo -n "$cmd" > /proc/gesture_function 2>/dev/null
done
echo "=== gesture_state after *1 ==="
cat /proc/gesture_state

echo "=== 2. CYCLE DISPLAY IN NORMAL SUSPEND MODE (func mode 0) ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
input keyevent 223
sleep 2
input keyevent 224
sleep 2

echo "=== 3. CHECK DMESG ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel" | tail -n 35
