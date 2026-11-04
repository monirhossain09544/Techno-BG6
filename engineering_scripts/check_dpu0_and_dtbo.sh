#!/system/bin/sh
dd if=/dev/block/by-name/dtbo_a of=/data/local/tmp/dtbo_a.img bs=4096 2>/dev/null
dd if=/dev/block/by-name/dtbo_b of=/data/local/tmp/dtbo_b.img bs=4096 2>/dev/null

echo "=== DPU0 SYSFS ==="
for f in /sys/class/display/dpu0/*; do
    if [ -f "$f" ]; then
        echo "--- $f ---"
        cat "$f" 2>/dev/null | head -n 10
    fi
done

echo "=== PANEL SUSPEND/RESUME & TOUCH ==="
dmesg | grep -E "sprd_panel|sprd_dsi|CTS|tran_touch" | tail -n 50
