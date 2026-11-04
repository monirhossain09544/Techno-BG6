#!/system/bin/sh
echo "=== DTBO SHA256 ==="
sha256sum /dev/block/by-name/dtbo_a
sha256sum /dev/block/by-name/dtbo_b

echo "=== DMESG DRM / PANEL / CORNER / TRAN_TOUCH ==="
dmesg | grep -i -E "drm|panel|corner|tran_touch|psensor_enable|gesture_function" | tail -n 80

echo "=== SYSFS DRM / DPU / PANEL ==="
for f in /sys/class/drm/card0-DSI-1/* /sys/class/display/dpu/* /sys/class/display/panel0/*; do
    if [ -f "$f" ]; then
        echo "--- $f ---"
        cat "$f" 2>/dev/null | head -n 5
    fi
done
