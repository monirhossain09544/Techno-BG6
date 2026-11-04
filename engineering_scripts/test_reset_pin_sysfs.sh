#!/system/bin/sh
echo "=== 1. CHECK LIVE IRQ COUNT & PIN ==="
cat /sys/bus/spi/devices/spi3.0/misc/irq_info
cat /sys/bus/spi/devices/spi3.0/misc/irq_pin
cat /sys/bus/spi/devices/spi3.0/misc/reset_pin
cat /sys/bus/spi/devices/spi3.0/misc/program_mode

echo "=== 2. TEST RESET_PIN_TEST SYSFS ==="
cat /sys/bus/spi/devices/spi3.0/test/reset_pin_test

echo "=== 3. DMESG AFTER RESET_PIN_TEST ==="
dmesg | grep -iE "cts|chipone|tran_touch" | tail -n 40
cat /sys/bus/spi/devices/spi3.0/misc/irq_info
