#!/system/bin/sh
input keyevent 26
sleep 2
input keyevent 224
sleep 2
cat /sys/chipone-tddi/cts_firmware/curr_version
cat /sys/chipone-tddi/misc/irq_info
