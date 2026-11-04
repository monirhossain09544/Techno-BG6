#!/system/bin/sh
echo "=== FIND INODE 181046 ==="
find /data -xdev -inum 181046 2>/dev/null
ls -lh /data/adb/magisk* /data/adb/* 2>/dev/null

echo "=== CHECK /data/data SUBDIRS OF BIG APPS (IN MB) ==="
for pkg in com.facebook.katana com.google.android.gms com.google.android.apps.photos com.android.chrome com.facebook.orca com.ea.gp.fifamobile com.whatsapp; do
  if [ -d "/data/data/$pkg" ]; then
    echo "--- $pkg ---"
    du -d 2 -m "/data/data/$pkg" 2>/dev/null | sort -nr | head -n 15
  fi
done

echo "=== CHECK /data/user_de/0/com.google.android.gms ==="
du -d 2 -m /data/user_de/0/com.google.android.gms 2>/dev/null | sort -nr | head -n 10

echo "=== CHECK /data/media/0 SUBDIRS (IN MB) ==="
du -d 2 -m /data/media/0 2>/dev/null | sort -nr | head -n 20

echo "=== CHECK TOP 25 LARGEST OAT DIRS IN /data/app ==="
du -d 1 -m /data/app/*/*/oat 2>/dev/null | sort -nr | head -n 25
