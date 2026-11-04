#!/system/bin/sh
find /sys/chipone-tddi/ -maxdepth 3 2>/dev/null
dmesg -c > /dev/null
echo "=== WRITING 0 TO EDGE_RESTAIN ==="
echo 0 > /sys/chipone-tddi/misc/edge_restain 2>&1
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg | grep -iE "CTS-|chipone"