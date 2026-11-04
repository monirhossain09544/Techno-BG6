#!/system/bin/sh
echo 1 > /sys/module/chipone_icnl99xx/parameters/debug_log
cat /sys/bus/spi/devices/spi3.0/misc/game_mode
echo 0 > /sys/module/chipone_icnl99xx/parameters/debug_log
dmesg | grep -i "CTS-" | tail -n 15
