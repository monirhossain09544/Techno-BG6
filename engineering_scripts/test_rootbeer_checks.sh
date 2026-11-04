#!/system/bin/sh
echo "=== 1. Check which classes*.dex has exact string rootedDevice ==="
cd /data/local/tmp/fp_dex
for f in classes*.dex; do
    if strings "$f" | grep -q '^rootedDevice$'; then
        echo "Found exact 'rootedDevice' in $f"
    fi
done

echo "=== 2. Check all 9 RootBeer checks from untrusted_app context ==="
echo "--- Check 1 & 2: Packages ---"
for pkg in com.noshufou.android.su com.noshufou.android.su.elite eu.chainfire.supersu com.koushikdutta.superuser com.thirdparty.superuser com.yellowes.su com.topjohnwu.magisk com.kingroot.kinguser com.kingo.root com.smedialink.oneclickroot com.zhiqupk.root.global com.alephzain.framaroot; do
    pm path "$pkg" 2>/dev/null && echo "DETECTED PKG: $pkg"
done

echo "--- Check 3 & 9: su and magisk binaries in suPaths + PATH ---"
DIRS="/data/local /data/local/bin /data/local/xbin /sbin /su/bin /system/bin /system/bin/.ext /system/bin/failsafe /system/sd/xbin /system/usr/we-need-root /system/xbin /system_ext/bin /cache /data /dev $(echo $PATH | tr ':' ' ')"
for d in $DIRS; do
    [ -e "$d/su" ] && echo "DETECTED su: $d/su"
    [ -e "$d/magisk" ] && echo "DETECTED magisk: $d/magisk"
    [ -e "$d/busybox" ] && echo "DETECTED busybox: $d/busybox"
done

echo "--- Check 4: getprop ro.debuggable & ro.secure ---"
getprop | grep -E '\[(ro\.debuggable|ro\.secure)\]'

echo "--- Check 5: mount rw check on /system /system/bin /system/sbin /system/xbin /vendor/bin /sbin /etc ---"
mount | awk '{if ($3 == "/system" || $3 == "/system/bin" || $3 == "/system/sbin" || $3 == "/system/xbin" || $3 == "/vendor/bin" || $3 == "/sbin" || $3 == "/etc") print $0}'

echo "--- Check 6: Build.TAGS ---"
getprop ro.build.tags

echo "--- Check 7: which su (as non-root UID 10030) ---"
su 10030 -c "which su" 2>&1
