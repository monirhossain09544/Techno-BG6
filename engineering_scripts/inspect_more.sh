#!/system/bin/sh
echo "=== CHECK MODULES.IMG & LOOP MOUNTS ==="
ls -lh /data/adb/ksu/
stat -c "%i %n" /data/adb/ksu/* /data/adb/* 2>/dev/null
losetup -a
mount | grep -E "adb|ksu|loop"

echo "=== CHECK /data/data SUBDIRS OF BIG APPS ==="
for pkg in com.facebook.katana com.google.android.gms com.google.android.apps.photos com.android.chrome com.facebook.orca com.ea.gp.fifamobile com.whatsapp; do
  if [ -d "/data/data/$pkg" ]; then
    echo "--- $pkg ---"
    du -d 2 -h "/data/data/$pkg" 2>/dev/null | sort -hr | head -n 12
  fi
done

echo "=== CHECK /data/user_de/0/com.google.android.gms ==="
du -d 2 -h /data/user_de/0/com.google.android.gms 2>/dev/null | sort -hr | head -n 10

echo "=== CHECK /data/app OAT SIZES ==="
du -ch /data/app/*/*/oat 2>/dev/null | tail -n 20
