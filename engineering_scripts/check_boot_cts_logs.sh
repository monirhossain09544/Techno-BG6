#!/system/bin/sh
SYS="/sys/bus/spi/devices/spi3.0"
echo "=== 1. ALL SYSFS UNDER spi3.0 ==="
find $SYS/ -maxdepth 2
echo "=== 2. FIRMWARE & MISC SYSFS VALUES ==="
for f in $SYS/chipone-tddi/firmware/* $SYS/chipone-tddi/misc/* $SYS/firmware/* $SYS/misc/* $SYS/flash/*; do
    if [ -f "$f" ]; then
        echo "--- $f ---"
        cat "$f" 2>/dev/null | head -n 10
    fi
done
echo "=== 3. KERNEL LOGCAT FOR CTS / TOUCH SINCE BOOT ==="
logcat -d -b kernel | grep -iE "CTS-|tran_touch|sprd_panel" | head -n 60
echo "=== 4. KERNEL LOGCAT TAIL ==="
logcat -d -b kernel | grep -iE "CTS-|tran_touch|sprd_panel" | tail -n 60
