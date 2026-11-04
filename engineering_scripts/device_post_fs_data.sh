#!/system/bin/sh
MODDIR=${0%/*}

RP="/data/adb/ksu/bin/resetprop"
[ -x "$RP" ] || RP="resetprop"

# ---------------------------------------------------------------------------
# Factory Touch Protection (BOE ICNL9916 Flashless TDDI):
# Lock /proc/gesture_function natively as root:root 0444 (zero bind-mounts)
# so system_server/MicroIntelligence never enables TRAN_GESTURE_SUSPEND_MODE,
# ensuring sprd_panel_prepare + sprd_panel_enable always run full MIPI DSI init.
# ---------------------------------------------------------------------------
if [ -e /proc/gesture_function ]; then
    umount /proc/gesture_function 2>/dev/null
    chown 0:0 /proc/gesture_function 2>/dev/null
    chmod 0444 /proc/gesture_function 2>/dev/null
fi
rm -f /dev/dt2w_state 2>/dev/null

if [ -e /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable ]; then
    chmod 0664 /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
    echo 0 > /sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable 2>/dev/null
fi

# ---------------------------------------------------------------------------
# Bind-mounts done manually (unmount first to prevent duplicate mounts when
# both ksud and magiskd execute post-fs-data, and remount ro for stealth).
# ---------------------------------------------------------------------------

# Full Android handheld_core_hardware.xml: removes android.hardware.ram.low,
# adds app_widgets / voice_recognizers / live_wallpaper / ram.normal.
if [ -f "$MODDIR/files/handheld_core_hardware.xml" ]; then
    umount /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
    chmod 0644 "$MODDIR/files/handheld_core_hardware.xml"
    chcon u:object_r:vendor_configs_file:s0 "$MODDIR/files/handheld_core_hardware.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/handheld_core_hardware.xml" \
        /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
    mount -o remount,ro,bind /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
fi

# Empty gmsexpressplus.xml: drops com.google.android.feature.GMSEXPRESS_PLUS_BUILD
if [ -f "$MODDIR/files/gmsexpressplus.xml" ]; then
    umount /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
    chmod 0644 "$MODDIR/files/gmsexpressplus.xml"
    chcon u:object_r:system_file:s0 "$MODDIR/files/gmsexpressplus.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/gmsexpressplus.xml" \
        /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
    mount -o remount,ro,bind /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
fi

# Bangladesh / Google SUPL 2.0 Config (/vendor/etc/supl.xml -> supl.google.com, MCC 470)
if [ -f "$MODDIR/files/supl.xml" ]; then
    umount /vendor/etc/supl.xml 2>/dev/null
    chmod 0644 "$MODDIR/files/supl.xml"
    chcon u:object_r:vendor_configs_file:s0 "$MODDIR/files/supl.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/supl.xml" \
        /vendor/etc/supl.xml 2>/dev/null
    mount -o remount,ro,bind /vendor/etc/supl.xml 2>/dev/null
fi

# ---------------------------------------------------------------------------
# Go Edition -> Full Android properties. Must run before zygote starts.
# ---------------------------------------------------------------------------
$RP -n ro.config.low_ram false
$RP -n ro.os_1g_go.support 0
$RP -n ro.os_2g_go.support 0
$RP -n ro.os_3g_go.support 0
$RP -n ro.os_4g_go.support 0
$RP -n ro.os_go.support 0
$RP -n ro.griffin.app_lite 0
$RP -n ro.os_settings_lite_custom 0
$RP -n ro.tran.slim_device 0
$RP -n persist.sys.tran_split_screen.force_disable 0
$RP -n persist.sys.traneffect.enable 0
$RP -n ro.tran.effectengine.dynamicblur.support 0
$RP -n ro.os_independent_tiles_anim.support 0
$RP -n ro.tapping_wake_support 0

exit 0
