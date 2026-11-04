#!/system/bin/sh
echo "=== Recent DRM + CTS dmesg ==="
dmesg | grep -E "drm|panel|CTS-|tran_touch|adaptive" | tail -n 80
echo "=== Testing reset_pin_test ==="
cat /sys/chipone-tddi/test/reset_pin_test
echo "=== dmesg after reset_pin_test ==="
dmesg | grep -E "drm|panel|CTS-|tran_touch|adaptive" | tail -n 40