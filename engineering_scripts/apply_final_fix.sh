#!/system/bin/sh
dd if=/data/local/tmp/dtbo_a.img of=/dev/block/by-name/dtbo_a bs=4096 conv=fsync
cp /data/local/tmp/device_service.sh /data/adb/modules/bg6_hios_pro/service.sh
sed -i 's/\r$//' /data/adb/modules/bg6_hios_pro/service.sh
chmod 0755 /data/adb/modules/bg6_hios_pro/service.sh
rm -f /data/adb/modules/bg6_hios_pro/bin/dt2w_daemon
sha256sum /dev/block/by-name/dtbo_a /data/local/tmp/dtbo_a.img
sync
