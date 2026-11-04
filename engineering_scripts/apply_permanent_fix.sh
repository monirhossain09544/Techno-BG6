#!/system/bin/sh
MOD="/data/adb/modules/bg6_hios_pro"

# 1. Backup current module scripts before patching
mkdir -p /data/local/tmp/mod_backup_1029
cp "$MOD/post-fs-data.sh" "$MOD/service.sh" "$MOD/system.prop" /data/local/tmp/mod_backup_1029/

# 2. Shield /proc/gesture_function EARLY in post-fs-data.sh BEFORE system_server/MicroIntelligence can trigger SRAM wipe trap
cat << 'EOF' > "$MOD/post-fs-data.sh"
#!/system/bin/sh
MODDIR=${0%/*}

RP="/data/adb/ksu/bin/resetprop"
[ -x "$RP" ] || RP="resetprop"

# CRITICAL: Shield /proc/gesture_function BEFORE zygote/system_server starts
# so MicroIntelligence never activates TRAN_GESTURE_SUSPEND_MODE (which wipes ICNL9916 volatile SRAM)
if [ -e /proc/gesture_function ]; then
    umount /proc/gesture_function 2>/dev/null
    echo -n "0" > /dev/dt2w_state
    chmod 0666 /dev/dt2w_state
    mount -o bind /dev/dt2w_state /proc/gesture_function 2>/dev/null
fi

if [ -f "$MODDIR/files/handheld_core_hardware.xml" ]; then
    chmod 0644 "$MODDIR/files/handheld_core_hardware.xml"
    chcon u:object_r:vendor_configs_file:s0 "$MODDIR/files/handheld_core_hardware.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/handheld_core_hardware.xml" \
        /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
fi

if [ -f "$MODDIR/files/gmsexpressplus.xml" ]; then
    chmod 0644 "$MODDIR/files/gmsexpressplus.xml"
    chcon u:object_r:system_file:s0 "$MODDIR/files/gmsexpressplus.xml" 2>/dev/null
    mount -o bind "$MODDIR/files/gmsexpressplus.xml" \
        /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
fi

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

exit 0
EOF
chmod 0755 "$MOD/post-fs-data.sh"

# 3. Fix system.prop: disable broken dynamicblur / traneffect / independent_tiles_anim that hide QS icons
sed -i 's/ro.tran.effectengine.dynamicblur.support=1/ro.tran.effectengine.dynamicblur.support=0/g' "$MOD/system.prop"
sed -i 's/persist.sys.traneffect.enable=1/persist.sys.traneffect.enable=0/g' "$MOD/system.prop"
sed -i 's/ro.os_independent_tiles_anim.support=1/ro.os_independent_tiles_anim.support=0/g' "$MOD/system.prop"
sed -i 's/ro.tapping_wake_support=1/ro.tapping_wake_support=0/g' "$MOD/system.prop"

# 4. Fix service.sh: disable dt2w_daemon (which grabs /dev/input/event2 via EVIOCGRAB and injects fake touches)
#    and disable traneffect / independent_tiles_anim
sed -i 's/resetprop -n persist.sys.traneffect.enable 1/resetprop -n persist.sys.traneffect.enable 0/g' "$MOD/service.sh"
sed -i 's/resetprop -n ro.os_independent_tiles_anim.support 1/resetprop -n ro.os_independent_tiles_anim.support 0/g' "$MOD/service.sh"
sed -i 's/resetprop -n ro.tapping_wake_support 1/resetprop -n ro.tapping_wake_support 0/g' "$MOD/service.sh"
sed -i 's/echo 1 > \/sys\/devices\/virtual\/sprd_sensorhub_tp\/device\/psensor_enable/echo 0 > \/sys\/devices\/virtual\/sprd_sensorhub_tp\/device\/psensor_enable/g' "$MOD/service.sh"
sed -i 's/if \[ -x "\$MODDIR\/bin\/dt2w_daemon" \]; then/if false \&\& [ -x "\$MODDIR\/bin\/dt2w_daemon" ]; then/g' "$MOD/service.sh"

settings put system os_action_tapping_wake 0
settings put global os_action_tapping_wake 0
setprop persist.sys.traneffect.enable 0

sync
echo "PATCH_APPLIED_OK"
