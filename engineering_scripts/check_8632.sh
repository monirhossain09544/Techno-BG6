#!/system/bin/sh
dmesg | grep -E "8629\.|8630\.|8631\.|8632\.|8633\.|8634\." | grep -E "drm|panel|CTS-|tran_touch"
echo "=== Reading charger_state and edge_restain right now ==="
cat /sys/chipone-tddi/misc/charger_state
cat /sys/chipone-tddi/misc/edge_restain
cat /sys/chipone-tddi/cts_firmware/curr_version
dmesg | grep -E "CTS-" | tail -n 30