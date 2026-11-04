#!/system/bin/sh
echo "=== 1. Magisk / KSU processes ==="
ps -A | grep -E "magisk|ksu|zygisk"
echo "=== 2. Packages ==="
pm list packages | grep -E "magisk|kernelsu|ksu|foodpanda"
echo "=== 3. Mounts & /debug_ramdisk ==="
ls -la /debug_ramdisk /debug_ramdisk/.magisk 2>/dev/null
echo "=== 4. Boot props ==="
echo "verifiedbootstate=$(getprop ro.boot.verifiedbootstate)"
echo "vbmeta.device_state=$(getprop ro.boot.vbmeta.device_state)"
echo "flash.locked=$(getprop ro.boot.flash.locked)"
echo "build.tags=$(getprop ro.build.tags)"
echo "debuggable=$(getprop ro.debuggable)"
echo "secure=$(getprop ro.secure)"
echo "=== 5. Magisk DenyList ==="
magisk --denylist status 2>/dev/null
magisk --denylist ls 2>/dev/null
echo "=== 6. KSU /data/adb ==="
ls -la /data/adb /data/adb/ksu 2>/dev/null
echo "=== 7. Pandora Perseus DB rootedDevice ==="
strings /data/data/com.logistics.rider.foodpanda/databases/pandora.db.perseus* 2>/dev/null | grep -o '"rootedDevice":"[a-z]*"' | sort | uniq -c
