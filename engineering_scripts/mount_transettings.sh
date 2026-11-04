#!/system/bin/sh
set -x
echo "=== Context: $(id) ==="
MODDIR="/data/adb/modules/bg6_hios_pro"
APK_DST="/system_ext/priv-app/TranSettings/TranSettings.apk"
ODEX_DST="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.dex"
VDEX_DST="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex"

for p in 1 $(pidof zygote64); do
    echo "Mounting in PID $p..."
    nsenter -t "$p" -m -- /system/bin/sh -c "
        umount '$APK_DST' 2>/dev/null
        umount '$ODEX_DST' 2>/dev/null
        umount '$VDEX_DST' 2>/dev/null
        mount -o bind '$MODDIR/TranSettings_locale.apk' '$APK_DST'
        mount -o bind '$MODDIR/TranSettings.odex' '$ODEX_DST'
        mount -o bind '$MODDIR/TranSettings.vdex' '$VDEX_DST'
    " 2>&1
done

am force-stop com.android.settings
am start -n com.android.settings/.SubSettings -e :settings:show_fragment com.transsion.settings.applications.AppManagementDashboardFragment
sleep 2
uiautomator dump /data/local/tmp/ui.xml
grep -o 'text="[^"]*"' /data/local/tmp/ui.xml
