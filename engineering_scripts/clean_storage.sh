#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
cp -f /data/local/tmp/service.sh "$MODDIR/service.sh" 2>/dev/null
chmod 0755 "$MODDIR/service.sh" 2>/dev/null

echo "=== BEFORE CLEANUP ==="
df -h /data
du -sh /data 2>/dev/null

# 1. Bind-mount TranSettings & BatteryLab directly from $MODDIR so /data/local/tmp can be 100% wiped
TS_APK_DST="/system_ext/priv-app/TranSettings/TranSettings.apk"
TS_DEX="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.dex"
TS_VDEX="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex"
BL_APK_DST="/system_ext/app/BatteryLab/BatteryLab.apk"
BL_ODEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
BL_VDEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"
BL_DC_DEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.dex"
BL_DC_VDEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.vdex"

rm -rf "$MODDIR/system/system_ext/app/BatteryLab" 2>/dev/null

for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        while umount -l '$TS_APK_DST' 2>/dev/null; do :; done
        while umount -l '$TS_DEX' 2>/dev/null; do :; done
        while umount -l '$TS_VDEX' 2>/dev/null; do :; done
        mount -o bind '$MODDIR/TranSettings_locale.apk' '$TS_APK_DST' 2>/dev/null
        mount -o bind '$MODDIR/TranSettings.odex' '$TS_DEX' 2>/dev/null
        mount -o bind '$MODDIR/TranSettings.vdex' '$TS_VDEX' 2>/dev/null

        while umount -l '$BL_APK_DST' 2>/dev/null; do :; done
        while umount -l '$BL_ODEX_DST' 2>/dev/null; do :; done
        while umount -l '$BL_VDEX_DST' 2>/dev/null; do :; done
        while umount -l '$BL_DC_DEX' 2>/dev/null; do :; done
        while umount -l '$BL_DC_VDEX' 2>/dev/null; do :; done
        mount -o bind '$MODDIR/BatteryLab.apk' '$BL_APK_DST' 2>/dev/null
        mount -o bind '$MODDIR/BatteryLab.odex' '$BL_ODEX_DST' 2>/dev/null
        mount -o bind '$MODDIR/BatteryLab.vdex' '$BL_VDEX_DST' 2>/dev/null
        mount -o bind '$MODDIR/BatteryLab.odex' '$BL_DC_DEX' 2>/dev/null
        mount -o bind '$MODDIR/BatteryLab.vdex' '$BL_DC_VDEX' 2>/dev/null
    "
done
am force-stop com.android.settings 2>/dev/null
am force-stop com.transsion.batterylab 2>/dev/null

# 2. Wipe 1.15 GB of temporary/backup files in /data/local/tmp
for item in /data/local/tmp/* /data/local/tmp/.*; do
    base="$(basename "$item")"
    case "$base" in
        .|..|sync_booster.last|sync_booster.lowpower|clean_storage.sh)
            ;;
        *)
            rm -rf "$item" 2>/dev/null
            ;;
    esac
done

# 3. Trim / punch sparse holes in /data/adb/ksu/modules.img (frees ~1.35 GB) & wipe ksu logs
rm -rf /data/adb/ksu/log/* 2>/dev/null
fstrim /data/adb/modules 2>/dev/null
/data/adb/ksu/bin/busybox fallocate -d /data/adb/ksu/modules.img 2>/dev/null

# 4. Shrink bloated non-Rider oat files (com.google.android.gms 675MB -> ~18MB, etc.)
for pkg in com.google.android.gms com.google.android.googlequicksearchbox com.google.android.gm com.android.vending com.facebook.katana com.facebook.orca com.openai.chatgpt com.anthropic.claude com.spotify.music com.google.android.youtube com.google.android.apps.messaging com.google.android.apps.photos; do
    cmd package compile -m verify -f "$pkg" >/dev/null 2>&1
done

# 5. Clean all app caches, code_caches, tombstones, ANRs, dropbox, logd
pm trim-caches 999999999999999999 >/dev/null 2>&1
rm -rf /data/data/*/cache/* /data/data/*/code_cache/* 2>/dev/null
rm -rf /data/user_de/0/*/cache/* /data/user_de/0/*/code_cache/* 2>/dev/null
rm -rf /data/media/0/Android/data/*/cache/* 2>/dev/null
rm -rf /data/system/dropbox/* /data/tombstones/* /data/anr/* /data/misc/logd/* 2>/dev/null
sm fstrim >/dev/null 2>&1
fstrim /data 2>/dev/null

echo "=== AFTER CLEANUP ==="
df -h /data
du -sh /data/local/tmp /data/adb /data/adb/ksu /data/app /data/data 2>/dev/null
du -sh /data 2>/dev/null
