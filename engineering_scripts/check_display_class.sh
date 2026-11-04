#!/system/bin/sh
echo "=== /sys/class/display ==="
ls -la /sys/class/display/
for d in /sys/class/display/*/; do
    echo "=== $d ==="
    for f in "$d"*; do
        if [ -f "$f" ]; then
            echo "--- $f ---"
            cat "$f" 2>/dev/null | head -n 5
        fi
    done
done

echo "=== PQ / DPU / DRM PROPS ==="
getprop | grep -i -E "pq|cabc|dpu|drm|corner|hdr|color|display"
