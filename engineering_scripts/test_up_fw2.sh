#!/system/bin/sh
dmesg -c >/dev/null
echo "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file
sleep 2
dmesg | grep -E "CTS|tran_touch"
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/misc/irq_info