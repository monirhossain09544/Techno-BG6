#!/system/bin/sh
SYS="/sys/bus/spi/devices/spi3.0"
echo 0 > $SYS/misc/program_mode
input keyevent 26
sleep 1
input keyevent 26
sleep 1
input keyevent 82
cat $SYS/ic_status 2>/dev/null
cat $SYS/misc/ic_status 2>/dev/null
dmesg | tail -n 35
