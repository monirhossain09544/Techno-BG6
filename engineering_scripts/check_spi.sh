#!/system/bin/sh
echo "=== spi in dmesg ==="
dmesg | grep -i spi | tail -n 40
echo "=== spi modules ==="
ls -la /vendor/lib/modules/*spi* 2>/dev/null
echo "=== spi devices ==="
ls -la /sys/bus/spi/devices/ /sys/bus/platform/drivers/*spi*