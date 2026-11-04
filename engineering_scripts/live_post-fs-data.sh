#!/system/bin/sh
MODDIR=${0%/*}

RP="/data/adb/ksu/bin/resetprop"
[ -x "$RP" ] || RP="resetprop"

# ---------------------------------------------------------------------------
# Bind-mounts done manually (NOT via module/vendor or module/product dirs,
# because overlaying those partitions bootloops this device).
# ---------------------------------------------------------------------------

# Full Android handheld_core_hardware.xml: removes android.hardware.ram.low,
# adds app_widgets / voice_recognizers / live_wallpaper / ram.normal.
if [ -f "$MODDIR/files/handheld_core_hardware.xml" ]; then
    chmod 0644 "$MODDIR/files/handheld_core_hardware.xml"
    chcon u:object_r:vendor_configs_file:s0 "$MODDIR/files/handheld_core_hardware.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/handheld_core_hardware.xml" \
        /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
fi

# Empty gmsexpressplus.xml: drops com.google.android.feature.GMSEXPRESS_PLUS_BUILD
if [ -f "$MODDIR/files/gmsexpressplus.xml" ]; then
    chmod 0644 "$MODDIR/files/gmsexpressplus.xml"
    chcon u:object_r:system_file:s0 "$MODDIR/files/gmsexpressplus.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/gmsexpressplus.xml" \
        /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
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
$RP -n persist.sys.traneffect.enable 1

exit 0
