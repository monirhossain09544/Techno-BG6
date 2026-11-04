P=/data/adb/modules/bg6_hios_pro/system.prop
grep -q '^ro.vendor.notification_changing_light_support=' $P || printf '\n# Breath light (charging + notification LED) page\nro.vendor.notification_changing_light_support=1\nro.vendor.tran.notification_changing_light_support=1\n' >> $P
RP=resetprop; command -v resetprop >/dev/null || RP="/data/adb/ksud debug resetprop"
$RP -n ro.vendor.notification_changing_light_support 1
$RP -n ro.vendor.tran.notification_changing_light_support 1
echo "props: $(getprop ro.vendor.notification_changing_light_support) $(getprop ro.vendor.tran.notification_changing_light_support)"
tail -3 $P
am force-stop com.android.settings
am start -W -a android.settings.DISPLAY_SETTINGS >/dev/null
