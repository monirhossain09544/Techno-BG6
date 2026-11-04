#!/system/bin/sh
input keyevent 224
sleep 1
echo "=== READING SYSFS WHILE AWAKE ==="
for f in /sys/chipone-tddi/cts_firmware/curr_version \
         /sys/chipone-tddi/cts_firmware/curr_ddi_version \
         /sys/chipone-tddi/cts_firmware/rows \
         /sys/chipone-tddi/cts_firmware/cols \
         /sys/chipone-tddi/cts_firmware/res_x \
         /sys/chipone-tddi/cts_firmware/res_y \
         /sys/chipone-tddi/cts_firmware/esd_protection \
         /sys/chipone-tddi/misc/charger_state \
         /sys/chipone-tddi/misc/edge_restain \
         /sys/chipone-tddi/misc/program_mode; do
    echo "--- $f ---"
    cat "$f" 2>&1
done
dmesg | grep "CTS-" | tail -n 35