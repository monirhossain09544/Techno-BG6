for l in red green blue; do echo "$l $(cat /sys/class/leds/sc27xx:$l/brightness) max=$(cat /sys/class/leds/sc27xx:$l/max_brightness)"; done
echo 255 > /sys/class/leds/sc27xx:green/brightness
echo "green now: $(cat /sys/class/leds/sc27xx:green/brightness)"
