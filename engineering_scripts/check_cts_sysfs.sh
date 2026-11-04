#!/system/bin/sh
echo "=== 1. BUILTIN FIRMWARE LIST ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/driver_builtin_firmware

echo "=== 2. SYSFS ATTRIBUTES ==="
ls -la /sys/bus/spi/devices/spi3.0/
ls -la /sys/bus/spi/devices/spi3.0/cts_firmware/

echo "=== 3. RESET PIN & PROGRAM MODE STATE ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/reset_pin
cat /sys/bus/spi/devices/spi3.0/cts_firmware/program_mode
