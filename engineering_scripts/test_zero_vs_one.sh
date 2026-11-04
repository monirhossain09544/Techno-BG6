#!/system/bin/sh
dmesg -c > /dev/null
echo "=== 1. CAT EDGE_RESTAIN INITIAL ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 2. ECHO 0 > PROXIMITY_MODE ==="
echo 0 > /sys/chipone-tddi/misc/proximity_mode 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 3. ECHO 0 > GAME_MODE ==="
echo 0 > /sys/chipone-tddi/misc/game_mode 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 4. ECHO 1 > EDGE_RESTAIN ==="
echo 1 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 5. CAT EDGE_RESTAIN AFTER 1 ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"