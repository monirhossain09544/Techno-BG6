#!/system/bin/sh
echo 6000 > /sys/chipone-tddi/misc/debug_spi
cat /sys/chipone-tddi/misc/debug_spi
ls -la /sys/chipone-tddi/ /sys/chipone-tddi/*