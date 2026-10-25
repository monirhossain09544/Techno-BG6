#!/system/bin/sh
MODDIR=${0%/*}
OV="$MODDIR/system/product/overlay/BG6HiOSPro.apk"
if [ -f "$OV" ]; then
  chmod 0644 "$OV"
  chown root:root "$OV"
  chcon u:object_r:system_file:s0 "$OV" 2>/dev/null
fi

# Bind-mount Full Android handheld_core_hardware.xml (removes cant_save_state, adds app_widgets/voice_recognizers/live_wallpaper/ram.normal)
if [ -f "$MODDIR/vendor/etc/permissions/handheld_core_hardware.xml" ]; then
  chmod 0644 "$MODDIR/vendor/etc/permissions/handheld_core_hardware.xml"
  chcon u:object_r:vendor_configs_file:s0 "$MODDIR/vendor/etc/permissions/handheld_core_hardware.xml" 2>/dev/null
  mount -o bind "$MODDIR/vendor/etc/permissions/handheld_core_hardware.xml" /vendor/etc/permissions/handheld_core_hardware.xml 2>/dev/null
fi

# Bind-mount empty gmsexpressplus.xml to remove com.google.android.feature.GMSEXPRESS_PLUS_BUILD
if [ -f "$MODDIR/product/etc/sysconfig/gmsexpressplus.xml" ]; then
  chmod 0644 "$MODDIR/product/etc/sysconfig/gmsexpressplus.xml"
  chcon u:object_r:system_file:s0 "$MODDIR/product/etc/sysconfig/gmsexpressplus.xml" 2>/dev/null
  mount -o bind "$MODDIR/product/etc/sysconfig/gmsexpressplus.xml" /product/etc/sysconfig/gmsexpressplus.xml 2>/dev/null
fi

/data/adb/ksu/bin/resetprop -n ro.config.low_ram false
/data/adb/ksu/bin/resetprop -n ro.os_2g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_1g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_3g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_4g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_go.support 0
/data/adb/ksu/bin/resetprop -n ro.griffin.app_lite 0
/data/adb/ksu/bin/resetprop -n ro.tran.slim_device 0
