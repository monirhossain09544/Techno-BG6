#!/system/bin/sh
echo "=== TEST 3: Direct reset_pin 0 -> 1 -> update_from_file (no usleep) ==="
echo 0 > /sys/chipone-tddi/misc/reset_pin
echo 1 > /sys/chipone-tddi/misc/reset_pin
echo "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file
dmesg | grep -E "CTS-" | tail -n 35