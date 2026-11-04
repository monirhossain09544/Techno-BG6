#!/system/bin/sh
echo "=== 1. DRIVER SYSFS ATTRS ==="
ls -la /sys/bus/spi/drivers/chipone-tddi/
echo "=== 2. SPI3.0 SUBDIRS ==="
ls -la /sys/bus/spi/devices/spi3.0/test/
ls -la /sys/bus/spi/devices/spi3.0/misc/
ls -la /sys/bus/spi/devices/spi3.0/flash/
echo "=== 3. WHERE ARE TOUCH .KO FILES LOCATED ==="
find /vendor /system /odm /lib -name "chipone_icnl99xx.ko" -o -name "adaptive-ts.ko" 2>/dev/null
cat /proc/modules | grep -E "chipone|adaptive|tran_gesture|sprd_panel|mipi"
