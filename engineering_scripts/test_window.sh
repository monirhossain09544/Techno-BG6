#!/system/bin/sh
input keyevent 224
sleep 1
for d in 500 1000 2000 3000; do
    echo "=== Testing d=$d ==="
    echo 0 > /sys/chipone-tddi/misc/reset_pin
    usleep 10000
    echo 1 > /sys/chipone-tddi/misc/reset_pin
    usleep $d
    echo "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file && break
done
dmesg | grep -E "CTS-" | tail -n 45