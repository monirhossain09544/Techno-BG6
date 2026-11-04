#!/system/bin/sh
logcat -c
cmd statusbar expand-settings
sleep 2
logcat -d | grep -iE "systemui|qs|tile|controlcenter|blur|traneffect|anim|fixed" | tail -n 100
cmd statusbar collapse
