#!/system/bin/sh
echo "=== DMESG RANGE ==="
dmesg | head -n 3
dmesg | tail -n 5

echo "=== LOGCAT KERNEL PANEL / TOUCH ==="
logcat -b kernel -d | grep -i -E "sprd_panel|doze|panel off|shutdown process|touch_suspend_mode|CTS-Core|CTS-Plat|CTS-Firmware|corner" | tail -n 100
