#!/system/bin/sh
mount -o remount,rw /data/adb/modules 2>/dev/null
cp -af /data/local/tmp/post-fs-data.sh /data/adb/modules/bg6_hios_pro/post-fs-data.sh
cp -af /data/local/tmp/service.sh /data/adb/modules/bg6_hios_pro/service.sh
chmod 0755 /data/adb/modules/bg6_hios_pro/post-fs-data.sh /data/adb/modules/bg6_hios_pro/service.sh
sh /data/local/tmp/verify_features.sh
rm -f /data/local/tmp/post-fs-data.sh /data/local/tmp/service.sh /data/local/tmp/verify_features.sh /data/local/tmp/final_sync.sh
