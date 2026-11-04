#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
cp -f /data/local/tmp/sync_booster.sh "$MODDIR/sync_booster.sh"
cp -f /data/local/tmp/service.sh "$MODDIR/service.sh"
chmod 755 "$MODDIR/sync_booster.sh" "$MODDIR/service.sh"
rm -f /data/local/tmp/sync_booster.sh /data/local/tmp/service.sh /data/local/tmp/sync_booster.lowpower /data/local/tmp/sync_booster.last

# 1. Install & precompile patched system BatteryLab.apk (1-Tap Native PowerBoostTile)
BL_APK_DST="/system_ext/app/BatteryLab/BatteryLab.apk"
BL_ODEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
BL_VDEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"
BL_DC_DEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.dex"
BL_DC_VDEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.vdex"
BL_DC_ART="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.art"

if [ -f /data/local/tmp/BatteryLab.apk ]; then
    rm -f "$BL_DC_ART" 2>/dev/null
    chmod 0644 /data/local/tmp/BatteryLab.apk
    chown root:root /data/local/tmp/BatteryLab.apk
    chcon u:object_r:system_file:s0 /data/local/tmp/BatteryLab.apk
    while umount -l "$BL_APK_DST" 2>/dev/null; do :; done
    mount -o bind /data/local/tmp/BatteryLab.apk "$BL_APK_DST"
    rm -f /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex
    /apex/com.android.art/bin/dex2oat64 \
        --dex-file="$BL_APK_DST" \
        --dex-location="$BL_APK_DST" \
        --oat-file=/data/local/tmp/BatteryLab.odex \
        --output-vdex=/data/local/tmp/BatteryLab.vdex \
        --instruction-set=arm64 \
        --compiler-filter=speed 2>/dev/null
    chmod 0644 /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex
    chown system:system /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex
    chcon u:object_r:dalvikcache_data_file:s0 /data/local/tmp/BatteryLab.odex /data/local/tmp/BatteryLab.vdex

    # Persist into Magisk/KernelSU module tree for systemless boot mount + service.sh
    mkdir -p "$MODDIR/system/system_ext/app/BatteryLab/oat/arm64"
    cp -f /data/local/tmp/BatteryLab.apk "$MODDIR/BatteryLab.apk"
    cp -f /data/local/tmp/BatteryLab.odex "$MODDIR/BatteryLab.odex"
    cp -f /data/local/tmp/BatteryLab.vdex "$MODDIR/BatteryLab.vdex"
    cp -f /data/local/tmp/BatteryLab.apk "$MODDIR/system/system_ext/app/BatteryLab/BatteryLab.apk"
    cp -f /data/local/tmp/BatteryLab.odex "$MODDIR/system/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
    cp -f /data/local/tmp/BatteryLab.vdex "$MODDIR/system/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"

    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
            while umount -l '$BL_APK_DST' 2>/dev/null; do :; done
            while umount -l '$BL_ODEX_DST' 2>/dev/null; do :; done
            while umount -l '$BL_VDEX_DST' 2>/dev/null; do :; done
            while umount -l '$BL_DC_DEX' 2>/dev/null; do :; done
            while umount -l '$BL_DC_VDEX' 2>/dev/null; do :; done
            mount -o bind /data/local/tmp/BatteryLab.apk '$BL_APK_DST' 2>/dev/null
            mount -o bind /data/local/tmp/BatteryLab.odex '$BL_ODEX_DST' 2>/dev/null
            mount -o bind /data/local/tmp/BatteryLab.vdex '$BL_VDEX_DST' 2>/dev/null
            mount -o bind /data/local/tmp/BatteryLab.odex '$BL_DC_DEX' 2>/dev/null
            mount -o bind /data/local/tmp/BatteryLab.vdex '$BL_DC_VDEX' 2>/dev/null
        "
    done
    am force-stop com.transsion.batterylab 2>/dev/null
fi

# 2. Ensure 3rd-party Quick Tiles apps are permanently uninstalled
pm uninstall com.asdoi.quicktiles >/dev/null 2>&1
pm uninstall com.cominatyou.batterytile.standalone >/dev/null 2>&1

# 3. Set native HiOS Power Boost tile at Quick Settings #1 slot
settings put secure sysui_qs_tiles "wifi,dataconnection,bt,custom(com.transsion.batterylab/.PowerBoostTile),autobrightness,dnd,osflashlight,rotation,night,custom(com.transsion.screenrecorder/.service.ScreenRecordTileService),airplane,location,hotspot,custom(com.transsion.calculator/.CalculatorTileService),qr_code_scanner,saver,dark,color_correction,custom(com.transsion.mol/.service.tile.MolTileService)"

# 4. Run sync_booster.sh and start 1-second zero-CPU watcher
/system/bin/sh "$MODDIR/sync_booster.sh"
pkill -f sync_booster_watch 2>/dev/null
nsenter -t 1 -m -- setsid /system/bin/sh -c '
    # sync_booster_watch
    LAST_MTIME=""
    TICKS=0
    while true; do
        MTIME="$(stat -c %Y /data/system/users/0/settings_system.xml /data/system/users/0/settings_global.xml 2>/dev/null)"
        TICKS=$((TICKS + 1))
        if [ "$MTIME" != "$LAST_MTIME" ] || [ "$TICKS" -ge 15 ]; then
            LAST_MTIME="$MTIME"
            TICKS=0
            /system/bin/sh /data/adb/modules/bg6_hios_pro/sync_booster.sh >/dev/null 2>&1
        fi
        sleep 1
    done
' </dev/null >/dev/null 2>&1 &
rm -f /data/local/tmp/start_watch.sh
