#!/system/bin/sh
echo "=== 1. Check bg6_hios_pro scripts ==="
ls -la /data/adb/modules/bg6_hios_pro/
echo "--- post-fs-data.sh ---"
cat /data/adb/modules/bg6_hios_pro/post-fs-data.sh 2>/dev/null
echo "--- service.sh ---"
cat /data/adb/modules/bg6_hios_pro/service.sh 2>/dev/null

echo "=== 2. Test boot_a unpack & cpio test in /data/local/tmp/boot_test ==="
rm -rf /data/local/tmp/boot_test
mkdir -p /data/local/tmp/boot_test
cd /data/local/tmp/boot_test
dd if=/dev/block/by-name/boot_a of=boot_a.img bs=4096 2>/dev/null
/data/adb/ksu/bin/magiskboot unpack boot_a.img 2>&1
ls -la /data/local/tmp/boot_test/
/data/adb/ksu/bin/magiskboot cpio ramdisk.cpio test 2>&1
echo "cpio test exit code: $?"

echo "=== 3. Find which dex in foodpanda has rootedDevice ==="
FP_APK=$(pm path com.logistics.rider.foodpanda | head -n 1 | cut -d: -f2)
echo "FP_APK=$FP_APK"
unzip -l "$FP_APK" | grep "classes"
