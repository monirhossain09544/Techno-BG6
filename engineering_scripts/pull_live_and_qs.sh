#!/system/bin/sh
echo "=== 1. EXTRA SCRIPTS IN /data/adb ==="
echo "--- disable-lowram.sh ---"
cat /data/adb/post-fs-data.d/disable-lowram.sh 2>/dev/null
echo "--- google_system.sh ---"
cat /data/adb/post-fs-data.d/google_system.sh 2>/dev/null
echo "--- net_tune.sh ---"
cat /data/adb/service.d/net_tune.sh 2>/dev/null

echo "=== 2. EXPAND QS, WAIT 3s, DUMP UI & SCREENSHOT ==="
cmd statusbar expand-settings
sleep 3
screencap -p /data/local/tmp/qs_settled.png
uiautomator dump /data/local/tmp/qs_dump.xml
cmd statusbar collapse

cp /data/adb/modules/bg6_hios_pro/service.sh /data/local/tmp/live_service.sh
cp /data/adb/modules/bg6_hios_pro/system.prop /data/local/tmp/live_system.prop
cp /data/adb/modules/bg6_hios_pro/post-fs-data.sh /data/local/tmp/live_post-fs-data.sh
chmod 0666 /data/local/tmp/live_* /data/local/tmp/qs_settled.png /data/local/tmp/notif_screen.png /data/local/tmp/qs_dump.xml
