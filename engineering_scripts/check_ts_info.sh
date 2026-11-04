#!/system/bin/sh
ls -la /vendor/firmware/*chipone* /vendor/firmware/*icnl* /vendor/firmware/*ts* 2>/dev/null
cat /proc/touchscreen_feature/ts_information 2>/dev/null
cat /sys/chipone-tddi/misc/* 2>/dev/null
