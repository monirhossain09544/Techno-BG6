#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"

# 1. Remove stale lock that blocked Rider Mode & Dark Mode sync after force-reboot
rm -rf /data/local/tmp/sync_booster.lock /dev/sync_booster.lock

# 2. Install updated sync_booster.sh (convert CRLF if any)
tr -d '\r' < /data/local/tmp/sync_booster_fixed.sh > "$MODDIR/sync_booster.sh"
chmod 0755 "$MODDIR/sync_booster.sh"
rm -f /data/local/tmp/sync_booster_fixed.sh

# 3. Fix BatteryLab SELinux contexts for both /system_ext and /data/dalvik-cache
BL_APK_DST="/system_ext/app/BatteryLab/BatteryLab.apk"
BL_ODEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
BL_VDEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"
BL_DC_DEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.dex"
BL_DC_VDEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.vdex"

if [ -f "$MODDIR/BatteryLab.odex" ]; then
    cp -f "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab_sys.odex"
    cp -f "$MODDIR/BatteryLab.vdex" "$MODDIR/BatteryLab_sys.vdex"
    chmod 0644 "$MODDIR/BatteryLab_sys.odex" "$MODDIR/BatteryLab_sys.vdex" "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab.vdex"
    chown root:root "$MODDIR/BatteryLab_sys.odex" "$MODDIR/BatteryLab_sys.vdex"
    chcon u:object_r:system_file:s0 "$MODDIR/BatteryLab_sys.odex" "$MODDIR/BatteryLab_sys.vdex"
    chown system:system "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab.vdex"
    chcon u:object_r:dalvikcache_data_file:s0 "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab.vdex"

    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
            while umount -l '$BL_ODEX_DST' 2>/dev/null; do :; done
            while umount -l '$BL_VDEX_DST' 2>/dev/null; do :; done
            while umount -l '$BL_DC_DEX' 2>/dev/null; do :; done
            while umount -l '$BL_DC_VDEX' 2>/dev/null; do :; done
            mount -o bind '$MODDIR/BatteryLab_sys.odex' '$BL_ODEX_DST' 2>/dev/null
            mount -o bind '$MODDIR/BatteryLab_sys.vdex' '$BL_VDEX_DST' 2>/dev/null
            mount -o bind '$MODDIR/BatteryLab.odex' '$BL_DC_DEX' 2>/dev/null
            mount -o bind '$MODDIR/BatteryLab.vdex' '$BL_DC_VDEX' 2>/dev/null
        "
    done
    am force-stop com.transsion.batterylab 2>/dev/null
fi

# 4. Stop screen brightness blinking/hunting (Disable Adaptive Brightness & CABC/DCI)
settings put system screen_brightness_mode 0
setprop persist.sys.pq.cabc.enabled 0 2>/dev/null
setprop persist.sys.pq.dci.enabled 0 2>/dev/null

# 5. Reset Rider Mode cleanly to OFF first (since tran_settings_long_battery_mode was stuck at 1 while low_power was 0)
rm -f /data/local/tmp/sync_booster.lowpower
settings put system tran_settings_long_battery_mode 0
settings put global low_power 0

# 6. Restart sync_booster_watch to monitor system, global, AND secure settings (for instant Dark Mode & Rider Mode sync)
pkill -f 'sync_booster_watch' 2>/dev/null
/system/bin/sh "$MODDIR/sync_booster.sh"
nsenter -t 1 -m -- setsid /system/bin/sh -c '
    # sync_booster_watch
    LAST_MTIME=""
    TICKS=0
    while true; do
        MTIME="$(stat -c %Y /data/system/users/0/settings_system.xml /data/system/users/0/settings_global.xml /data/system/users/0/settings_secure.xml 2>/dev/null)"
        TICKS=$((TICKS + 1))
        if [ "$MTIME" != "$LAST_MTIME" ] || [ "$TICKS" -ge 15 ]; then
            LAST_MTIME="$MTIME"
            TICKS=0
            /system/bin/sh /data/adb/modules/bg6_hios_pro/sync_booster.sh >/dev/null 2>&1
        fi
        sleep 1
    done
' </dev/null >/dev/null 2>&1 &

# 7. Patch service.sh for future reboots
sed -i 's|/data/system/users/0/settings_system.xml /data/system/users/0/settings_global.xml|/data/system/users/0/settings_system.xml /data/system/users/0/settings_global.xml /data/system/users/0/settings_secure.xml|g' "$MODDIR/service.sh"
if ! grep -q 'rm -rf /data/local/tmp/sync_booster.lock' "$MODDIR/service.sh"; then
    sed -i '/chmod 0755 "\$MODDIR\/sync_booster.sh"/i rm -rf /data/local/tmp/sync_booster.lock /dev/sync_booster.lock 2>/dev/null\nsettings put system screen_brightness_mode 0 2>/dev/null' "$MODDIR/service.sh"
fi

echo "=== FUEL GAUGE UEVENT ==="
cat /sys/class/power_supply/sc27xx-fgu/uevent
echo "=== BATTERY UEVENT ==="
cat /sys/class/power_supply/battery/uevent
echo "=== DONE ==="
