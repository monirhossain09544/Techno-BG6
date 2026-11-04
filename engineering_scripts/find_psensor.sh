#!/system/bin/sh
cat /data/adb/modules/bg6_hios_pro/service.sh | grep psensor
find /sys/devices /sys/class /sys/chipone-tddi -name "*psensor*" -o -name "*firmware*" 2>/dev/null