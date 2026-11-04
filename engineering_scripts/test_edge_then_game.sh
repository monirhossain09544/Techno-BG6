#!/system/bin/sh
dmesg -c > /dev/null
echo "=== 1. ECHO 0 > EDGE_RESTAIN ==="
echo 0 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 2. ECHO 0 > GAME_MODE ==="
echo 0 > /sys/chipone-tddi/misc/game_mode 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 3. CAT EDGE_RESTAIN ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"