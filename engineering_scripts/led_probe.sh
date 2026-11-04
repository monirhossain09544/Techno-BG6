echo 0 > /sys/class/leds/sc27xx:green/brightness
input keyevent 223
sleep 3
echo "--- screen off, charging ---"
for l in red green blue; do d=/sys/class/leds/sc27xx:$l; echo "$l b=$(cat $d/brightness) trig=$(cat $d/trigger 2>/dev/null | grep -o '\[[^]]*\]')"; ls $d; done
dumpsys lights | grep 'Light id'
dumpsys battery | grep -E 'status|level|AC|USB'
input keyevent 224
