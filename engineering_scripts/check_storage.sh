#!/system/bin/sh
echo "=== DF /data ==="
df -h /data
echo "=== TOP LEVEL /data (du -sh) ==="
du -sh /data/local/tmp /data/adb /data/dalvik-cache /data/app /data/data /data/user_de/0 /data/media/0 /data/system/dropbox /data/tombstones /data/anr /data/vendor /data/misc 2>/dev/null
echo "=== /data/local/tmp files ==="
ls -lh /data/local/tmp
echo "=== /data/adb/modules/bg6_hios_pro files ==="
du -sh /data/adb/* /data/adb/modules/bg6_hios_pro/* 2>/dev/null
echo "=== TOP 20 LARGEST IN /data/app ==="
du -sh /data/app/*/* 2>/dev/null | sort -hr | head -n 20
echo "=== TOP 20 LARGEST IN /data/data ==="
du -sh /data/data/* 2>/dev/null | sort -hr | head -n 20
echo "=== TOP 20 LARGEST IN /data/media/0 ==="
du -sh /data/media/0/* /data/media/0/.* 2>/dev/null | sort -hr | head -n 20
