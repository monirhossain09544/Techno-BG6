#!/system/bin/sh
input keyevent 224
sleep 1
echo "=== Triggering update_from_file with filename only (chipone_ts_fw_01.bin) ==="
echo -n "chipone_ts_fw_01.bin" > /sys/chipone-tddi/cts_firmware/update_from_file
sleep 2
echo "=== dmesg after update_from_file ==="
dmesg | grep -E "CTS-|tran_touch" | tail -n 50
echo "=== curr_version ==="
cat /sys/chipone-tddi/cts_firmware/curr_version