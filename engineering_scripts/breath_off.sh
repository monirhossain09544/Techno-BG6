P=/data/adb/modules/bg6_hios_pro/system.prop
sed -i '/^# Breath light (charging + notification LED) page$/d;/^ro.vendor.notification_changing_light_support=1$/d;/^ro.vendor.tran.notification_changing_light_support=1$/d' $P
RP=resetprop; command -v resetprop >/dev/null || RP="/data/adb/ksud debug resetprop"
$RP -d ro.vendor.notification_changing_light_support
$RP -d ro.vendor.tran.notification_changing_light_support
echo 0 > /sys/class/leds/sc27xx:green/brightness
echo "props now: [$(getprop ro.vendor.notification_changing_light_support)] [$(getprop ro.vendor.tran.notification_changing_light_support)]"
echo "green: $(cat /sys/class/leds/sc27xx:green/brightness)"
grep -c changing_light $P
am force-stop com.android.settings
rm -f /data/local/tmp/led_on.sh /data/local/tmp/led_probe.sh /data/local/tmp/flash_probe.sh /data/local/tmp/fp2.sh /data/local/tmp/fwg.sh /data/local/tmp/breath_on.sh /data/local/tmp/breath_off.sh
