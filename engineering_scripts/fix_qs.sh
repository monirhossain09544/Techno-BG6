#!/system/bin/sh
cp -f /data/local/tmp/sync_booster.sh /data/adb/modules/bg6_hios_pro/sync_booster.sh
cp -f /data/local/tmp/service.sh /data/adb/modules/bg6_hios_pro/service.sh
chmod 755 /data/adb/modules/bg6_hios_pro/sync_booster.sh /data/adb/modules/bg6_hios_pro/service.sh
rm -f /data/local/tmp/sync_booster.sh /data/local/tmp/service.sh
pm grant com.cominatyou.batterytile.standalone android.permission.WRITE_SECURE_SETTINGS
cmd deviceidle whitelist +com.cominatyou.batterytile.standalone
settings put secure sysui_qs_tiles 'wifi,dataconnection,bt,custom(com.cominatyou.batterytile.standalone/.QuickSettingsTileService),autobrightness,dnd,osflashlight,rotation,night,custom(com.transsion.screenrecorder/.service.ScreenRecordTileService),airplane,location,hotspot,custom(com.transsion.calculator/.CalculatorTileService),qr_code_scanner,saver,dark,color_correction,custom(com.transsion.mol/.service.tile.MolTileService)'
pkill -f inotifyd.*sync_booster 2>/dev/null
setsid /system/bin/inotifyd /data/adb/modules/bg6_hios_pro/sync_booster.sh /data/system/users/0:mw </dev/null >/dev/null 2>&1 &
cmd statusbar expand-settings
sleep 2
screencap -p /data/local/tmp/qs_screen.png
cmd statusbar collapse
rm -f /data/local/tmp/fix_qs.sh
