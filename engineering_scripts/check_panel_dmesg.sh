#!/system/bin/sh
echo "=== ALL sprd_panel / drm_panel / doze in dmesg ==="
dmesg | grep -E "sprd_panel|doze|panel off|shutdown process|touch_suspend_mode|CTS-Core|CTS-Plat" | tail -n 100
