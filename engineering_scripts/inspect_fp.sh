#!/system/bin/sh
FP_APK=$(pm path com.logistics.rider.foodpanda | head -n 1 | sed 's/^package://')
echo "FP_APK=$FP_APK"
ls -lh "$(dirname "$FP_APK")"

echo "=== Check magiskboot ==="
ls -lh /data/adb/magisk/ /data/adb/ksu/bin/

echo "=== Check rider process mounts ==="
RP=$(pidof com.logistics.rider.foodpanda)
echo "Rider PID: $RP"
if [ -n "$RP" ]; then
    cat /proc/$RP/mounts | grep -E "magisk|/data/adb|overlay|loop"
fi

echo "=== Check KSU allowlist ==="
xxd /data/adb/ksu/.allowlist 2>/dev/null || od -tx1 -tc /data/adb/ksu/.allowlist 2>/dev/null

echo "=== Check packages for me.weishu.kernelsu ==="
pm list packages -u | grep -E "magisk|kernelsu|weishu"
