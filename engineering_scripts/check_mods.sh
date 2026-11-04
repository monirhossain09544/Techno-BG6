#!/system/bin/sh
ls -la /vendor/firmware/*chipone* /vendor/firmware/*icnl* /vendor/lib/modules/*chipone*
mount | grep -E "vendor|chipone|modules|dtbo"
ls -la /data/adb/modules/bg6_hios_pro/
