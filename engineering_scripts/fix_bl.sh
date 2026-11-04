#!/system/bin/sh
BL_APK_DST="/system_ext/app/BatteryLab/BatteryLab.apk"
BL_ODEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
BL_VDEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"

for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        while umount -l '$BL_ODEX_DST' 2>/dev/null; do :; done
        while umount -l '$BL_VDEX_DST' 2>/dev/null; do :; done
    "
done

cmd package compile -m speed -f com.transsion.batterylab
ls -lh /data/dalvik-cache/arm64/*BatteryLab*
cp -f /data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.dex /data/local/tmp/BatteryLab.odex
cp -f /data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.vdex /data/local/tmp/BatteryLab.vdex
chmod 0644 /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex
chown root:root /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex
chcon u:object_r:system_file:s0 /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex

MODDIR="/data/adb/modules/bg6_hios_pro"
cp -f /data/local/tmp/BatteryLab.odex "$MODDIR/BatteryLab.odex"
cp -f /data/local/tmp/BatteryLab.vdex "$MODDIR/BatteryLab.vdex"
cp -f /data/local/tmp/BatteryLab.odex "$MODDIR/system/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
cp -f /data/local/tmp/BatteryLab.vdex "$MODDIR/system/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"

for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        mount -o bind /data/local/tmp/BatteryLab.odex '$BL_ODEX_DST' 2>/dev/null
        mount -o bind /data/local/tmp/BatteryLab.vdex '$BL_VDEX_DST' 2>/dev/null
    "
done
am force-stop com.transsion.batterylab 2>/dev/null
ls -lh "$BL_APK_DST" "$BL_ODEX_DST" "$BL_VDEX_DST"
rm -f /data/local/tmp/fix_bl.sh
