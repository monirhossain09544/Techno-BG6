#!/system/bin/sh
MODDIR="/data/adb/modules/bg6_hios_pro"
cp -f /data/local/tmp/sync_booster_fixed.sh "$MODDIR/sync_booster.sh"
chmod 0755 "$MODDIR/sync_booster.sh"

echo "=== 1. CHECK FGU DEBUG & 950 WRITE ==="
ls -la /sys/class/power_supply/sc27xx-fgu/debug/ 2>&1
echo 950 > /sys/class/power_supply/sc27xx-fgu/capacity 2>&1
sleep 1
echo "fgu=$(cat /sys/class/power_supply/sc27xx-fgu/capacity) bat=$(cat /sys/class/power_supply/battery/capacity)"

echo "=== 2. VERIFY TRANSETTINGS DARK MODE ==="
settings put secure ui_night_mode 2
cmd uimode night yes
sleep 2
echo "Dark ON -> ui_night_mode=$(settings get secure ui_night_mode) pb_dark=$(settings get system power_boost_dark_mode)"
am start -a android.settings.SETTINGS >/dev/null 2>&1
sleep 2
screencap -p /data/local/tmp/settings_dark_verified2.png

echo "=== 3. VERIFY FAST RIDER MODE ON & OFF ==="
settings put system tran_settings_long_battery_mode 1
sleep 3
echo "Rider ON -> low_power=$(settings get global low_power) ui_night_mode=$(settings get secure ui_night_mode) pb_dark=$(settings get system power_boost_dark_mode) cpu0=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq)"

settings put system tran_settings_long_battery_mode 0
sleep 3
echo "Rider OFF -> low_power=$(settings get global low_power) ui_night_mode=$(settings get secure ui_night_mode) pb_dark=$(settings get system power_boost_dark_mode) cpu0=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq)"
