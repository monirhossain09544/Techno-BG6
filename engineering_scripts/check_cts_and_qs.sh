#!/system/bin/sh
echo "=== 1. FULL CTS / CHIPONE DMESG ==="
dmesg | grep -iE "cts|chipone|tran_touch|sram|panel" | tail -n 100

echo "=== 2. DROPBOX RECENT ENTRIES ==="
ls -lt /data/system/dropbox | head -n 20

echo "=== 3. EXPAND STATUSBAR / QS AND TAKE SCREENSHOT ==="
cmd statusbar expand-settings
sleep 1
screencap -p /data/local/tmp/qs_screen.png
cmd statusbar collapse
