#!/system/bin/sh
echo "=== /vendor/firmware ==="
ls -la /vendor/firmware/*chipone* /vendor/firmware/*icnl* /vendor/firmware/*99* /vendor/firmware/*ts* /vendor/firmware/*tp* 2>/dev/null
ls -la /vendor/firmware/
echo "=== driver_builtin_firmware ==="
cat /sys/devices/platform/soc/soc:ap-apb/20150000.spi/spi_master/spi3/spi3.0/cts_firmware/driver_builtin_firmware 2>/dev/null
cat /sys/chipone-tddi/cts_firmware/* 2>/dev/null
ls -la /sys/chipone-tddi/cts_firmware/ 2>/dev/null