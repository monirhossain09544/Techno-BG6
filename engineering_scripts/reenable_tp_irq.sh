#!/system/bin/sh
SYS="/sys/bus/spi/devices/spi3.0"
echo 0 > $SYS/misc/program_mode
cat $SYS/misc/program_mode
input keyevent 223
sleep 4
input keyevent 224
sleep 1
input keyevent 82
cat $SYS/misc/irq_info
cat $SYS/cts_firmware/curr_version
dmesg | grep -iE "CTS-|tran_touch|sprd_panel" | tail -n 25
