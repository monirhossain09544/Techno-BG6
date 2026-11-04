#!/system/bin/sh
echo '0x100 32' > /sys/chipone-tddi/misc/read_hw_reg
cat /sys/chipone-tddi/misc/read_hw_reg
