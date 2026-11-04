#!/system/bin/sh
PS_PATH=$(find /sys -name "*psensor*" 2>/dev/null | head -n 1)
echo "Found psensor path: $PS_PATH"
ls -la $PS_PATH
chmod 0664 $PS_PATH
echo 0 > $PS_PATH
echo "psensor value now: $(cat $PS_PATH 2>&1)"

echo "=== Power cycling panel cleanly with psensor_enable=0 and gesture_state=0 ==="
input keyevent 223
sleep 4
input keyevent 224
sleep 2
input keyevent 82

echo "=== After cycle ==="
cat /sys/bus/spi/devices/spi3.0/misc/irq_info
echo "=== Testing game_mode (SPI TCS communication) ==="
cat /sys/bus/spi/devices/spi3.0/misc/game_mode 2>&1
dmesg | grep -E "CTS-|drm|panel" | tail -n 35
