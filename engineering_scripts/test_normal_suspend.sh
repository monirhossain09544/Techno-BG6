#!/system/bin/sh
echo "=== Current psensor_enable ==="
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
echo "=== Current firmwork_version ==="
cat /sys/devices/virtual/sprd_sensorhub_tp/device/firmwork_version
echo "=== Setting psensor_enable = 0 (TRAN_NORMAL_SUSPEND_MODE) ==="
echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
dmesg -c >/dev/null
echo "=== Sleeping screen for 3s (AVDD/AVEE OFF) ==="
input keyevent 26
sleep 3
echo "=== Waking screen (AVDD/AVEE ON + LCD RESET GPIO 50 PULSE) ==="
input keyevent 224
sleep 2
echo "=== dmesg after wake ==="
dmesg | grep -E "drm|CTS|tran_ts|sprd_panel"
echo "=== firmwork_version after wake ==="
cat /sys/devices/virtual/sprd_sensorhub_tp/device/firmwork_version
