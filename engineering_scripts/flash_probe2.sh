echo "--- led_charge where ---"
for ns in system secure global; do echo "$ns: $(settings get $ns led_charge)"; done
echo "--- who references ---"
grep -l -a -r 'led_charge' /system/framework /system_ext/framework /system/app/FlashControlService /system_ext/priv-app/TranSystemUI /system_ext/priv-app/TranSettings /system/priv-app 2>/dev/null | head
echo "--- sprd_flash ---"
ls -la /sys/devices/virtual/misc/sprd_flash/ /sys/devices/platform/sprd_flash/ 2>/dev/null
cat /sys/devices/platform/sprd_flash/uevent 2>/dev/null
ls /dev | grep -i flash
