#!/system/bin/sh
# 1. Restore 100% factory stock dtbo_b to dtbo_a
dd if=/dev/block/by-name/dtbo_b of=/dev/block/by-name/dtbo_a bs=4096 2>/dev/null
sync

# 2. Install updated service.sh and remove dt2w_daemon binary
cp /data/local/tmp/device_service.sh /data/adb/modules/bg6_hios_pro/service.sh
sed -i 's/\r$//' /data/adb/modules/bg6_hios_pro/service.sh
chmod 0755 /data/adb/modules/bg6_hios_pro/service.sh
rm -f /data/adb/modules/bg6_hios_pro/bin/dt2w_daemon 2>/dev/null

# 3. Apply immediate settings before reboot
settings put global stay_on_while_plugged_in 0
settings put system os_action_tapping_wake 0
settings put global os_action_tapping_wake 0
setprop persist.sys.pq.cabc.enabled 0
setprop persist.sys.pq.dci.enabled 0
sync

echo "=== VERIFY DTBO SHA256 ==="
sha256sum /dev/block/by-name/dtbo_a /dev/block/by-name/dtbo_b
