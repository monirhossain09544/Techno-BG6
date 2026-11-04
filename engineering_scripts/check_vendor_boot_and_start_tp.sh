#!/system/bin/sh
SYS="/sys/bus/spi/devices/spi3.0"
echo "=== 1. EXIT PROGRAM MODE & WAKE ==="
echo 0 > $SYS/misc/program_mode
cat $SYS/misc/ic_ status 2>/dev/null
cat $SYS/misc/ic_status
echo "=== 2. CHECK VENDOR_BOOT_A HEADER ==="
dd if=/dev/block/by-name/vendor_boot_a bs=4096 count=1 2>/dev/null | strings | head -n 30
echo "=== 3. CHECK /proc/modules FOR TOUCH & DRM ==="
cat /proc/modules | grep -E "chipone|adaptive|sprd_drm|tran_gesture"
