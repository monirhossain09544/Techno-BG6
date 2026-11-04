#!/system/bin/sh
echo "=== 1. TEST FGU CAPACITY CALIBRATION ==="
echo "Before: fgu=$(cat /sys/class/power_supply/sc27xx-fgu/capacity) bat=$(cat /sys/class/power_supply/battery/capacity)"
echo 95 > /sys/class/power_supply/sc27xx-fgu/capacity 2>&1
sleep 1
echo "After write 95: fgu=$(cat /sys/class/power_supply/sc27xx-fgu/capacity) bat=$(cat /sys/class/power_supply/battery/capacity)"
dmesg | grep -i fgu | tail -n 8

echo "=== 2. TEST DARK MODE SYNC WITH TRANSETTINGS ==="
settings put secure ui_night_mode 2
cmd uimode night yes
sleep 2
echo "Dark ON -> ui_night_mode=$(settings get secure ui_night_mode) power_boost_dark_mode=$(settings get system power_boost_dark_mode)"
am force-stop com.android.settings
am start -n com.android.settings/.Settings >/dev/null 2>&1
sleep 2
screencap -p /data/local/tmp/settings_dark_verified.png

echo "=== 3. TEST RIDER MODE ON (tran_settings_long_battery_mode=1) ==="
settings put system tran_settings_long_battery_mode 1
sleep 4
echo "Rider ON -> low_power=$(settings get global low_power) ui_night_mode=$(settings get secure ui_night_mode) pb_dark=$(settings get system power_boost_dark_mode) cpu0=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq)"

echo "=== 4. TEST RIDER MODE OFF (tran_settings_long_battery_mode=0) ==="
settings put system tran_settings_long_battery_mode 0
sleep 4
echo "Rider OFF -> low_power=$(settings get global low_power) ui_night_mode=$(settings get secure ui_night_mode) pb_dark=$(settings get system power_boost_dark_mode) cpu0=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq)"
