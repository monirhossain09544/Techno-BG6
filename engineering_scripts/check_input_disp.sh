#!/system/bin/sh
echo "=== 1. INPUT DISPATCHER STATE ==="
dumpsys input | grep -A 40 "Input Dispatcher State"

echo "=== 2. TOUCH DRIVER KERNEL LOGS ==="
dmesg | grep -iE "cts-|chipone|touch|sram|crc|underflow" | tail -n 50

echo "=== 3. MEMORY / LMK / ANR / FREEZE ==="
logcat -b all -d | grep -iE "ANR in|lowmemorykiller|Watchdog|frozen|InputDispatcher.*Application is not responding|DropBox" | tail -n 40

echo "=== 4. CACHED APPS FREEZER & CPUSET ==="
settings get global cached_apps_freezer
device_config get activity_manager_native_boot use_freezer
cat /dev/cpuset/top-app/cpus
cat /dev/cpuset/foreground/cpus
cat /dev/cpuset/background/cpus
cat /dev/cpuset/system-background/cpus
cat /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
cat /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
