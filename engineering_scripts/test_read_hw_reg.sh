#!/system/bin/sh
echo 1 > /sys/bus/spi/devices/spi3.0/misc/program_mode
echo "0x00000 4" > /sys/bus/spi/devices/spi3.0/misc/read_hw_reg
cat /sys/bus/spi/devices/spi3.0/misc/read_hw_reg
echo "0x30000 4" > /sys/bus/spi/devices/spi3.0/misc/read_hw_reg
cat /sys/bus/spi/devices/spi3.0/misc/read_hw_reg
echo "0x30010 4" > /sys/bus/spi/devices/spi3.0/misc/read_hw_reg
cat /sys/bus/spi/devices/spi3.0/misc/read_hw_reg
