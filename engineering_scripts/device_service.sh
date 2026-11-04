#!/system/bin/sh
resetprop -n persist.sys.disable_rescue true
MODDIR=${0%/*}

# Wait until boot completes
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Remove any legacy conflicting dt2w service script
rm -f /data/adb/service.d/dt2w.sh 2>/dev/null

# Re-assert properties after system_server/init post-boot
resetprop -n ro.config.low_ram false
resetprop -n ro.os_2g_go.support 0
resetprop -n ro.os_1g_go.support 0
resetprop -n ro.os_3g_go.support 0
resetprop -n ro.os_4g_go.support 0
resetprop -n ro.os_go.support 0
resetprop -n ro.griffin.app_lite 0
resetprop -n ro.os_settings_lite_custom 0
resetprop -n ro.tran.slim_device 0
resetprop -n fw.max_users 4
resetprop -n fw.show_multiuserui 1
resetprop -n persist.sys.tran_split_screen.force_disable 0
resetprop -n persist.sys.traneffect.enable 1
resetprop -n ro.tran.effectengine.dynamicblur.support 0

# Micro Intelligence & Gesture properties (Factory Touch Protection: tapping_wake disabled for Flashless ICNL9916)
resetprop -n ro.tapping_wake_support 0
resetprop -n ro.tapping_broadcast_support 1
resetprop -n ro.os_micro_intelligence_support 1
resetprop -n ro.os_micro_gesture_functions_support 1
resetprop -n ro.os_triplefingerscreenshot_support 1
resetprop -n ro.tran_lift_wake_up_support 1
resetprop -n ro.music_gesture_support 1
resetprop -n ro.quick_start_support 1
resetprop -n ro.cover_silent_support 1
resetprop -n ro.os.raiseforcall.support 1
resetprop -n ro.os_gesture_answer_support 1

# SystemUI, Launcher & Settings Pro properties
resetprop -n ro.os_independent_tiles_anim.support 0
resetprop -n ro.product.multitask_anim_arc.support 1
resetprop -n ro.tran.privacy.dot.dynamic.support 1
resetprop -n ro.os_bt_battery_display 1
resetprop -n ro.os_single_hand_support 1
resetprop -n ro.os_read_mode_support 1
resetprop -n ro.os_bike_mode_support 1
resetprop -n ro.os_ges_for_sp_support 1
resetprop -n ro.os_fingerprint_quickapp_support 1
resetprop -n ro.os_fingerprint_dismissalarm_support 1
resetprop -n ro.tran_livewallpaper.support 1
resetprop -n ro.transsion.appturbo.support 1
resetprop -n ro.os_call_edge_flash_support 1
resetprop -n ro.os_notification_edge_flash_support 1
resetprop -n ro.os_settingsext_flash_support 1
resetprop -n ro.os_inadvertent_support 1
resetprop -n ro.os_privacy_hub_support 1
resetprop -n ro.os_permission_stats_support 1
resetprop -n ro.os_secure_charge_support 1
resetprop -n ro.os_dualapp_fp_start_support 1
resetprop -n ro.os_badge_rule_support 1
resetprop -n ro.os_zeroscreen_ai.support 1
resetprop -n ro.transsion_launch_start_exit_support 1
resetprop -n ro.os_ask_ai.support 1
resetprop -n ro.os_game_bypass_charging_support 1
resetprop -n ro.os_game_auto_bypass.support 1
resetprop -n ro.os_game_enhancement_support 1
resetprop -n ro.product.tran_pq_support 1
resetprop -n ro.os_game_anti_accidental.support 1
resetprop -n ro.os_game_barrage_support 1
resetprop -n ro.os_game_changer.support 1
resetprop -n ro.os_game_data_support 1
resetprop -n ro.os_game_reverse_color.support 1
resetprop -n ro.os_game_tp_optimization.support 1
resetprop -n ro.os_magic_button_support 1
resetprop -n ro.tran.game_e_sport_mode.support 1
resetprop -n ro.os_smartpanel_recentapp_support 1
resetprop -n ro.os_turboomode_support 1
resetprop -n ro.os_social_turbo_makeup 1
resetprop -n ro.os_social_turbo_record 1
resetprop -n ro.os_social_turbo_soundchange 1
resetprop -n ro.os_ai_sutitiles_support 1
resetprop -n ro.os_anti_addiction_support 1
resetprop -n ro.os_game_lock_support 1
resetprop -n ro.os_game_noti_list.support 1
resetprop -n ro.os_game_phone.support 1
resetprop -n ro.os_game_pova.support 1
resetprop -n ro.os_gamemode_pubg_support 1

# TECNO AI Suite (Notes AI, AI Gallery, Ask AI, Social Turbo AI, Kolun AI)
resetprop -n ro.os_note_ai_bg_support 1
resetprop -n ro.os_note_ai_draw_support 1
resetprop -n ro.os_note_canvas_support 1
resetprop -n ro.tr_note.ai_bg.support 1
resetprop -n ro.tr_note.ai_draw.support 1
resetprop -n ro.tr_note.canvas.support 1
resetprop -n ro.gallery.eraser.v2.support 1
resetprop -n ro.tr_gallery.eraser.v2.support 1
resetprop -n ro.os_quick_hide_support 1
resetprop -n ro.aicore.offline_llm_support 1
resetprop -n ro.sys.tran.aicore_llm_support 1
resetprop -n ro.tr_aiservice.aicorellm.feature.support 1
resetprop -n ro.tr_aiservice.aisettings_offlinellm.feature.support 1
resetprop -n ro.tr_aiservice.kolun.feature.support 1
resetprop -n ro.tr_aiservice.kolungo.feature.support 1
resetprop -n ro.os_kolun_support 1
resetprop -n ro.os_kolun_go_support 1
resetprop -n ro.os_kolun_exocr_support 1
resetprop -n ro.tr_aiassistant.feature.support 1
resetprop -n ro.tr_aiassistant.online.feature.support 1
resetprop -n ro.tr_aiassistant.aiphone.feature.support 1
resetprop -n ro.tr_aiassistant.aiphone_summany.feature.support 1
resetprop -n ro.sys.tran.aiphone_support 1
resetprop -n ro.sys.tran.aiphone_summary_support 1
resetprop -n ro.sys.tran.assist_support 1
resetprop -n ro.product.assist_online 1
resetprop -n ro.os_social_turbo_call_summary 1
resetprop -n ro.os_social_turbo_translator 1
resetprop -n ro.tr_social.call_summary.support 1
resetprop -n ro.tr_social.call_translator.support 1
resetprop -n ro.sys.tran.ai_subtitles_support 1
resetprop -n ro.tr_aiservice.aicorespeech_subtitle.feature.support 1
resetprop -n ro.tr_smartrecognition.feature.support 1

# Apply Global/Secure/System settings for Full HiOS features
settings put global enable_freeform_support 1
settings put global force_resizable_activities 1
settings put global tranthunderback_enable 1
settings put global split_settings_slide_down_split_screen 1
settings put global msg_split_screen 1
settings put global hidden_api_policy 1
settings put global hidden_api_policy_pre_p_apps 1
settings put global hidden_api_policy_p_apps 1

settings put global os_lck_pop_sw 1
settings put system os_lck_pop_sw 1
settings put global os_lck_noti_sw 1
settings put system os_lck_noti_sw 1
settings put system test_split_topbottom 1
settings put system three_finger_split_screen 1
settings put system key_edge_flash 0
settings put system tran_DualApp_support 1

# Lock refresh rate to 60Hz and enforce Factory Touch & Display Protection (BOE ICNL9916)
settings put system tran_refresh_mode 60
settings put system min_refresh_rate 60.0
settings put system peak_refresh_rate 60.0
settings put global stay_on_while_plugged_in 0
settings put system os_action_tapping_wake 0
settings put global os_action_tapping_wake 0
setprop persist.sys.pq.cabc.enabled 0 2>/dev/null
setprop persist.sys.pq.dci.enabled 0 2>/dev/null

# Keep /proc/gesture_function locked (2000) and enable psensor_enable=1 so Flashless ICNL9916
# retains 01f1 SRAM across sleep/wake while sprd_panel_disable (28h/10h) + sprd_dpu_stop genuinely sleep the LCD.
if [ -e /proc/gesture_function ]; then
    umount /proc/gesture_function 2>/dev/null
    chown 0:0 /proc/gesture_function 2>/dev/null
    chmod 0444 /proc/gesture_function 2>/dev/null
fi
rm -f /dev/dt2w_state /dev/bl_dummy 2>/dev/null
umount /sys/class/backlight/sprd_backlight/brightness 2>/dev/null

if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
    echo 1 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
    chmod 0444 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
fi
killall -9 dt2w_daemon 2>/dev/null
pm disable com.transsion.microintelligence/com.transsion.microintelligence.TappingWakeActivity 2>/dev/null

# Enable all hidden Full HiOS activities in OSSettingsExt
for act in     com.transsion.splitscreensetting.SplitSettingsMainActivity     com.transsion.ossettingsext.noticenter.activity.NotificationCenterActivity     com.transsion.ossettingsext.noticenter.activity.NotificationDisplaySettingsActivity     com.transsion.ossettingsext.noticenter.activity.BadgeNotificationsActivity     com.transsion.ossettingsext.noticenter.activity.FloatNotificationsActivity     com.transsion.ossettingsext.noticenter.activity.LockScreenPullDownActivity     com.transsion.ossettingsext.lock.pop.LockPopActivity     com.transsion.ossettingsext.lock.notify.LockScreenNotifyActivity     com.transsion.ossettingsext.flash.main.MainActivity     com.transsion.ossettingsext.flash.flasheffect.DetailFlashEffectActivity     com.transsion.ossettingsext.flash.flasheffect.NotiFlashEffectActivity     com.transsion.ossettingsext.flash.flasheffect.IncomingFlashEffectActivity     com.transsion.ossettingsext.flash.flasheffect.MusicFlashEffectActivity     com.transsion.ossettingsext.flash.appmusiclist.MusicAppListActivity     com.transsion.ossettingsext.flash.appnotilist.NotiAppListActivity     com.transsion.activityembedding.SettingsActivity     com.transsion.compatiblemode.SettingsActivity     com.transsion.screenrelay.SettingsActivity     com.transsion.displaycutoutmode.SettingsActivity     com.transsion.minilauncher.MainActivity; do
    pm enable com.transsion.ossettingsext/$act 2>/dev/null
done

# Enable MicroIntelligence (Actions and Gestures) activities (excluding TappingWakeActivity)
for act in     MicroIntelligence     MusicGestureActivity     CaptureScreenActivity     LiftWakeUpActivity     SmartAnswerActivity     CallGestureActivity     FlipMuteActivity     QuickStartActivity     SystemNavigationActivity     GestureNavigationActivity     KeyNavigationActivity     TappingBroadcastActivity; do
    pm enable com.transsion.microintelligence/com.transsion.microintelligence.$act 2>/dev/null
done

# Enable SmartPanel, GameMode, AskAI, ZaHooc, Thunderback, Social Turbo, Kids Mode, DualApp, AppLock, MultiWindow & Multi-Use
pm enable com.transsion.smartpanel/com.transsion.smartpanel.MainActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.askai.AskAiActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.MainSettingsActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.GameManageActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.GameSpaceSettingsActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.PqeSettingsActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.BypassChargingActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.FrameInterpolationSettingsActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.gamemode.video.activity.VideoMainActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.turbomode.app.activity.FeatureSettingActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.turbomode.app.activity.notisave.PeekModeIntroActivity 2>/dev/null
pm enable com.transsion.smartpanel/com.transsion.transfer.TransferSettingsActivity 2>/dev/null

pm enable com.transsion.zahooc/com.transsion.zahooc.MainActivity 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.privacydashboard.PrivacyHubActivity 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.theftalert.view.TheftAlertActivity 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.theftalert.model.receiver.TABootReceiver 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.theftalert.model.service.TheftAlertTileService 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.peekproof.PeekProofActivity 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.peekproof.service.PeekProofTileService 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.securecard.ui.SecureCardActivity 2>/dev/null
pm enable com.transsion.zahooc/com.transsion.repairmode.RepairModeActivity 2>/dev/null

pm enable com.transsion.thunderback/com.transsion.thunderback.activity.TBSettingActivity 2>/dev/null
pm enable com.transsion.videocallenhancer/com.transsion.whatsapputils.activity.WelcomeActivity 2>/dev/null
pm enable com.transsion.videocallenhancer/com.transsion.whatsapputils.activity.notisave.PeekModeIntroActivity 2>/dev/null
pm enable com.transsion.videocallenhancer/com.transsion.whatsapputils.activity.record.SoundRecordActivity 2>/dev/null
pm enable com.transsion.videocallenhancer/com.transsion.whatsapputils.activity.SoundIntroActivity 2>/dev/null
pm enable com.transsion.childmode/com.transsion.childmode.SplashActivity 2>/dev/null
pm enable com.transsion.childmode/com.transsion.childmode.ChildSettingsActivity 2>/dev/null
pm enable com.transsion.childmode/com.transsion.childmode.service.QsControlService 2>/dev/null
pm enable com.transsion.dualapp/com.transsion.dualapp.MainActivity 2>/dev/null
pm enable com.transsion.applock/com.transsion.applock.activity.MainActivity 2>/dev/null
pm enable com.transsion.multiwindow/com.transsion.multiwindow.MainActivity 2>/dev/null
pm enable com.transsion.multiwindow/com.transsion.multiwindow.MultiWindowSplashActivity 2>/dev/null
pm enable com.transsion.multiwindow/com.transsion.multiwindow.MultiWindowGuideSplashActivity 2>/dev/null
pm enable 'com.android.settings/com.android.settings.Settings$UserSettingsActivity' 2>/dev/null

# ============================================================================
# LONG BATTERY BACKUP & POWER-SAVER SUITE (Unisoc T606 / TECNO BG6)
# ============================================================================
# 1. Tune CPU schedutil governor to prevent unnecessary 1.61GHz spikes on background load
echo 10 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/freq_margin 2>/dev/null
echo 2000 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/rate_limit_us 2>/dev/null
echo 5 > /sys/devices/system/cpu/cpufreq/policy6/schedutil/freq_margin 2>/dev/null
echo 3000 > /sys/devices/system/cpu/cpufreq/policy6/schedutil/rate_limit_us 2>/dev/null

# 2. Pin background cpusets to Little Cortex-A55 cores (cpu0-3) so background tasks never wake Big Cortex-A75 cores
echo "0-2" > /dev/cpuset/background/cpus 2>/dev/null
echo "0-3" > /dev/cpuset/system-background/cpus 2>/dev/null
echo "0-3" > /dev/cpuset/restricted/cpus 2>/dev/null

# 3. Enable Android 13 Cached Apps Freezer (cgroup freezer) & Adaptive Battery
settings put global cached_apps_freezer enabled
device_config put activity_manager_native_boot use_freezer true 2>/dev/null
settings put global adaptive_battery_management_enabled 1
settings put global app_standby_enabled 1
settings put global forced_app_standby_enabled 1

# 4. Disable background Wi-Fi / BLE scanning & always-on mobile data drain
settings put global wifi_scan_always_enabled 0
settings put global ble_scan_always_enabled 0
settings put global network_recommendations_enabled 0
settings put global mobile_data_always_on 0

# 5. Fast Doze (Light Doze in 15s, Deep Doze in 5m when screen is off, preserving 30s locating window & 5m GPS accuracy)
settings put global device_idle_constants "inactive_to=30000,sensing_to=0,locating_to=30000,location_accuracy=5.0,motion_inactive_to=0,idle_after_inactive_to=0,light_after_inactive_to=15000,light_pre_idle_to=30000,light_idle_to=300000,light_idle_factor=2.0,light_max_idle_to=900000"

# 6. Stop Unisoc background debug logger (ylog) & disable factory/telemetry drainers
stop ylog 2>/dev/null
stop yloglite 2>/dev/null
setprop persist.sys.ylog.enabled 0 2>/dev/null
for bloat in     com.sprd.logmanager     com.transsion.agingfunction     com.transsion.autotest.factory     com.transsion.statisticalsales     com.transsion.tabe     com.transsion.teop; do
    pm disable-user --user 0 $bloat 2>/dev/null
done

# 7. Restrict heavy 3rd-party games/video apps from holding background CPU/audio wakelocks when closed
for heavy in     com.ea.gp.fifamobile     com.bilibili.app.in     com.spotify.music; do
    cmd appops set $heavy RUN_ANY_IN_BACKGROUND ignore 2>/dev/null
    cmd appops set $heavy RUN_IN_BACKGROUND ignore 2>/dev/null
done

# 8. Ensure official TECNO HiOS 13 Pro MagicFont (com.transsion.magicfont) & TransSansVF typeface are provisioned
mkdir -p /data/typeface/default 2>/dev/null
if [ ! -s /data/typeface/default/TransSansVF.ttf ]; then
    HL_APK=$(pm path com.transsion.hilauncher 2>/dev/null | head -n 1 | cut -d: -f2)
    [ -n "$HL_APK" ] && unzip -p "$HL_APK" assets/card/TransSansVF.ttf > /data/typeface/default/TransSansVF.ttf 2>/dev/null
fi
chown -R system:system /data/typeface 2>/dev/null
chmod 0755 /data/typeface /data/typeface/default 2>/dev/null
chmod 0644 /data/typeface/default/*.ttf 2>/dev/null
restorecon -R /data/typeface 2>/dev/null

MF_APK="/data/adb/modules/bg6_hios_pro/system_ext/app/MagicFont/MagicFont.apk"
if [ -f "$MF_APK" ] && ! pm path com.transsion.magicfont >/dev/null 2>&1; then
    pm install -r "$MF_APK" >/dev/null 2>&1
fi
pm enable 'com.android.settings/com.android.settings.Settings$TranIndividualizationActivity' 2>/dev/null

# 9. Enable built-in Bold text toggle, Per-App Language & Hidden App Management Suite in TranSettings.apk
resetprop -n ro.tran_default_calendar_support 1 2>/dev/null
resetprop -n ro.transsion.appturbo.setting.support 1 2>/dev/null
setprop persist.sys.fflag.override.settings_app_locale_opt_in_enabled false 2>/dev/null
setprop persist.sys.fflag.override.settings_app_language_selection true 2>/dev/null
REC_PKGS="com.logistics.rider.foodpanda,com.brilliant.connect.com.bd,com.sh.smart.caller,com.transsion.calculator,com.transsion.notebook,com.google.android.apps.maps,com.whatsapp,com.android.chrome,com.facebook.katana,com.facebook.orca,com.spotify.music,com.google.android.youtube,com.bKash.customerapp,com.konasl.nagad,org.telegram.messenger,org.thunderdog.challegram,com.imo.android.imoim,com.daraz.android,com.openai.chatgpt,com.anthropic.claude,com.google.android.apps.bard,com.ea.gp.fifamobile,com.bilibili.app.in,com.expressvpn.vpn,com.arena.banglalinkmela.app,teletalk.teletalkcustomerapp,com.deenislamic,com.nsave.app,to.plasma.one.application,live.ryze.app,com.rork.cue,com.useavior.app,com.google.android.apps.photos,com.google.android.gm,com.transsion.camera,com.gallery20,com.transsion.filemanagerx,com.transsion.calendar,com.google.android.apps.authenticator2,"
settings put global package "$REC_PKGS" 2>/dev/null
CUR_VAL="$(settings get global value 2>/dev/null)"
if [ -z "$CUR_VAL" ] || [ "$CUR_VAL" = "null" ]; then
    settings put global value "com.logistics.rider.foodpanda,com.brilliant.connect.com.bd,com.sh.smart.caller,com.transsion.calculator,com.transsion.notebook," 2>/dev/null
fi
TS_APK_DST="/system_ext/priv-app/TranSettings/TranSettings.apk"
TS_DEX="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.dex"
TS_VDEX="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex"
TS_ART="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.art"
if [ -f "$MODDIR/TranSettings_locale.apk" ]; then
    rm -f "$TS_ART" 2>/dev/null
    chmod 0644 "$MODDIR/TranSettings_locale.apk" 2>/dev/null
    chown root:root "$MODDIR/TranSettings_locale.apk" 2>/dev/null
    chcon u:object_r:system_file:s0 "$MODDIR/TranSettings_locale.apk" 2>/dev/null
    if [ ! -s "$MODDIR/TranSettings.odex" ] || [ ! -s "$MODDIR/TranSettings.vdex" ]; then
        mount -o bind "$MODDIR/TranSettings_locale.apk" "$TS_APK_DST" 2>/dev/null
        /apex/com.android.art/bin/dex2oat64 \
            --dex-file="$TS_APK_DST" \
            --dex-location="$TS_APK_DST" \
            --oat-file="$MODDIR/TranSettings.odex" \
            --output-vdex="$MODDIR/TranSettings.vdex" \
            --instruction-set=arm64 \
            --compiler-filter=verify 2>/dev/null
        umount -l "$TS_APK_DST" 2>/dev/null
    fi
    chmod 0644 "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex" 2>/dev/null
    chown system:system "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex" 2>/dev/null
    chcon u:object_r:dalvikcache_data_file:s0 "$MODDIR/TranSettings.odex" "$MODDIR/TranSettings.vdex" 2>/dev/null
    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
            while umount -l '$TS_APK_DST' 2>/dev/null; do :; done
            while umount -l '$TS_DEX' 2>/dev/null; do :; done
            while umount -l '$TS_VDEX' 2>/dev/null; do :; done
            mount -o bind '$MODDIR/TranSettings_locale.apk' '$TS_APK_DST' 2>/dev/null
            mount -o bind '$MODDIR/TranSettings.odex' '$TS_DEX' 2>/dev/null
            mount -o bind '$MODDIR/TranSettings.vdex' '$TS_VDEX' 2>/dev/null
        "
    done
    am force-stop com.android.settings 2>/dev/null
fi

# Mount 1-Tap Native PowerBoostTile in BatteryLab.apk
BL_APK_DST="/system_ext/app/BatteryLab/BatteryLab.apk"
BL_ODEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.odex"
BL_VDEX_DST="/system_ext/app/BatteryLab/oat/arm64/BatteryLab.vdex"
BL_DC_DEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.dex"
BL_DC_VDEX="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.vdex"
BL_DC_ART="/data/dalvik-cache/arm64/system_ext@app@BatteryLab@BatteryLab.apk@classes.art"
if [ -f "$MODDIR/BatteryLab.apk" ]; then
    rm -f "$BL_DC_ART" 2>/dev/null
    chmod 0644 "$MODDIR/BatteryLab.apk" "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab.vdex" 2>/dev/null
    chown root:root "$MODDIR/BatteryLab.apk" 2>/dev/null
    chown system:system "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab.vdex" 2>/dev/null
    chcon u:object_r:system_file:s0 "$MODDIR/BatteryLab.apk" 2>/dev/null
    chcon u:object_r:dalvikcache_data_file:s0 "$MODDIR/BatteryLab.odex" "$MODDIR/BatteryLab.vdex" 2>/dev/null
    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
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
    am force-stop com.transsion.batterylab 2>/dev/null
fi

# Start real-time APP Booster Backend Engine (sync_booster.sh)
settings put secure sysui_qs_tiles "wifi,dataconnection,vowifi,bt,custom(com.transsion.batterylab/.PowerBoostTile),autobrightness,dnd,osflashlight,rotation,night,custom(com.transsion.screenrecorder/.service.ScreenRecordTileService),airplane,location,hotspot,custom(com.transsion.calculator/.CalculatorTileService),qr_code_scanner,saver,dark,color_correction,custom(com.transsion.mol/.service.tile.MolTileService)" 2>/dev/null
settings put global battery_saver_constants "gps_mode=0,disable_location=false,enable_night_mode=true,force_all_apps_standby=true,force_background_check=true,disable_optional_sensors=true,disable_aod=true,disable_launch_boost=false" 2>/dev/null
chmod 0755 "$MODDIR/sync_booster.sh" 2>/dev/null
/system/bin/sh "$MODDIR/sync_booster.sh" >/dev/null 2>&1 &
pkill -f 'sync_booster_watch' 2>/dev/null
setsid /system/bin/sh -c '
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

# 10. Patch MagicFont (com.transsion.magicfont) OAT/VDEX for Android 13 Roboto/TransSans/Custom selection & start real-time font sync
MF_APK=$(pm path com.transsion.magicfont 2>/dev/null | sed 's/^package://')
if [ -n "$MF_APK" ]; then
    MF_DIR=$(dirname "$MF_APK")
    MF_OAT="$MF_DIR/oat/arm64"
    if [ -f "/data/adb/modules/bg6_hios_pro/magicfont_oat/base.vdex" ] && [ -f "/data/adb/modules/bg6_hios_pro/magicfont_oat/base.odex" ]; then
        CUR_SIZE=$(stat -c %s "$MF_OAT/base.vdex" 2>/dev/null)
        if [ "$CUR_SIZE" != "5458132" ]; then
            mkdir -p "$MF_OAT"
            chattr -i "$MF_OAT/base.vdex" "$MF_OAT/base.odex" 2>/dev/null
            rm -f "$MF_OAT"/* 2>/dev/null
            cp /data/adb/modules/bg6_hios_pro/magicfont_oat/base.odex "$MF_OAT/base.odex"
            cp /data/adb/modules/bg6_hios_pro/magicfont_oat/base.vdex "$MF_OAT/base.vdex"
            APK_GRP=$(stat -c %G "$MF_APK" 2>/dev/null)
            chown "1000:${APK_GRP:-system}" "$MF_OAT/base.odex" "$MF_OAT/base.vdex" 2>/dev/null
            chmod 0644 "$MF_OAT/base.odex" "$MF_OAT/base.vdex" 2>/dev/null
            restorecon -R "$MF_OAT" 2>/dev/null
            chattr +i "$MF_OAT/base.odex" "$MF_OAT/base.vdex" 2>/dev/null
            am force-stop com.transsion.magicfont 2>/dev/null
        fi
    fi
fi
/system/bin/sh /data/adb/modules/bg6_hios_pro/sync_font.sh 2>/dev/null
pkill -f '[i]notifyd.*sync_font' 2>/dev/null
mkdir -p /data/data/com.transsion.magicfont/shared_prefs 2>/dev/null
setsid /system/bin/inotifyd /data/adb/modules/bg6_hios_pro/sync_font.sh /data/data/com.transsion.magicfont/shared_prefs:wmn </dev/null >/dev/null 2>&1 &

# MemFusion (virtual RAM from internal storage) is ENABLED.
# The stock 4.10 GB swapfile.db is replaced by a 2 GB one: the T606 works
# best with 4 GB physical + 2 GB virtual, and 2 GB keeps 35+ GB of /data free.
# NOTE: this only works because /data/adb/ksu/modules.img was rebuilt at 2 GB.
# While it was a 1 TB sparse image, Settings mis-reported 2 TB total storage.
setprop persist.vendor.memfusion_ui_enable true 2>/dev/null
setprop persist.vendor.swapfile_enable true 2>/dev/null
setprop persist.vendor.swapfile_size_mb 2048 2>/dev/null

# Guard: never let MemFusion consume more than a quarter of free /data
FREE_MB=$(df -m /data 2>/dev/null | tail -1 | awk '{print $4}')
if [ -n "$FREE_MB" ] && [ "$FREE_MB" -lt 4096 ] 2>/dev/null; then
    setprop persist.vendor.swapfile_size_mb 1024 2>/dev/null
fi

# 11. Flagship / iOS-Grade Storage Engine (F2FS Transparent LZ4 Compression, UFS Queue & Smart Idle Maintenance)
echo 4 > /sys/fs/f2fs/dm-44/discard_granularity 2>/dev/null
echo 20 > /sys/fs/f2fs/dm-44/dirty_nats_ratio 2>/dev/null
echo 0 > /sys/block/sda/queue/iostats 2>/dev/null
echo 0 > /sys/block/sda/queue/add_random 2>/dev/null
echo 2 > /sys/block/sda/queue/rq_affinity 2>/dev/null
echo 256 > /sys/block/sda/queue/read_ahead_kb 2>/dev/null
echo 256 > /sys/block/dm-44/queue/read_ahead_kb 2>/dev/null

# DeviceConfig values in the storage_native_boot namespace are OWNED by
# StorageManager, which re-writes them with its own defaults shortly after boot.
# Setting them once here is not enough — re-assert them a few times.
apply_storage_flags() {
    device_config put storage_native_boot smart_idle_maint_enabled true 2>/dev/null
    device_config put storage_native_boot smart_idle_maint_period 60 2>/dev/null
    device_config put storage_native_boot dirty_reclaim_rate 0.8 2>/dev/null
    device_config put storage_native_boot target_dirty_ratio 50 2>/dev/null
    device_config put app_hibernation app_hibernation_enabled true 2>/dev/null
    device_config put app_hibernation app_hibernation_targets_pre_s_apps true 2>/dev/null
}
apply_storage_flags
# Re-assert after StorageManager has settled (30 s, 120 s, 300 s)
( sleep 30;  apply_storage_flags
  sleep 90;  apply_storage_flags
  sleep 180; apply_storage_flags ) >/dev/null 2>&1 &

# --- Hidden Storage Manager ("Free up space" / "Manage Storage") ---
# ro.storage_manager.enabled gates AutomaticStorageManagementSwitchPreferenceControlle
# and the MANAGE_STORAGE intent row in the Storage dashboard.
resetprop -n ro.storage_manager.enabled true 2>/dev/null
resetprop -n ro.tran_low_storage_support 1 2>/dev/null
settings put secure automatic_storage_manager_enabled 1 2>/dev/null
settings put secure automatic_storage_manager_days_to_retain 90 2>/dev/null

chattr +c /data/app /data/dalvik-cache/arm64 /data/user_de/0/com.google.android.gms/app_chimera 2>/dev/null
/data/adb/ksu/bin/busybox fstrim /data/adb/modules >/dev/null 2>&1
/data/adb/ksu/bin/busybox fstrim /data >/dev/null 2>&1
if [ -x "$MODDIR/bin/f2fs_opt" ]; then
    "$MODDIR/bin/f2fs_opt" /data/app /data/user_de/0/com.google.android.gms/app_chimera >/dev/null 2>&1 &
fi

# 12. Location & GNSS Pro Suite (GreenEye2 RTK/RTD/VDR, Google SUPL 2.0, HERE NLP, Unthrottled GPS)
resetprop -n ro.tran_here_nlp_support 1 2>/dev/null
resetprop -n persist.sys.pwctl.gps 0 2>/dev/null
resetprop -n persist.sys.pwctl.gps.onlysave 1 2>/dev/null
resetprop -n persist.sys.gps.lpp 3 2>/dev/null
setprop persist.sys.pwctl.gps 0 2>/dev/null
setprop persist.sys.pwctl.gps.onlysave 1 2>/dev/null
setprop persist.sys.gps.lpp 3 2>/dev/null
settings put secure location_mode 3 2>/dev/null
settings put secure cloud_here_enable 1 2>/dev/null
settings put secure com.here.consent.COLLECT_RADIO_SIGNALS 1 2>/dev/null
settings put global assisted_gps_enabled 1 2>/dev/null
settings put global wifi_scan_always_enabled 1 2>/dev/null
settings put global ble_scan_always_enabled 1 2>/dev/null
settings put global wifi_scan_throttle_enabled 0 2>/dev/null
pm enable 'com.android.settings/com.android.settings.Settings$TranLocationImproveAccSettingsActivity' 2>/dev/null
pm enable 'com.spreadtrum.sgps/com.spreadtrum.sgps.SgpsActivity' 2>/dev/null

if [ -f "$MODDIR/files/supl.xml" ]; then
    cp -af "$MODDIR/files/supl.xml" /data/vendor/gnss/supl/supl.xml 2>/dev/null
    chown system:system /data/vendor/gnss/supl/supl.xml 2>/dev/null
    chmod 0660 /data/vendor/gnss/supl/supl.xml 2>/dev/null
fi

CR=$(printf '\r')
for gcmd in '$PSPRD,00,a,1' '$PSPRD,00,4,1' '$PSPRD,00,a,2' '$PSPRD,00,a,6' '$PSPRD,00,a,8' '$PSPRD,00,3,29' \
            '$SGPS,write,config.xml,single,REALEPH-ENABLE:TRUE' \
            '$SGPS,write,config.xml,single,SLEEP-ENABLE:FALSE' \
            '$SGPS,write,config.xml,single,FLOAT-CN0:TRUE' \
            '$SGPS,write,config.xml,single,FL_VDR_MODE:1' \
            '$SGPS,write,config.xml,single,WHITE-LIST-ENABLE:TRUE' \
            '$SGPS,write,config.xml,single,GE2-SUPPORT-GALILEO:TRUE' \
            '$SGPS,write,config.xml,single,SPREADORBIT-ENABLE:TRUE' \
            '$SGPS,write,config.xml,single,SUPL-PATH:/data/vendor/gnss/supl/supl.xml'; do
    service call vendor.sprd.hardware.log.ILogControl/default 1 s16 "GNSS_LCS_SERVER" s16 "${gcmd}${CR}
" >/dev/null 2>&1
done

# 13. Wi-Fi, SIM, Network Optimization, LinkTurbo & TCP Booster Suite
for kv in \
    "ro.tran_dual_sta.support 1" \
    "ro.wifi.sup_sprd.wlan_plus true" \
    "ro.tran_wifi_qrcode_share_support 1" \
    "ro.tran_smart_switch_support 1" \
    "ro.linkplus.support 1" \
    "ro.tran_sdata_switch.support 1" \
    "ro.vendor.mtk_gwsd_support 1" \
    "ro.tran_multi_link_support 1" \
    "ro.tran_bandwidth_alloc_support 1" \
    "ro.tran_bandwidth_alloc2_support 1" \
    "ro.tran_telecom_security.support 1" \
    "ro.tran_intercept.support 1" \
    "persist.dbg.ims_volte_enable 1" \
    "persist.dbg.volte_avail_ovr 1" \
    "persist.dbg.vt_avail_ovr 1" \
    "persist.dbg.wfc_avail_ovr 1" \
    "persist.vendor.sys.volte.enable true" \
    "persist.sys.wfc.supp_dual_sim true" \
    "persist.sys.support.vt true" \
    "ro.tran_cloud_volte_support 1" \
    "ro.tran_wfc_qs.support 1" \
    "ro.product.tecno.thunderback.support 1" \
    "ro.product.tbclickwindow.support 1" \
    "ro.product.tbfloatposition.support 1" \
    "ro.product.tbfloattouch.support 1" \
    "ro.product.tbgesturewindow.support 1" \
    "ro.product.tbhotwhitelist.support 1" \
    "ro.product.tbsmartwhitelist.support 1"; do
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

for netapp in com.logistics.rider.foodpanda com.android.chrome com.google.android.youtube org.telegram.messenger org.thunderdog.challegram com.whatsapp com.facebook.katana com.facebook.orca com.transsion.phoenix com.google.android.apps.maps; do
    settings put global "$netapp" 1 2>/dev/null
done

settings put system tranthunderback_enable 1 2>/dev/null
settings put global tranthunderback_enable 1 2>/dev/null
settings put system switch_thunderback 1 2>/dev/null
settings put system tb_video_enable 1 2>/dev/null
settings put system tb_share_enable 1 2>/dev/null

echo 3 > /proc/sys/net/ipv4/tcp_fastopen 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_ecn 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_window_scaling 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_timestamps 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_sack 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_dsack 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_fack 2>/dev/null
echo 1 > /proc/sys/net/ipv4/tcp_tw_reuse 2>/dev/null
echo 15 > /proc/sys/net/ipv4/tcp_fin_timeout 2>/dev/null
echo 300 > /proc/sys/net/ipv4/tcp_keepalive_time 2>/dev/null
echo 3 > /proc/sys/net/ipv4/tcp_syn_retries 2>/dev/null
echo 3 > /proc/sys/net/ipv4/tcp_synack_retries 2>/dev/null
echo 8388608 > /proc/sys/net/core/rmem_max 2>/dev/null
echo 8388608 > /proc/sys/net/core/wmem_max 2>/dev/null
echo 5000 > /proc/sys/net/core/netdev_max_backlog 2>/dev/null

# 14. Mount Patched OSFileManager.apk for 100% Native Single-Tap .zip Extraction & UI Auto-Refresh
OSFM_SRC="$MODDIR/system/system_ext/app/OSFileManager/OSFileManager.apk"
OSFM_DST="/system_ext/app/OSFileManager/OSFileManager.apk"
if [ -f "$OSFM_SRC" ]; then
    chmod 0644 "$OSFM_SRC" 2>/dev/null
    chown root:root "$OSFM_SRC" 2>/dev/null
    chcon u:object_r:system_file:s0 "$OSFM_SRC" 2>/dev/null
    rm -rf /data/dalvik-cache/arm64/*OSFileManager* 2>/dev/null
    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
            while umount -l '$OSFM_DST' 2>/dev/null; do :; done
            mount -o bind '$OSFM_SRC' '$OSFM_DST' 2>/dev/null
        "
    done
    am force-stop com.transsion.filemanagerx 2>/dev/null
fi

# 15. Mount Patched HTMLViewer.apk (Native PDF + Text/HTML Viewer)
HV_APK_SRC="$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"
HV_ODEX_SRC="$MODDIR/system/app/HTMLViewer/oat/arm64/HTMLViewer.odex"
HV_VDEX_SRC="$MODDIR/system/app/HTMLViewer/oat/arm64/HTMLViewer.vdex"
HV_APK_DST="/system/app/HTMLViewer/HTMLViewer.apk"
HV_ODEX_DST="/system/app/HTMLViewer/oat/arm64/HTMLViewer.odex"
HV_VDEX_DST="/system/app/HTMLViewer/oat/arm64/HTMLViewer.vdex"
if [ -f "$HV_APK_SRC" ] && [ -f "$HV_ODEX_SRC" ]; then
    chmod 0644 "$HV_APK_SRC" "$HV_ODEX_SRC" "$HV_VDEX_SRC" 2>/dev/null
    chown root:root "$HV_APK_SRC" "$HV_ODEX_SRC" "$HV_VDEX_SRC" 2>/dev/null
    chcon u:object_r:system_file:s0 "$HV_APK_SRC" "$HV_ODEX_SRC" "$HV_VDEX_SRC" 2>/dev/null
    rm -rf /data/dalvik-cache/arm64/*HTMLViewer* 2>/dev/null
    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
            while umount -l '$HV_APK_DST' 2>/dev/null; do :; done
            while umount -l '$HV_ODEX_DST' 2>/dev/null; do :; done
            while umount -l '$HV_VDEX_DST' 2>/dev/null; do :; done
            mount -o bind '$HV_APK_SRC' '$HV_APK_DST' 2>/dev/null
            mount -o bind '$HV_ODEX_SRC' '$HV_ODEX_DST' 2>/dev/null
            mount -o bind '$HV_VDEX_SRC' '$HV_VDEX_DST' 2>/dev/null
        "
    done
    am force-stop com.android.htmlviewer 2>/dev/null
fi
