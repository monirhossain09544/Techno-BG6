#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
APK_DST="/system_ext/priv-app/TranSettings/TranSettings.apk"
ODEX_DST="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.dex"
VDEX_DST="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex"

cp -f /data/local/tmp/system.prop "$MODDIR/system.prop"
cp -f /data/local/tmp/service.sh "$MODDIR/service.sh"
chmod 0644 "$MODDIR/system.prop"
chmod 0755 "$MODDIR/service.sh"
rm -f /data/local/tmp/system.prop /data/local/tmp/service.sh

for kv in     "ro.tran_dual_sta.support 1"     "ro.wifi.sup_sprd.wlan_plus true"     "ro.tran_wifi_qrcode_share_support 1"     "ro.tran_smart_switch_support 1"     "ro.linkplus.support 1"     "ro.tran_sdata_switch.support 1"     "ro.vendor.mtk_gwsd_support 1"     "ro.tran_multi_link_support 1"     "ro.tran_bandwidth_alloc_support 1"     "ro.tran_bandwidth_alloc2_support 1"     "ro.tran_telecom_security.support 1"     "ro.tran_intercept.support 1"     "persist.dbg.ims_volte_enable 1"     "persist.dbg.volte_avail_ovr 1"     "persist.dbg.vt_avail_ovr 1"     "persist.dbg.wfc_avail_ovr 1"     "persist.vendor.sys.volte.enable true"     "persist.sys.wfc.supp_dual_sim true"     "persist.sys.support.vt true"     "ro.tran_cloud_volte_support 1"     "ro.tran_wfc_qs.support 1"     "ro.product.tecno.thunderback.support 1"     "ro.product.tbclickwindow.support 1"     "ro.product.tbfloatposition.support 1"     "ro.product.tbfloattouch.support 1"     "ro.product.tbgesturewindow.support 1"     "ro.product.tbhotwhitelist.support 1"     "ro.product.tbsmartwhitelist.support 1"; do
    resetprop -n $kv 2>/dev/null
done

settings put global wifi_dual_station 1 2>/dev/null
settings put global wifi_assistant_switch 1 2>/dev/null
settings put global wifi_assistant_notify 1 2>/dev/null
settings put global network_avoid_bad_wifi 1 2>/dev/null
settings put global wlan_hotspot_2 1 2>/dev/null
settings put global wifi_scan_throttle_enabled 0 2>/dev/null
settings put global wifi_wakeup_enabled 1 2>/dev/null
settings put global network_recommendations_enabled 1 2>/dev/null
settings put global wifi_power_save 0 2>/dev/null
settings put secure adaptive_connectivity_enabled 1 2>/dev/null
settings put global wlan_plus_on 1 2>/dev/null
settings put global smart_channel_switch_enable 1 2>/dev/null
settings put global bandwidth_allocate_enable 1 2>/dev/null
settings put global tran_tdd_multi_link_total_switch 1 2>/dev/null
settings put global multilink_total_switch 1 2>/dev/null
settings put global mobile_data_always_online 1 2>/dev/null
settings put global mobile_data_always_online1 1 2>/dev/null
settings put global mobile_data_always_online2 1 2>/dev/null
settings put global TRAN_SMART_DATA_SWITCH_STATE 1 2>/dev/null
settings put global tran_smart_card_switch 1 2>/dev/null
settings put global smart_switch_notification 1 2>/dev/null
settings put global multi_sim_data_call 1 2>/dev/null
settings put secure sysui_qs_tiles "wifi,dataconnection,vowifi,bt,custom(com.transsion.batterylab/.PowerBoostTile),autobrightness,dnd,osflashlight,rotation,night,custom(com.transsion.screenrecorder/.service.ScreenRecordTileService),airplane,location,hotspot,custom(com.transsion.calculator/.CalculatorTileService),qr_code_scanner,saver,dark,color_correction,custom(com.transsion.mol/.service.tile.MolTileService)" 2>/dev/null

am force-stop com.android.settings

for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        while umount -l '$APK_DST' 2>/dev/null; do :; done
        while umount -l '$ODEX_DST' 2>/dev/null; do :; done
        while umount -l '$VDEX_DST' 2>/dev/null; do :; done
    "
done

rm -f "$ODEX_DST" "$VDEX_DST" /data/local/tmp/TranSettings_locale.apk
mv -f /data/local/tmp/ts_upload.apk "$MODDIR/TranSettings_locale.apk"
touch "$ODEX_DST" "$VDEX_DST"
chmod 644 "$ODEX_DST" "$VDEX_DST"
chown system:system "$ODEX_DST" "$VDEX_DST"
chcon u:object_r:dalvikcache_data_file:s0 "$ODEX_DST" "$VDEX_DST"

chmod 644 "$MODDIR/TranSettings_locale.apk"
chown root:root "$MODDIR/TranSettings_locale.apk"
chcon u:object_r:system_file:s0 "$MODDIR/TranSettings_locale.apk"

mount -o bind "$MODDIR/TranSettings_locale.apk" "$APK_DST"
rm -f "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex"

/apex/com.android.art/bin/dex2oat64     --dex-file="$APK_DST"     --dex-location="$APK_DST"     --oat-file="$MODDIR/TranSettings.odex"     --output-vdex="$MODDIR/TranSettings.vdex"     --instruction-set=arm64     --compiler-filter=verify

umount -l "$APK_DST" 2>/dev/null

chmod 644 "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex"
chown system:system "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex"
chcon u:object_r:dalvikcache_data_file:s0 "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex"

for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        mount -o bind '$MODDIR/TranSettings_locale.apk' '$APK_DST'
        mount -o bind '$MODDIR/TranSettings.odex' '$ODEX_DST'
        mount -o bind '$MODDIR/TranSettings.vdex' '$VDEX_DST'
    "
done

rm -f /data/local/tmp/ts_tmp.odex /data/local/tmp/ts_tmp.vdex /data/local/tmp/TranSettings_locale.apk /data/local/tmp/deploy_locale.sh
/data/adb/ksu/bin/busybox fstrim /data/adb/modules >/dev/null 2>&1
/data/adb/ksu/bin/busybox fstrim /data >/dev/null 2>&1

ls -la "$ODEX_DST" "$VDEX_DST"
am force-stop com.android.settings
