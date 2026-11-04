#!/system/bin/sh
SYS="/sys/bus/spi/devices/spi3.0"
cat $SYS/test/int_pin_test
cat $SYS/misc/irq_info
dmesg | grep -iE "CTS-|tran_touch" | tail -n 20
