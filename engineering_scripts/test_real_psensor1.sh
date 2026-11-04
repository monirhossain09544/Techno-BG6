#!/system/bin/sh
chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo 1 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo -n "psensor_enable is now: "
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
input keyevent 223
sleep 2
input keyevent 224
sleep 2
echo "=== dmesg after sleep/wake with real psensor_enable=1 ==="
dmesg | grep -E "drm|panel|CTS-|tran_touch" | tail -n 45
echo "=== curr_version ==="
cat /sys/chipone-tddi/cts_firmware/curr_version