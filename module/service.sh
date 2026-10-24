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
resetprop -n persist.sys.tran_split_screen.force_disable 0
resetprop -n persist.sys.traneffect.enable 1
resetprop -n ro.tapping_wake_support 1
resetprop -n ro.os_micro_intelligence_support 1
resetprop -n ro.os_micro_gesture_functions_support 1

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

# Enable TRAN_PS_SUSPEND_MODE + start dt2w_daemon v10
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

# Enable SmartPanel Video Assistant, MicroIntelligence TappingWake & DualApp activities
pm enable com.transsion.smartpanel/com.transsion.gamemode.video.activity.VideoMainActivity
pm enable com.transsion.smartpanel/com.transsion.gamemode.activity.FrameInterpolationSettingsActivity
pm enable com.transsion.microintelligence/com.transsion.microintelligence.TappingWakeActivity
pm enable com.transsion.dualapp/com.transsion.dualapp.MainActivity
