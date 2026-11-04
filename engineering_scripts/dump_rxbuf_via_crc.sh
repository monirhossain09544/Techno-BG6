#!/system/bin/sh
dmesg -c > /dev/null
for sz in 1 2 3 4 5 6 7 8 9 10; do
    echo "0x4206 $sz" > /sys/chipone-tddi/misc/read_tcs_reg
    cat /sys/chipone-tddi/misc/read_tcs_reg > /dev/null
    dmesg -c | grep -iE "crc error"
done