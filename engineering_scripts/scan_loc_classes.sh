#!/system/bin/sh
echo "=== 1. TRANSSION / SPRD / SETTINGS LOCATION CLASSES ==="
strings /system/framework/*.jar /system/framework/oat/arm64/*.vdex \
        /system_ext/framework/*.jar /system_ext/framework/oat/arm64/*.vdex \
        /system_ext/priv-app/Settings/oat/arm64/Settings.vdex \
        /system_ext/app/OSSettingsExt/oat/arm64/OSSettingsExt.vdex \
        /vendor/app/ProxyNFwLocation/oat/arm64/*.vdex 2>/dev/null | \
    grep -iE '^L(com/transsion|com/sprd|com/spreadtrum|com/unisoc|com/android/settings/location|com/android/server/location)/[^;]*(loc|gps|gnss|map|mock|geo|supl|agps|vdr|nlp|fused)[^;]*;' | \
    sort -u

echo "=== 2. SECRET CODES (*#*#...#*#*) ON DEVICE FOR GPS / LOCATION / ENGINEER ==="
dumpsys package | grep -B 2 -A 5 'android_secret_code' | head -n 120
