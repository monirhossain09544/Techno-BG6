#!/system/bin/sh
input keyevent 224
sleep 1
echo "=== Testing reset_pin_test while screen is AWAKE ==="
cat /sys/chipone-tddi/test/reset_pin_test
echo "=== dmesg after awake reset_pin_test ==="
dmesg | grep -E "drm|panel|CTS-|tran_touch" | tail -n 35