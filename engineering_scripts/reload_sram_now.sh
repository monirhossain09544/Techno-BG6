#!/system/bin/sh
echo "=== 1. DISABLE GESTURE WAKEUP IN CTS ==="
echo 0 > /sys/bus/spi/devices/spi3.0/misc/gesture_en 2>/dev/null
cat /sys/bus/spi/devices/spi3.0/misc/gesture_en 2>/dev/null

echo "=== 2. RELOAD FIRMWARE TO SRAM VIA request_firmware (NO LEADING SLASH) ==="
echo "chipone_ts_fw_01.bin sram" > /sys/bus/spi/devices/spi3.0/cts_firmware/update_from_file 2>/dev/null
sleep 2

echo "=== 3. CHECK curr_version & esd_protection ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/curr_version
cat /sys/bus/spi/devices/spi3.0/cts_firmware/esd_protection
dmesg | grep -iE "cts|chipone" | tail -n 35
