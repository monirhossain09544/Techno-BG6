#!/system/bin/sh
cat /sys/chipone-tddi/misc/debug_spi
echo 1 > /sys/chipone-tddi/misc/debug_spi
cat /sys/chipone-tddi/misc/debug_spi
input keyevent 224
sleep 1
echo 0 > /sys/chipone-tddi/misc/debug_spi
dmesg | grep -E "CTS-" | tail -n 40