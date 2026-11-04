#!/system/bin/sh
dmesg | grep -iE "CTS-|chipone|sprd-adf|panel" | tail -n 30
echo "=== TEST CAT EDGE_RESTAIN NOW ==="
dmesg -c > /dev/null
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"