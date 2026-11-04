#!/system/bin/sh
dmesg -c > /dev/null
for cmd in "0x4003 4" "0x4005 4" "0x4206 1" "0x4007 10" "0x4242 1"; do
    echo "=== TEST $cmd ==="
    echo "$cmd" > /sys/chipone-tddi/misc/read_tcs_reg
    cat /sys/chipone-tddi/misc/read_tcs_reg
    dmesg -c | grep -iE "CTS-|chipone"
done