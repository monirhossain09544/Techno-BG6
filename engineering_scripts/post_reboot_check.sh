#!/system/bin/sh
echo "=== 1. WAKE SCREEN & DISMISS KEYGUARD ==="
input keyevent 224
wm dismiss-keyguard
sleep 1

echo "=== 2. CHECK TOUCH CONTROLLER WITH SCREEN AWAKE ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/curr_version
cat /sys/bus/spi/devices/spi3.0/cts_firmware/esd_protection
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable

echo "=== 3. BOOT DMESG TOUCH LOGS ==="
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel|gesture" | head -n 80
echo "--- TAIL ---"
dmesg | grep -iE "cts|chipone|tran_touch|sprd_panel|gesture" | tail -n 60

echo "=== 4. CAPTURE CONTROL CENTER SCREENSHOT ==="
cmd statusbar expand-settings
sleep 2
screencap -p /data/local/tmp/qs_after_reboot.png
cmd statusbar collapse
ls -la /data/local/tmp/qs_after_reboot.png
