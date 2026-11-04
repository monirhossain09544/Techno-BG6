#!/system/bin/sh
echo 1 > /sys/class/adaptive-ts/fts/psensor_enable
cat /sys/class/adaptive-ts/fts/psensor_enable
input keyevent 223
sleep 2
input keyevent 224
sleep 2
echo "=== dmesg after sleep/wake with psensor_enable=1 ==="
dmesg | grep -E "drm|panel|CTS-|tran_touch" | tail -n 50
echo "=== firmware_version ==="
cat /sys/chipone-tddi/ic/firmware_version