#!/system/bin/sh
dmesg -c > /dev/null
echo "=== TEST 1: READ TCS REG VIA SYSFS ==="
cat /sys/chipone-tddi/ic/fw_version 2>&1
cat /sys/chipone-tddi/cts_firmware/curr_version 2>&1
cat /sys/chipone-tddi/misc/int_data_types 2>&1
cat /sys/chipone-tddi/misc/int_data_method 2>&1
dmesg | grep -iE "CTS-|chipone"