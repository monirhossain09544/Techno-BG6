#!/system/bin/sh
cd /data/local/tmp/boot_test
cp ramdisk.cpio ramdisk_orig.cpio
echo "=== Testing magiskboot cpio restore ==="
/data/adb/ksu/bin/magiskboot cpio ramdisk.cpio restore 2>&1
echo "restore exit code: $?"
/data/adb/ksu/bin/magiskboot cpio ramdisk.cpio test 2>&1
echo "after restore test exit code: $?"
ls -la ramdisk*.cpio

echo "=== Repacking boot_nomagisk.img in /data/local/tmp/boot_test ==="
/data/adb/ksu/bin/magiskboot repack boot_a.img boot_nomagisk.img 2>&1
ls -la boot_nomagisk.img

echo "=== Checking which classes*.dex in Foodpanda has rootedDevice / magisk ==="
FP_APK=$(pm path com.logistics.rider.foodpanda | head -n 1 | cut -d: -f2)
mkdir -p /data/local/tmp/fp_dex
cd /data/local/tmp/fp_dex
unzip -oq "$FP_APK" "classes*.dex"
grep -l "rootedDevice" classes*.dex
grep -l "topjohnwu" classes*.dex
grep -l "debug_ramdisk" classes*.dex
grep -l "RootBeer" classes*.dex
