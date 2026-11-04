for f in /system/framework/*.jar /system/framework/oat/arm64/*.vdex /system_ext/framework/*.jar /system/framework/arm64/*.oat; do
  for k in led_notification led_charge led_notification_status; do
    grep -q -a "$k" "$f" 2>/dev/null && echo "$f $k"
  done
done
