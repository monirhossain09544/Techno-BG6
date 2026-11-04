#!/system/bin/sh
SYS="/sys/bus/spi/devices/spi3.0"
cat $SYS/misc/irq_info
cat $SYS/cts_firmware/curr_version
dmesg | grep -iE "CTS-|tran_touch|sprd_panel" | tail -n 30
