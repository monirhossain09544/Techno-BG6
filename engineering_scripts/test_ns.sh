#!/system/bin/sh
for p in 1 $(pidof zygote64) $(pidof com.android.settings); do
    echo "=== PID $p ==="
    ls -la /proc/$p/ns/mnt
    nsenter -t $p -m -- ls -la /system_ext/priv-app/TranSettings/TranSettings.apk
done
echo "=== su -M ==="
ls -la /system_ext/priv-app/TranSettings/TranSettings.apk
