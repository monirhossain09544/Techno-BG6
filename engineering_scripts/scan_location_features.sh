#!/system/bin/sh
echo "=== 1. /data/vendor/gnss/supl/supl.xml ==="
cat /data/vendor/gnss/supl/supl.xml 2>/dev/null | head -n 40

echo "=== 2. LOCATION / GPS / GNSS PROPS IN FRAMEWORK & SETTINGS & VENDOR ==="
strings /system/framework/*.jar /system/framework/oat/arm64/*.vdex \
        /system_ext/framework/*.jar /system_ext/framework/oat/arm64/*.vdex \
        /system_ext/priv-app/Settings/oat/arm64/Settings.vdex \
        /system_ext/app/OSSettingsExt/oat/arm64/OSSettingsExt.vdex \
        /system_ext/app/SGPS/oat/arm64/SGPS.vdex \
        /vendor/bin/hw/*gnss* /vendor/lib64/libgnssmgt.so /vendor/lib64/hw/*gnss*.so 2>/dev/null | \
    grep -iE '^(ro|persist|sys|vendor|debug)\.[a-z0-9_.-]*(gps|gnss|loc|supl|mock|nlp|lbs|vdr|agps|orbit|galileo|beidou|glonass|epo|fused)[a-z0-9_.-]*$' | \
    sort -u

echo "=== 3. SGPS UI TABS, ACTIVITIES & HIDDEN FEATURES ==="
strings /system_ext/app/SGPS/oat/arm64/SGPS.vdex /system_ext/app/SGPS/SGPS.apk 2>/dev/null | \
    grep -iE 'Activity|Fragment|Tab|mock|auto_loc|vdr|spreadorbit|supl|dead_reckon|kalman|high_acc|whitelist|gnss|cp_mode|fl_work|realeph|float_cn0' | \
    sort -u | head -n 120

echo "=== 4. SETTINGS & TRANSSION LOCATION FEATURES ==="
strings /system_ext/priv-app/Settings/oat/arm64/Settings.vdex \
        /system_ext/app/OSSettingsExt/oat/arm64/OSSettingsExt.vdex \
        /system/priv-app/ZaHooc/ZaHooc.apk \
        /system/app/TranThunderback/TranThunderback.apk 2>/dev/null | \
    grep -iE 'LocationPreferenceController|LocationSettings|virtual_location|mock_location|blur_location|approximate_location|location_privacy|agps|assisted_gps|gnss|location_mode|wifi_scan|ble_scan' | \
    sort -u | head -n 120
