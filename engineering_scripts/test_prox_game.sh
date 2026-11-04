#!/system/bin/sh
dmesg -c > /dev/null
echo "=== 1. SET PROXIMITY_MODE = 1 (cmd 0x222a) ==="
echo 1 > /sys/chipone-tddi/misc/proximity_mode 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 2. CAT EDGE_RESTAIN (cmd 0x4242, rxlen=6) ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 3. SET GAME_MODE = 1 ==="
echo 1 > /sys/chipone-tddi/misc/game_mode 2>&1
dmesg -c | grep -iE "CTS-|chipone"

echo "=== 4. CAT EDGE_RESTAIN (cmd 0x4242, rxlen=6) ==="
cat /sys/chipone-tddi/misc/edge_restain 2>&1
dmesg -c | grep -iE "CTS-|chipone"