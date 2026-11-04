#!/system/bin/sh
mkdir -p /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager
cp -f /data/local/tmp/OSFileManager_patched.apk /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager/OSFileManager.apk
chmod 644 /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager/OSFileManager.apk
chown 0:0 /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager/OSFileManager.apk
chcon u:object_r:system_file:s0 /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager/OSFileManager.apk

nsenter -t 1 -m -- sh -c '
  while umount -l /system_ext/app/OSFileManager/OSFileManager.apk 2>/dev/null; do :; done
  mount -o bind /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager/OSFileManager.apk /system_ext/app/OSFileManager/OSFileManager.apk
'
ZPID=$(pidof zygote64)
if [ -n "$ZPID" ]; then
  nsenter -t "$ZPID" -m -- sh -c '
    while umount -l /system_ext/app/OSFileManager/OSFileManager.apk 2>/dev/null; do :; done
    mount -o bind /data/adb/modules/bg6_hios_pro/system/system_ext/app/OSFileManager/OSFileManager.apk /system_ext/app/OSFileManager/OSFileManager.apk
  '
fi

rm -rf /data/dalvik-cache/arm64/*OSFileManager*
/apex/com.android.art/bin/dex2oat64 \
  --dex-file=/system_ext/app/OSFileManager/OSFileManager.apk \
  --oat-file=/data/local/tmp/osfm_test.odex \
  --instruction-set=arm64 \
  --compiler-filter=verify
echo "dex2oat64 exit=$?"
rm -f /data/local/tmp/osfm_test.odex
am force-stop com.transsion.filemanagerx
