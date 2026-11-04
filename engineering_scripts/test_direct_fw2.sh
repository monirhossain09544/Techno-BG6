#!/system/bin/sh
input keyevent 224
sleep 1
echo "=== TEST 4: Wake + 10ms LOW + HIGH + immediate update_from_file ==="
echo 0 > /sys/chipone-tddi/misc/reset_pin
usleep 10000
echo 1 > /sys/chipone-tddi/misc/reset_pin
echo "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file
dmesg | grep -E "CTS-" | tail -n 35