#!/system/bin/sh
echo "=== 1. Check sprd-drm.ko panel strings ==="
/data/adb/ksu/bin/busybox strings /vendor/lib/modules/sprd-drm.ko | grep -iE "panel|suspend|resume|psensor|gesture|reset|corner" | head -n 60

echo "=== 2. Check /proc entries for touch / edge / gesture ==="
ls -la /proc/ | grep -iE "gesture|edge|touch|tp|cts|tran"
