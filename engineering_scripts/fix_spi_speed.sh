#!/system/bin/sh
echo "=== BEFORE ==="
cat /sys/chipone-tddi/misc/debug_spi
cat /sys/chipone-tddi/misc/program_mode
cat /sys/chipone-tddi/misc/reset_pin
cat /sys/chipone-tddi/cts_firmware/curr_version

dmesg -c > /dev/null

echo "=== RESTORING SPI SPEED TO 6000 (6MHz) ==="
echo 6000 > /sys/chipone-tddi/misc/debug_spi
cat /sys/chipone-tddi/misc/debug_spi

echo "=== ENSURING RESET PIN HIGH AND EXITING PROGRAM MODE ==="
echo 1 > /sys/chipone-tddi/misc/reset_pin
sleep 1
echo 1 > /sys/chipone-tddi/misc/program_mode
echo 0 > /sys/chipone-tddi/misc/program_mode

echo "=== AFTER ==="
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/ic/fw_version 2>/dev/null
cat /sys/chipone-tddi/misc/charger_state
dmesg | grep -iE "CTS-|chipone" | tail -n 60