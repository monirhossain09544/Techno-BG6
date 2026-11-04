#!/system/bin/sh
echo "=== 1. Check /sys/chipone-tddi/misc and cts_firmware ==="
ls -la /sys/chipone-tddi/misc
cat /sys/chipone-tddi/cts_firmware/driver_builtin_firmware
echo 0 > /sys/chipone-tddi/misc/gesture_en 2>/dev/null
echo "gesture_en: $(cat /sys/chipone-tddi/misc/gesture_en 2>/dev/null)"

echo "=== 2. Trigger builtin firmware reload to SRAM ==="
echo 0 > /sys/chipone-tddi/cts_firmware/driver_builtin_firmware 2>&1
sleep 2
cat /sys/chipone-tddi/cts_firmware/curr_version
dmesg | grep -iE "CTS|icnl" | tail -n 25
