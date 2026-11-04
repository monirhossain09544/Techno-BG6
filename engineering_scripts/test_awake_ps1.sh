#!/system/bin/sh
input keyevent 224
sleep 1
echo "=== Reading sysfs while AWAKE with psensor_enable=1 ==="
cat /sys/chipone-tddi/misc/charger_state
cat /sys/chipone-tddi/misc/edge_restain
cat /sys/chipone-tddi/cts_firmware/curr_version
echo "=== dmesg ==="
dmesg | grep -E "drm|panel|CTS-|tran_touch" | tail -n 35