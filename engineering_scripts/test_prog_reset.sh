#!/system/bin/sh
input keyevent 224
sleep 1
echo "=== TEST 1: reset_pin 0 -> 1 then update_from_file ==="
echo 0 > /sys/chipone-tddi/misc/reset_pin
usleep 10000
echo 1 > /sys/chipone-tddi/misc/reset_pin
usleep 5000
echo "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file
dmesg | grep -E "CTS-" | tail -n 35