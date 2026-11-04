#!/system/bin/sh
cd /data/local/tmp/boot_test
mkdir -p cpio_extract
cd cpio_extract
/data/adb/ksu/bin/busybox cpio -idm < ../ramdisk.cpio 2>&1
ls -la init
file init 2>/dev/null || /data/adb/ksu/bin/busybox head -c 16 init | /data/adb/ksu/bin/busybox hexdump -C
cd /data/local/tmp/boot_test
echo "=== Unpack boot_nomagisk.img to verify ==="
mkdir -p verify_repack
cd verify_repack
/data/adb/ksu/bin/magiskboot unpack ../boot_nomagisk.img 2>&1
ls -la
