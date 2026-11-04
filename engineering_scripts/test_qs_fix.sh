#!/system/bin/sh
/data/adb/ksud debug resetprop ro.os_independent_tiles_anim.support 0 2>/dev/null
resetprop ro.os_independent_tiles_anim.support 0 2>/dev/null
echo "prop now: [$(getprop ro.os_independent_tiles_anim.support)]"
killall com.android.systemui
sleep 4
cmd statusbar expand-settings
sleep 2
screencap -p /data/local/tmp/qs_no_ind_anim.png
cmd statusbar collapse
chmod 0666 /data/local/tmp/qs_no_ind_anim.png
