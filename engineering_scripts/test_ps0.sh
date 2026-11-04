#!/system/bin/sh
echo "=== Flash info ==="
cat /sys/chipone-tddi/flash/info
echo "=== Testing psensor_enable = 0 (AVDD/AVEE OFF on sleep, GPIO 50 LCD reset on wake) ==="
chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
dmesg -c >/dev/null
input keyevent 26
sleep 3
input keyevent 224
sleep 2
echo "=== dmesg after wake with psensor_enable = 0 ==="
dmesg | grep -E "drm|CTS|tran_ts|sprd_panel"
echo "=== curr_version & irq_info after wake with psensor_enable = 0 ==="
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/misc/irq_info
