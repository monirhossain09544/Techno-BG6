#!/system/bin/sh
MODDIR=${0%/*}
OV="$MODDIR/system/product/overlay/BG6HiOSPro.apk"
if [ -f "$OV" ]; then
  chmod 0644 "$OV"
  chown root:root "$OV"
  chcon u:object_r:system_file:s0 "$OV" 2>/dev/null
fi
/data/adb/ksu/bin/resetprop -n ro.config.low_ram false
/data/adb/ksu/bin/resetprop -n ro.os_2g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_1g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_3g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_4g_go.support 0
/data/adb/ksu/bin/resetprop -n ro.os_go.support 0
/data/adb/ksu/bin/resetprop -n ro.griffin.app_lite 0
