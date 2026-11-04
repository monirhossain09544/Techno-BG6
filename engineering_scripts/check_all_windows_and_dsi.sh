#!/system/bin/sh
echo "=== 1. All Window names in WindowManager ==="
dumpsys window windows | grep "Window #"

echo "=== 2. Check all DPU / DSI / PQ / Panel sysfs nodes ==="
for f in /sys/devices/platform/soc/soc:ap-ahb/31100000.dsi/31100000.dsi.0/display/panel0/* \
         /sys/class/display/dispc0/* \
         /sys/class/display/panel0/*; do
    [ -f "$f" ] && echo "$f = $(cat "$f" 2>/dev/null | head -n 2)"
done

echo "=== 3. Check if any accessibility / developer drawing options are on ==="
getprop | grep -iE "debug\.|hwui\.|sf\.|pq|cabc|srgb|color"
