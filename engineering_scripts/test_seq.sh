#!/system/bin/sh
dmesg | grep -iE "CTS-|chipone|sprd-adf|drm" | tail -n 30
dmesg -c > /dev/null
echo "=== A. echo 0 > edge_restain ==="
echo 0 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== B. echo 1 > proximity_mode ==="
echo 1 > /sys/chipone-tddi/misc/proximity_mode 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== C. echo 0 > edge_restain ==="
echo 0 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== D. cat edge_restain ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"