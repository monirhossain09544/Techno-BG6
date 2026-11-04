#!/system/bin/sh
echo "=== /data/adb/ksu ==="
ls -lh /data/adb/ksu /data/adb/ksu/* 2>/dev/null
echo "=== /data/adb/modules/bg6_hios_pro/system ==="
du -m /data/adb/modules/bg6_hios_pro/system | sort -nr | head -n 20
echo "=== TOP 25 IN /data ==="
du -m -d 2 /data 2>/dev/null | sort -nr | head -n 25
echo "=== TOP 20 IN /data/app ==="
du -m -d 2 /data/app 2>/dev/null | sort -nr | head -n 20
echo "=== TOP 20 IN /data/data ==="
du -m -d 1 /data/data 2>/dev/null | sort -nr | head -n 20
echo "=== CACHE SIZES IN /data/data & /data/user_de ==="
du -sc /data/data/*/cache /data/data/*/code_cache /data/user_de/0/*/cache /data/user_de/0/*/code_cache /data/media/0/Android/data/*/cache 2>/dev/null | tail -n 5
