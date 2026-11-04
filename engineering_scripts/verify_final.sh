#!/system/bin/sh
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done
sleep 6
echo "=== 1. PSENSOR & GESTURE ==="
cat /proc/gesture_function
cat /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
settings get global stay_on_while_plugged_in
echo "=== 2. SLEEP / WAKE TEST ==="
input keyevent 26
sleep 3
input keyevent 224
sleep 2
echo "=== 3. FW VERSION & IRQ ==="
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/misc/irq_info
echo "=== 4. DMESG ==="
dmesg | grep -E "CTS-|sprd_panel_|sprd_dpu_atomic_|func mode" | tail -n 30
