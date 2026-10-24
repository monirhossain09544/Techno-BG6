#!/system/bin/sh
MODDIR=${0%/*}

# Wait until boot completes
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Re-assert properties after system_server/init post-boot
resetprop -n ro.config.low_ram false
resetprop -n ro.os_2g_go.support 0
resetprop -n ro.os_1g_go.support 0
resetprop -n ro.os_3g_go.support 0
resetprop -n ro.os_4g_go.support 0
resetprop -n ro.os_go.support 0
resetprop -n ro.griffin.app_lite 0
resetprop -n ro.os_settings_lite_custom 0
resetprop -n persist.sys.tran_split_screen.force_disable 0
resetprop -n persist.sys.traneffect.enable 1

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
settings put system key_edge_flash 1
settings put system tran_DualApp_support 1

# Enable Double-Tap to Wake (DT2W) via TRAN_PS_SUSPEND_MODE + dt2w_daemon v3
settings put system os_action_tapping_wake 1
settings put global os_action_tapping_wake 1
if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    echo 1 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable
fi
killall -9 dt2w_daemon 2>/dev/null
if [ -x "$MODDIR/bin/dt2w_daemon" ]; then
    runcon u:r:magisk:s0 "$MODDIR/bin/dt2w_daemon" >/dev/null 2>&1 &
fi

# Enable all hidden Full HiOS activities in OSSettingsExt
pm enable com.transsion.ossettingsext/com.transsion.splitscreensetting.SplitSettingsMainActivity
pm enable com.transsion.ossettingsext/com.transsion.splitscreensetting.SplitSettingsDetailActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.noticenter.activity.NotificationCenterActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.noticenter.activity.NotificationDisplaySettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.lock.pop.LockPopActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.lock.notify.LockScreenNotifyActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.flash.main.MainActivity
pm enable com.transsion.ossettingsext/com.transsion.activityembedding.SettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.compatiblemode.SettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.screenrelay.SettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.displaycutoutmode.SettingsActivity

# Enable SmartPanel Video Assistant & DualApp activities
pm enable com.transsion.smartpanel/com.transsion.gamemode.video.activity.VideoMainActivity
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.FrameInterpolationSettingsActivity
pm enable com.transsion.dualapp/com.transsion.dualapp.MainActivity
