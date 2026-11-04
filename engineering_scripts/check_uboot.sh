#!/system/bin/sh
echo "=== Current curr_version & irq_info ==="
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/misc/irq_info
echo "=== Searching for chipone or 9916 in /dev/block/by-name/uboot_a ==="
strings /dev/block/by-name/uboot_a | grep -iE "chipone|9916|icnl" | head -n 30
