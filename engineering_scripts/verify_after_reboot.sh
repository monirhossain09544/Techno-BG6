#!/system/bin/sh
echo "=== 1. TOUCH & DISPLAY PROTECTION STATE ==="
echo "psensor_enable: $(cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null)"
ls -l /proc/gesture_function
echo "dt2w_daemon pid: $(pidof dt2w_daemon)"
echo "stay_on_while_plugged_in: $(settings get global stay_on_while_plugged_in)"
echo "os_action_tapping_wake: $(settings get system os_action_tapping_wake)"
echo "cabc: $(getprop persist.sys.pq.cabc.enabled) dci: $(getprop persist.sys.pq.dci.enabled)"

echo "=== 2. TOUCH FIRMWARE & SLEEP/WAKE TEST ==="
dmesg | grep -E "CTS-Core|CTS-Firmware|CTS-Plat|sprd_panel|tran_touch" | tail -n 35
