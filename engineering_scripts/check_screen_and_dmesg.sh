#!/system/bin/sh
echo "=== Screen state & timeout ==="
dumpsys power | grep -E "mWakefulness|Display Power|mUserActivityTimeoutOverrideFromWindowManager"
settings get system screen_off_timeout
echo "=== Check all drm / panel / CTS / tran_touch in dmesg ==="
dmesg | grep -E "sprd_panel| sprd_dpu|CTS-|tran_touch|gesture"
echo "=== Check what is in /data/adb/modules/bg6_hios_pro/post-fs-data.sh and service.sh ==="
head -n 60 /data/adb/modules/bg6_hios_pro/post-fs-data.sh
