#!/system/bin/sh
input keyevent 224
sleep 1
chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo "psensor_enable while awake:"
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
dmesg -c >/dev/null
echo "Now sleeping screen (223)..."
input keyevent 223
sleep 3
echo "Now waking screen (224)..."
input keyevent 224
sleep 2
echo "=== dmesg during sleep + wake with psensor_enable=0 ==="
dmesg | grep -E "drm|CTS|tran_ts|tran_touch|sprd_panel"
echo "=== curr_version & irq_info ==="
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/misc/irq_info