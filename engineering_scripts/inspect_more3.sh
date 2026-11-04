#!/system/bin/sh
echo "=== TEST FSTRIM ON /data/adb/modules ==="
fstrim -v /data/adb/modules 2>&1
du -sh /data/adb/ksu/modules.img
df -h /data/adb/modules

echo "=== CHECK /data/incremental ==="
du -d 3 -m /data/incremental 2>/dev/null | sort -nr | head -n 20

echo "=== CHECK TOP 30 APPS IN /data/app (IN MB) ==="
du -d 2 -m /data/app 2>/dev/null | sort -nr | head -n 35

echo "=== CHECK TOP 30 APPS IN /data/data (IN MB) ==="
du -d 1 -m /data/data 2>/dev/null | sort -nr | head -n 30

echo "=== CHECK TOP 25 FILES IN /data/dalvik-cache/arm64 (IN MB) ==="
du -m /data/dalvik-cache/arm64/* 2>/dev/null | sort -nr | head -n 25

echo "=== CHECK GMS wallet & AppDataSearch ==="
du -d 2 -m /data/data/com.google.android.gms/files/wallet /data/data/com.google.android.gms/files/AppDataSearch 2>/dev/null | sort -nr | head -n 20
