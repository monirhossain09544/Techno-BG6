#!/system/bin/sh
# HiOS 13 Pro - Native APP Booster & Rider Endurance Engine
# Triggered when settings_system.xml, settings_global.xml, or settings_secure.xml changes.

LOCKDIR="/dev/sync_booster.lock"
if [ -d "$LOCKDIR" ]; then
    LOCK_PID="$(cat "$LOCKDIR/pid" 2>/dev/null)"
    if [ -z "$LOCK_PID" ] || ! kill -0 "$LOCK_PID" 2>/dev/null; then
        rm -rf "$LOCKDIR" 2>/dev/null
    fi
fi
mkdir "$LOCKDIR" 2>/dev/null || exit 0
echo "$$" > "$LOCKDIR/pid" 2>/dev/null
trap 'rm -rf "$LOCKDIR" 2>/dev/null' EXIT

STATEFILE="/data/local/tmp/sync_booster.last"
LP_STATEFILE="/data/local/tmp/sync_booster.lowpower"

CUR_VAL="$(settings get global value 2>/dev/null)"
[ -z "$CUR_VAL" ] || [ "$CUR_VAL" = "null" ] && CUR_VAL="com.logistics.rider.foodpanda,com.brilliant.connect.com.bd,com.sh.smart.caller,com.transsion.calculator,com.transsion.notebook,"

LAST_VAL="$(cat "$STATEFILE" 2>/dev/null)"
PKGS="$(echo "$CUR_VAL" | tr ',' ' ')"

# Built-in launchable system apps that should ALSO be suspended when Rider Mode (Battery Saver) is ON
SYS_LAUNCH_PKGS="com.transsion.filemanagerx com.transsion.deskclock com.rlk.weathers com.transsion.soundrecorder com.android.chrome com.android.vending com.gallery20 com.google.android.apps.docs com.google.android.apps.maps com.google.android.apps.messaging com.google.android.calendar com.transsion.calendar com.google.android.gm com.google.android.youtube com.google.android.googlequicksearchbox com.android.stk com.transsion.notebook"

# 1. Apply package-level Rider Booster optimizations ONLY when Selected Apps list changes
if [ "$CUR_VAL" != "$LAST_VAL" ]; then
    echo "$CUR_VAL" > "$STATEFILE"
    for pkg in $PKGS com.google.android.gms com.transsion.camera; do
        [ -z "$pkg" ] && continue
        pm path "$pkg" >/dev/null 2>&1 || continue

        cmd deviceidle whitelist "+$pkg" >/dev/null 2>&1
        am set-standby-bucket "$pkg" active >/dev/null 2>&1
        pm unsuspend "$pkg" >/dev/null 2>&1

        UID="$(stat -c %u "/data/data/$pkg" 2>/dev/null)"
        if [ -n "$UID" ] && [ "$UID" -ge 10000 ] 2>/dev/null; then
            cmd netpolicy add restrict-background-whitelist "$UID" >/dev/null 2>&1
        fi

        cmd appops set "$pkg" RUN_IN_BACKGROUND allow >/dev/null 2>&1
        cmd appops set "$pkg" RUN_ANY_IN_BACKGROUND allow >/dev/null 2>&1
        cmd appops set "$pkg" WAKE_LOCK allow >/dev/null 2>&1
        cmd appops set "$pkg" SCHEDULE_EXACT_ALARM allow >/dev/null 2>&1
    done
fi

# 2. Check Native HiOS Power Boost (tran_settings_long_battery_mode) state for 1-Tap Outdoor Rider Endurance Mode
while true; do
    CUR_LP="$(settings get system tran_settings_long_battery_mode 2>/dev/null)"
    [ -z "$CUR_LP" ] || [ "$CUR_LP" = "null" ] && CUR_LP="$(settings get global low_power 2>/dev/null)"
    [ -z "$CUR_LP" ] || [ "$CUR_LP" = "null" ] && CUR_LP="0"
    LAST_LP="$(cat "$LP_STATEFILE" 2>/dev/null)"

    if [ "$CUR_LP" != "$LAST_LP" ] || [ "$CUR_VAL" != "$LAST_VAL" ]; then
        echo "$CUR_LP" > "$LP_STATEFILE"
        LAST_VAL="$CUR_VAL"
        ALL_CANDIDATES="$(pm list packages -3 2>/dev/null | cut -d: -f2) $SYS_LAUNCH_PKGS"
        if [ "$CUR_LP" = "1" ]; then
            # === RIDER ENDURANCE MODE ON (Outdoor Delivery Maximum Battery Backup) ===
            settings put system tran_settings_long_battery_mode 1 >/dev/null 2>&1
            settings put global low_power 1 >/dev/null 2>&1
            cmd power set-mode 1 >/dev/null 2>&1
            settings put secure location_mode 3 >/dev/null 2>&1

            # Sync HiOS & TranSettings Dark Mode with Battery Saver Dark Mode
            settings put secure ui_night_mode 2 >/dev/null 2>&1
            settings put system power_boost_dark_mode 1 >/dev/null 2>&1
            cmd uimode night yes >/dev/null 2>&1

            # Cap Unisoc T606 CPU to 1.23 GHz efficiency sweet spot
            echo 1228800 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq 2>/dev/null
            echo 1228800 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq 2>/dev/null

            # Enable system-wide background 4G data block (whitelisted Rider apps remain unrestricted)
            cmd netpolicy set restrict-background true >/dev/null 2>&1

            # Disable HiOS Launcher virtual apps (Hi Theme & Freezer) while Rider Mode is ON
            pm disable com.transsion.hilauncher/com.android.launcher3.DynamicVirtualEntryActivity >/dev/null 2>&1 &
            pm disable com.transsion.hilauncher/com.transsion.theme.common.XThemeMain >/dev/null 2>&1 &
            pm disable com.transsion.hilauncher/com.transsion.theme.MainActivity >/dev/null 2>&1 &

            # Deep-freeze & suspend all non-selected 3rd-party and launchable system apps
            for target_pkg in $ALL_CANDIDATES; do
                case ",$CUR_VAL,me.weishu.kernelsu,com.transsion.magicfont," in
                    *,"$target_pkg",*)
                        (
                            pm unsuspend "$target_pkg" >/dev/null 2>&1
                            cmd appops set "$target_pkg" RUN_IN_BACKGROUND allow >/dev/null 2>&1
                            cmd appops set "$target_pkg" RUN_ANY_IN_BACKGROUND allow >/dev/null 2>&1
                        ) &
                        ;;
                    *)
                        (
                            cmd appops set "$target_pkg" RUN_IN_BACKGROUND ignore >/dev/null 2>&1
                            cmd appops set "$target_pkg" RUN_ANY_IN_BACKGROUND ignore >/dev/null 2>&1
                            cmd appops set "$target_pkg" WAKE_LOCK ignore >/dev/null 2>&1
                            am set-standby-bucket "$target_pkg" restricted >/dev/null 2>&1
                            am force-stop "$target_pkg" >/dev/null 2>&1
                            pm suspend "$target_pkg" >/dev/null 2>&1
                        ) &
                        ;;
                esac
            done
            wait
        else
            # === RIDER ENDURANCE MODE OFF (Normal Full Performance Mode) ===
            settings put system tran_settings_long_battery_mode 0 >/dev/null 2>&1
            settings put global low_power 0 >/dev/null 2>&1
            cmd power set-mode 0 >/dev/null 2>&1
            echo 1612000 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq 2>/dev/null
            echo 1612000 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq 2>/dev/null
            cmd netpolicy set restrict-background false >/dev/null 2>&1

            # Restore Light Mode when Battery Saver is turned OFF
            settings put secure ui_night_mode 1 >/dev/null 2>&1
            settings put system power_boost_dark_mode 0 >/dev/null 2>&1
            cmd uimode night no >/dev/null 2>&1

            # Re-enable HiOS Launcher virtual apps (Hi Theme & Freezer)
            pm enable com.transsion.hilauncher/com.android.launcher3.DynamicVirtualEntryActivity >/dev/null 2>&1 &
            pm enable com.transsion.hilauncher/com.transsion.theme.common.XThemeMain >/dev/null 2>&1 &
            pm enable com.transsion.hilauncher/com.transsion.theme.MainActivity >/dev/null 2>&1 &

            for target_pkg in $ALL_CANDIDATES; do
                case "$target_pkg" in
                    com.ea.gp.fifamobile|com.bilibili.app.in)
                        pm unsuspend "$target_pkg" >/dev/null 2>&1 &
                        ;;
                    *)
                        (
                            pm unsuspend "$target_pkg" >/dev/null 2>&1
                            cmd appops set "$target_pkg" RUN_IN_BACKGROUND allow >/dev/null 2>&1
                            cmd appops set "$target_pkg" RUN_ANY_IN_BACKGROUND allow >/dev/null 2>&1
                            cmd appops set "$target_pkg" WAKE_LOCK allow >/dev/null 2>&1
                            am set-standby-bucket "$target_pkg" working_set >/dev/null 2>&1
                        ) &
                        ;;
                esac
            done
            wait
        fi
    else
        break
    fi
done

# 2b. Always keep TranSettings power_boost_dark_mode in sync with system Dark Mode (ui_night_mode)
CUR_NIGHT="$(settings get secure ui_night_mode 2>/dev/null)"
CUR_PB_DARK="$(settings get system power_boost_dark_mode 2>/dev/null)"
if [ "$CUR_NIGHT" = "2" ] && [ "$CUR_PB_DARK" != "1" ]; then
    settings put system power_boost_dark_mode 1 >/dev/null 2>&1
elif [ "$CUR_NIGHT" = "1" ] && [ "$CUR_PB_DARK" != "0" ]; then
    settings put system power_boost_dark_mode 0 >/dev/null 2>&1
fi

# 3. Enforce Kernel RAM Lock (oom_score_adj = -200) on running Selected Apps
for pkg in $PKGS; do
    [ -z "$pkg" ] && continue
    for pid in $(pidof "$pkg" 2>/dev/null); do
        echo -200 > "/proc/$pid/oom_score_adj" 2>/dev/null
    done
done

# 4. Enforce Clean Mount Namespace (Umount KSU/module mounts) for Foodpanda & Sensitive Apps
for spkg in com.logistics.rider.foodpanda com.bKash.customerapp com.konasl.nagad; do
    for spid in $(pidof "$spkg" 2>/dev/null); do
        if grep -qE 'KSU|/data/adb|overlay|magisk' "/proc/$spid/mounts" 2>/dev/null; then
            nsenter -t "$spid" -m -- /system/bin/sh -c '
                for mp in $(awk "/KSU|\/data\/adb|overlay|magisk|TranSettings|BatteryLab|OSFileManager|HTMLViewer|handheld_core_hardware|supl\.xml|gmsexpressplus/ {print \$2}" /proc/self/mounts | sort -r); do
                    umount -l "$mp" 2>/dev/null
                done
            '
        fi
    done
done
