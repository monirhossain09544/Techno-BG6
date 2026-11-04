#!/system/bin/sh
echo "=== 1. CONFIG & MISC ATTRS ==="
ls -la /sys/bus/spi/drivers/chipone-tddi/config/
cat /sys/bus/spi/devices/spi3.0/misc/ic_type
cat /sys/bus/spi/devices/spi3.0/misc/program_mode
cat /sys/bus/spi/devices/spi3.0/misc/reset_pin
cat /sys/bus/spi/devices/spi3.0/misc/proximity_mode
cat /sys/bus/spi/devices/spi3.0/misc/gesture_en
cat /sys/bus/spi/devices/spi3.0/misc/irq_info

echo "=== 2. TEST NORMAL PANEL SUSPEND/RESUME WITH GESTURE_STATE=0 AND PSENSOR=0 ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo 0 > /sys/bus/spi/devices/spi3.0/misc/proximity_mode 2>/dev/null
echo 0 > /sys/bus/spi/devices/spi3.0/misc/gesture_en 2>/dev/null
input keyevent 223
sleep 2
input keyevent 224
sleep 1
wm dismiss-keyguard

echo "=== 3. CHECK ESD PROTECTION & DMESG ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/esd_protection
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel" | tail -n 35
