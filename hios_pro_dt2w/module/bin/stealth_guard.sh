#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
RESETPROP="/data/adb/ksu/bin/resetprop"
[ ! -x "$RESETPROP" ] && RESETPROP="resetprop"

# 1. Spoof Bootloader, VerifiedBoot, VBMeta, Security & Build properties
$RESETPROP -n ro.boot.verifiedbootstate green
$RESETPROP -n ro.boot.flash.locked 1
$RESETPROP -n ro.boot.vbmeta.device_state locked
$RESETPROP -n ro.boot.veritymode enforcing
$RESETPROP -n ro.boot.warranty_bit 0
$RESETPROP -n ro.warranty_bit 0
$RESETPROP -n ro.debuggable 0
$RESETPROP -n ro.secure 1
$RESETPROP -n ro.build.type user
$RESETPROP -n ro.build.tags release-keys
$RESETPROP -n ro.build.selinux 1
$RESETPROP -n sys.oem_unlock_allowed 0
$RESETPROP -n ro.crypto.state encrypted

# 2. Remove global Magisk/KSU temp artifacts & unmount debug_ramdisk
umount -l /debug_ramdisk/.magisk/pts 2>/dev/null
umount -l /debug_ramdisk/.magisk/worker 2>/dev/null
umount -l /debug_ramdisk 2>/dev/null
chmod 0700 /debug_ramdisk 2>/dev/null
rm -rf /cache/magisk /data/adb/magisk /data/adb/magisk.db /data/local/tmp/k2 /data/local/tmp/ksud5.log /data/local/tmp/fp_inspect 2>/dev/null
chmod 0771 /data/local/tmp 2>/dev/null

# 3. Clean Zygote mount namespaces
for z in zygote64 zygote; do
    ZPID=$(pidof $z)
    if [ -n "$ZPID" ]; then
        for mp in /debug_ramdisk/.magisk/pts /debug_ramdisk/.magisk/worker /debug_ramdisk /data/adb/modules /data/adb/google_system /product/priv-app/GoogleSearchGo; do
            nsenter -t "$ZPID" -m -- umount -l "$mp" 2>/dev/null
        done
        for devmp in $(nsenter -t "$ZPID" -m -- awk '$1=="KSU" && $2~/^\/dev\// {print $2}' /proc/mounts 2>/dev/null); do
            nsenter -t "$ZPID" -m -- umount -l "$devmp" 2>/dev/null
        done
    fi
done

# 4. Hide KernelSU Manager from PackageManager queries & mask developer settings flag
pm hide me.weishu.kernelsu >/dev/null 2>&1
settings put global development_settings_enabled 0 >/dev/null 2>&1
settings put secure mock_location 0 >/dev/null 2>&1

# 5. Per-process Mount Namespace Sanitizer function
sanitize_pid() {
    PID="$1"
    [ ! -d "/proc/$PID" ] && return
    for pass in 1 2; do
        MPS=$(awk '$1=="KSU" || $3=="overlay" || $1~/loop35/ || $2~/^\/data\/adb/ || $2~/^\/debug_ramdisk/ || ($1=="tmpfs" && ($2~/^\/product\// || $2~/^\/system/)) || $2=="/product/priv-app/GoogleSearchGo" {print $2}' "/proc/$PID/mounts" 2>/dev/null | sort -r)
        [ -z "$MPS" ] && break
        for mp in $MPS; do
            nsenter -t "$PID" -m -- umount -l "$mp" 2>/dev/null
        done
    done
}

# If run with --once, sanitize currently running target apps and exit
TARGETS="com.logistics.rider.foodpanda com.joeykrim.rootcheck com.bKash.customerapp com.konasl.nagad co.elevatepay.app com.nsave.app to.plasma.one.application"
for pkg in $TARGETS; do
    for p in $(pidof "$pkg" 2>/dev/null); do
        sanitize_pid "$p"
    done
done

if [ "$1" = "--daemon" ]; then
    SEEN=""
    while true; do
        CUR=""
        for pkg in $TARGETS; do
            for p in $(pidof "$pkg" 2>/dev/null); do
                CUR="$CUR $p"
                case " $SEEN " in
                    *" $p "*) ;;
                    *) sanitize_pid "$p" ;;
                esac
            done
        done
        SEEN="$CUR"
        sleep 1
    done
fi
