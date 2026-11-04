#!/system/bin/sh
echo "=== CHECKING / RESTORING TOUCH & TESTING RESET+UPDATE ==="
# Pulse reset_pin or check program_mode
cat /sys/chipone-tddi/cts_firmware/driver_info 2>&1
dmesg | grep -iE "CTS-|sprd-drm" | tail -n 25