#!/system/bin/sh
dmesg | grep -E "CTS-|sprd_panel|tran_touch|icnl" > /data/local/tmp/boot_cts_dmesg.txt
head -n 120 /data/local/tmp/boot_cts_dmesg.txt
echo "=== TAIL ==="
tail -n 60 /data/local/tmp/boot_cts_dmesg.txt
echo "=== IRQ & FW ==="
cat /sys/bus/spi/devices/spi3.0/misc/irq_info
cat /sys/bus/spi/devices/spi3.0/misc/fw_version
cat /sys/bus/spi/devices/spi3.0/misc/game_mode
cat /proc/gesture_state
