#!/system/bin/sh
ls -ld /vendor/lib/modules
cat /vendor/lib/modules/init.insmod.cfg
ls -la /vendor/lib/modules/*drm* /vendor/lib/modules/*panel* /vendor/lib/modules/*sprd* 2>/dev/null
dmesg | grep -iE "insmod|boe|icnl|9916" | head -n 40
