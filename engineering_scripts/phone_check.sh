#!/system/bin/sh
echo "=== 1. LOAD & UPTIME & MEMORY ==="
uptime
free -m
cat /proc/swaps

echo "=== 2. RUNNING DAEMONS & TOP CPU ==="
top -n 1 -b | head -n 30
ps -A -o PID,PPID,USER,NAME,ARGS | grep -E "dt2w|f2fs_opt|inotifyd|bg6|magisk|ksud|system_server|systemui"

echo "=== 3. DISPLAY / INPUT / OVERLAY ==="
wm size
wm density
cmd overlay list com.android.settings
cmd overlay list com.android.systemui
cmd overlay list android

echo "=== 4. MODULE LIVE FILES ==="
ls -la /data/adb/modules/bg6_hios_pro/
cat /data/adb/modules/bg6_hios_pro/module.prop
ls -la /data/adb/post-fs-data.d/ /data/adb/service.d/

echo "=== 5. RECENT ANR / CRASH / TOUCH / INPUT LOGS ==="
logcat -d -b crash -t 60
logcat -d -b events -t 40
logcat -d -t 200 | grep -iE "ANR|Watchdog|InputDispatcher|chipone|dt2w|SystemUI|tran_qs|qs_center|DynamicBar" | tail -n 60
