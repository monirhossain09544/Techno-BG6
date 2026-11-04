#!/system/bin/sh
echo "=== Check all spi3.0 / chipone messages in dmesg ==="
dmesg | grep -iE "spi3|chipone|cts|9916|tpinfo|tran_touch|input"
echo "=== Enable CTS debug log and check curr_firmware_version ==="
ls /sys/bus/spi/devices/spi3.0/misc/
cat /sys/bus/spi/devices/spi3.0/misc/curr_firmware_version 2>&1
cat /sys/bus/spi/devices/spi3.0/misc/driver_version 2>&1
cat /sys/bus/spi/devices/spi3.0/misc/irq_info 2>&1
