#!/system/bin/sh
echo "=== BEFORE ==="
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
cat /proc/gesture_function
cat /sys/class/drm/card0-DSI-1/dpms

dmesg -c >/dev/null
input keyevent 223
sleep 3
echo "=== DURING SLEEP ==="
cat /sys/class/drm/card0-DSI-1/dpms
dmesg | grep -E "drm|panel|dsi|CTS|tran_touch|incell"

input keyevent 224
sleep 2
echo "=== AFTER WAKE ==="
cat /sys/class/drm/card0-DSI-1/dpms
dmesg | grep -E "drm|panel|dsi|CTS|tran_touch|incell"
