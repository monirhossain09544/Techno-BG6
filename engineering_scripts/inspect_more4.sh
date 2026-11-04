#!/system/bin/sh
echo "=== TEST BUSYBOX FSTRIM & KSUD SHRINK ==="
/data/adb/ksu/bin/busybox fstrim -v /data/adb/modules 2>&1
du -sh /data/adb/ksu/modules.img
/data/adb/ksud module --help 2>&1

echo "=== CHECK SPOTIFY, GBOARD, GOOGLE APP, GMAIL, DOCS ==="
for pkg in com.spotify.music com.google.android.inputmethod.latin com.google.android.googlequicksearchbox com.google.android.gm com.google.android.apps.docs com.google.android.tts; do
  echo "--- $pkg ---"
  du -d 2 -m "/data/data/$pkg" 2>/dev/null | sort -nr | head -n 10
done
