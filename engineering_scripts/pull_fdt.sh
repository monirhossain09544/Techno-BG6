#!/system/bin/sh
cp /sys/firmware/fdt /data/local/tmp/live.dtb
chmod 644 /data/local/tmp/live.dtb
ls -la /sys/class/gpio/
ls -la /sys/devices/platform/soc/soc:ap-apb/*.spi/spi_master/spi*/spi*.*/
