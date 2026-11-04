#!/system/bin/sh
echo "=== 1. CHECK ESD_PROTECTION ==="
cat /sys/chipone-tddi/cts_firmware/esd_protection 2>&1
dmesg -c > /dev/null

echo "=== 2. CAT EDGE_RESTAIN BEFORE ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 3. ECHO 0 > EDGE_RESTAIN ==="
echo 0 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 4. CAT EDGE_RESTAIN AFTER ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 5. ECHO 1 > EDGE_RESTAIN ==="
echo 1 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 6. CAT EDGE_RESTAIN AFTER 1 ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"