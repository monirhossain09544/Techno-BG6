#!/system/bin/sh
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

# Micro Intelligence & Gesture properties
resetprop -n ro.tapping_wake_support 1
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
resetprop -n ro.os_independent_tiles_anim.support 1
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

# Lock refresh rate to 60Hz, disable DSI ESD BTA check, and set DPU 384MHz / DDR lcdon to eliminate DPU underflow blinking
settings put system tran_refresh_mode 60
settings put system min_refresh_rate 60.0
settings put system peak_refresh_rate 60.0
if [ -e /sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/esd_check_enable ]; then
    echo 0 > /sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/esd_check_enable
fi
echo 4 > /sys/class/devfreq/dpu/dpu_governor/work_index 2>/dev/null
echo 4 > /sys/class/devfreq/dpu/dpu_governor/idle_index 2>/dev/null
echo 384000000 > /sys/class/devfreq/23100000.gpu/min_freq 2>/dev/null

# Initialize Tapping Wake setting to 1 only if not yet set by user in Settings
CUR_TW=$(settings get system os_action_tapping_wake)
if [ "$CUR_TW" != "0" ] && [ "$CUR_TW" != "1" ]; then
    settings put system os_action_tapping_wake 1
    settings put global os_action_tapping_wake 1
fi

# Shield /proc/gesture_function from kernel gesture_wakeup_enabled SRAM trap
if [ -e /proc/gesture_function ]; then
    umount /proc/gesture_function 2>/dev/null
    echo -n "cc0" > /dev/dt2w_state
    chmod 0666 /dev/dt2w_state
    mount -o bind /dev/dt2w_state /proc/gesture_function 2>/dev/null
fi

# Enable TRAN_PS_SUSPEND_MODE + start dt2w_daemon v11
if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    echo 1 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
fi
killall -9 dt2w_daemon 2>/dev/null
if [ -x "$MODDIR/bin/dt2w_daemon" ]; then
    runcon u:r:magisk:s0 "$MODDIR/bin/dt2w_daemon" >/dev/null 2>&1 &
fi

# Enable all hidden Full HiOS activities in OSSettingsExt
for act in     com.transsion.splitscreensetting.SplitSettingsMainActivity     com.transsion.splitscreensetting.SplitSettingsDetailActivity     com.transsion.ossettingsext.noticenter.activity.NotificationCenterActivity     com.transsion.ossettingsext.noticenter.activity.NotificationDisplaySettingsActivity     com.transsion.ossettingsext.noticenter.activity.BadgeNotificationsActivity     com.transsion.ossettingsext.noticenter.activity.FloatNotificationsActivity     com.transsion.ossettingsext.noticenter.activity.LockScreenPullDownActivity     com.transsion.ossettingsext.lock.pop.LockPopActivity     com.transsion.ossettingsext.lock.notify.LockScreenNotifyActivity     com.transsion.ossettingsext.flash.main.MainActivity     com.transsion.ossettingsext.flash.flasheffect.DetailFlashEffectActivity     com.transsion.ossettingsext.flash.flasheffect.NotiFlashEffectActivity     com.transsion.ossettingsext.flash.flasheffect.IncomingFlashEffectActivity     com.transsion.ossettingsext.flash.flasheffect.MusicFlashEffectActivity     com.transsion.ossettingsext.flash.appmusiclist.MusicAppListActivity     com.transsion.ossettingsext.flash.appnotilist.NotiAppListActivity     com.transsion.activityembedding.SettingsActivity     com.transsion.compatiblemode.SettingsActivity     com.transsion.screenrelay.SettingsActivity     com.transsion.displaycutoutmode.SettingsActivity     com.transsion.minilauncher.MainActivity; do
    pm enable com.transsion.ossettingsext/$act 2>/dev/null
done

# Enable all MicroIntelligence (Actions and Gestures) activities
for act in     MicroIntelligence     TappingWakeActivity     MusicGestureActivity     CaptureScreenActivity     LiftWakeUpActivity     SmartAnswerActivity     CallGestureActivity     FlipMuteActivity     QuickStartActivity     SystemNavigationActivity     GestureNavigationActivity     KeyNavigationActivity     TappingBroadcastActivity; do
    pm enable com.transsion.microintelligence/com.transsion.microintelligence.$act 2>/dev/null
done

# Enable SmartPanel, GameMode, AskAI, ZaHooc, Thunderback, Social Turbo, Kids Mode, DualApp, AppLock, MultiWindow & Multi-User
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

# 5. Fast Doze (Light Doze in 15s, Deep Doze in 5m when screen is off)
settings put global device_idle_constants "inactive_to=30000,sensing_to=0,locating_to=0,location_accuracy=20.0,motion_inactive_to=0,idle_after_inactive_to=0,light_after_inactive_to=15000,light_pre_idle_to=30000,light_idle_to=300000,light_idle_factor=2.0,light_max_idle_to=900000"

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

if ! pm path com.transsion.magicfont >/dev/null 2>&1; then
    pm install -r /data/adb/modules/bg6_hios_pro/system_ext/app/MagicFont/MagicFont.apk >/dev/null 2>&1
fi
pm enable 'com.android.settings/com.android.settings.Settings$TranIndividualizationActivity' 2>/dev/null

# 9. Enable built-in Bold text toggle (FontWeightAdjustmentPreferenceController) in Settings -> Accessibility -> Text and display
TS_DEX="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.dex"
TS_VDEX="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex"
TS_ART="/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.art"
if [ -f "$TS_DEX" ] && [ -f "$TS_VDEX" ]; then
    rm -f "$TS_ART" 2>/dev/null
    CUR_BYTE=$(dd if="$TS_VDEX" bs=1 skip=5161273 count=1 2>/dev/null | od -An -tx1 | tr -d ' \n')
    if [ "$CUR_BYTE" = "30" ]; then
        chattr -i "$TS_DEX" "$TS_VDEX" 2>/dev/null
        printf '\x00' | dd of="$TS_VDEX" bs=1 seek=5161273 count=1 conv=notrunc 2>/dev/null
        printf '\x00\x48\x16\x00' | dd of="$TS_DEX" bs=1 seek=134688 count=4 conv=notrunc 2>/dev/null
        chown system:system "$TS_DEX" "$TS_VDEX" 2>/dev/null
        chmod 0640 "$TS_DEX" "$TS_VDEX" 2>/dev/null
        restorecon "$TS_DEX" "$TS_VDEX" 2>/dev/null
        chattr +i "$TS_DEX" "$TS_VDEX" 2>/dev/null
        am force-stop com.android.settings 2>/dev/null
    fi
fi

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

# Disable unused 4.10 GB flash swapfile.db (keep fast in-RAM zram0 active) to save 4.1 GB storage & eMMC wear
setprop persist.vendor.swapfile_enable false 2>/dev/null
setprop persist.vendor.swapfile_size_mb 0 2>/dev/null
setprop persist.vendor.memfusion_ui_enable false 2>/dev/null
if [ -f /data/swapfile.db ]; then
    swapoff /data/swapfile.db 2>/dev/null
    rm -f /data/swapfile.db 2>/dev/null
fi

# 11. Flagship / iOS-Grade Storage Engine (F2FS Transparent LZ4 Compression, UFS Queue & Smart Idle Maintenance)
echo 4 > /sys/fs/f2fs/dm-44/discard_granularity 2>/dev/null
echo 20 > /sys/fs/f2fs/dm-44/dirty_nats_ratio 2>/dev/null
echo 0 > /sys/block/sda/queue/iostats 2>/dev/null
echo 0 > /sys/block/sda/queue/add_random 2>/dev/null
echo 2 > /sys/block/sda/queue/rq_affinity 2>/dev/null
echo 256 > /sys/block/sda/queue/read_ahead_kb 2>/dev/null
echo 256 > /sys/block/dm-44/queue/read_ahead_kb 2>/dev/null

device_config put storage_native_boot smart_idle_maint_enabled true 2>/dev/null
device_config put storage_native_boot smart_idle_maint_period 60 2>/dev/null
device_config put storage_native_boot dirty_reclaim_rate 0.8 2>/dev/null
device_config put storage_native_boot target_dirty_ratio 50 2>/dev/null
device_config put app_hibernation app_hibernation_enabled true 2>/dev/null
device_config put app_hibernation app_hibernation_targets_pre_s_apps true 2>/dev/null

chattr +c /data/app /data/dalvik-cache/arm64 /data/user_de/0/com.google.android.gms/app_chimera 2>/dev/null
if [ -x "$MODDIR/bin/f2fs_opt" ]; then
    "$MODDIR/bin/f2fs_opt" /data/app /data/user_de/0/com.google.android.gms/app_chimera >/dev/null 2>&1 &
fi
