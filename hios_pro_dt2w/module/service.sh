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
