#!/system/bin/sh
echo "=== 1. VENDOR FIRMWARE FILES ==="
ls -la /vendor/firmware/*chipone* /vendor/firmware/*icnl* /vendor/firmware/*9916* /vendor/firmware/*boe* /vendor/firmware/*ts* 2>/dev/null
ls -la /vendor/firmware/

echo "=== 2. CHECK CURR DDI VERSION & COLS/ROWS ==="
cat /sys/bus/spi/devices/spi3.0/cts_firmware/curr_ddi_version
cat /sys/bus/spi/devices/spi3.0/cts_firmware/cols
cat /sys/bus/spi/devices/spi3.0/cts_firmware/rows
