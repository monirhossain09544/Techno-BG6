#!/system/bin/sh
echo "=== 1. DROPBOX WTF CONTENTS ==="
cat /data/system/dropbox/system_app_wtf@1793264735392.txt
echo "---"
cat /data/system/dropbox/system_server_wtf@1793264595128.txt
echo "---"
cat /data/system/dropbox/system_server_wtf@1793263618614.txt

echo "=== 2. EXPAND NOTIFICATIONS AND SCREENSHOT ==="
cmd statusbar expand-notifications
sleep 1
screencap -p /data/local/tmp/notif_screen.png
cmd statusbar collapse

echo "=== 3. CHECK LIVE service.sh ON DEVICE vs REPO ==="
diff -u /data/adb/modules/bg6_hios_pro/service.sh /data/local/tmp/repo_service.sh 2>/dev/null || wc -c /data/adb/modules/bg6_hios_pro/service.sh /data/adb/modules/bg6_hios_pro/system.prop /data/adb/modules/bg6_hios_pro/post-fs-data.sh
