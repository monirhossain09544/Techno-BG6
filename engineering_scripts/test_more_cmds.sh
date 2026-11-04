#!/system/bin/sh
dmesg -c > /dev/null

echo "=== 0. INITIAL CAT EDGE_RESTAIN ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 1. ECHO 1 > CHARGER_STATE (cmd 0x2205) ==="
echo 1 > /sys/chipone-tddi/misc/charger_state 2>&1
dmesg -c | grep -iE "CTS-|chipone"
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 2. ECHO 1 > EARJACK_STATE ==="
echo 1 > /sys/chipone-tddi/misc/earjack_state 2>&1
dmesg -c | grep -iE "CTS-|chipone"
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 3. ECHO 2 > EDGE_RESTAIN (cmd 0x2242, val=2) ==="
echo 2 > /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"