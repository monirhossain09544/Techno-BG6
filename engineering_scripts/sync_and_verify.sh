#!/system/bin/sh
mount -o remount,rw /data/adb/modules 2>/dev/null
cp -af /data/local/tmp/system.prop /data/adb/modules/bg6_hios_pro/system.prop
cp -af /data/local/tmp/service.sh /data/adb/modules/bg6_hios_pro/service.sh
chmod 0644 /data/adb/modules/bg6_hios_pro/system.prop
chmod 0755 /data/adb/modules/bg6_hios_pro/service.sh
settings put global device_idle_constants "inactive_to=30000,sensing_to=0,locating_to=30000,location_accuracy=5.0,motion_inactive_to=0,idle_after_inactive_to=0,light_after_inactive_to=15000,light_pre_idle_to=30000,light_idle_to=300000,light_idle_factor=2.0,light_max_idle_to=900000"
sh /data/local/tmp/verify_features.sh
rm -f /data/local/tmp/system.prop /data/local/tmp/service.sh /data/local/tmp/verify_features.sh /data/local/tmp/sync_and_verify.sh
