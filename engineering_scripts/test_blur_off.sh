#!/system/bin/sh
setprop persist.sys.traneffect.enable 0
resetprop -n persist.sys.traneffect.enable 0
resetprop -n ro.tran.effectengine.dynamicblur.support 0
resetprop -n ro.os.recent.blur 0
killall com.android.systemui
sleep 4
wm dismiss-keyguard
sleep 1
cmd statusbar expand-settings
sleep 2
screencap -p /data/local/tmp/qs_fixed.png
cmd statusbar collapse
chmod 0666 /data/local/tmp/qs_fixed.png
