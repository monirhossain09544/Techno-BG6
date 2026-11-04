#!/system/bin/sh
input keyevent 224
echo 1 > /sys/bus/spi/devices/spi3.0/misc/program_mode
cat /sys/bus/spi/devices/spi3.0/misc/program_mode
echo "0x30010 0x02" > /sys/bus/spi/devices/spi3.0/misc/write_hw_reg
echo "chipone_ts_fw_01.bin sram" > /sys/bus/spi/devices/spi3.0/cts_firmware/update_from_file
sleep 2
dmesg | grep -iE "cts" | tail -n 35
cat /sys/bus/spi/devices/spi3.0/cts_firmware/curr_version
cat /sys/bus/spi/devices/spi3.0/cts_firmware/esd_protection
