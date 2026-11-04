#!/system/bin/sh
echo "=== 1. SCREEN OFF WITH PSENSOR=0 (FULL PANEL UNPREPARE) ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo 0 > /sys/bus/spi/devices/spi3.0/misc/proximity_mode
input keyevent 223
sleep 2

echo "=== 2. ENABLE PROXIMITY_MODE WHILE OFF SO RESUME SKIPS GPIO 209 RESET ==="
echo 1 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo 1 > /sys/bus/spi/devices/spi3.0/misc/proximity_mode
sleep 1

echo "=== 3. WAKE SCREEN (DDI RELOADS SRAM, CTS_RESUME SKIPS RESET) ==="
input keyevent 224
sleep 2
wm dismiss-keyguard

echo "=== 4. CHECK ESD PROTECTION & DMESG ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/curr_version
cat /sys/bus/spi/devices/spi3.0/cts_firmware/esd_protection
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel" | tail -n 35
