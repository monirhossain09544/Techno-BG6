#!/system/bin/sh
input keyevent 224
sleep 1
for n in 100 200 300 400 500 600 800 1000 1200 1500; do
    echo "=== Testing loop n=$n ==="
    echo 0 > /sys/chipone-tddi/misc/reset_pin
    usleep 10000
    echo 1 > /sys/chipone-tddi/misc/reset_pin
    i=0
    while [ $i -lt $n ]; do
        i=$((i+1))
    done
    echo "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file
done
dmesg | grep -E "CTS-" | tail -n 65