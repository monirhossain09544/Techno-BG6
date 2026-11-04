#!/system/bin/sh
dmesg | grep -E "CTS-|sprd_panel|tran_touch" | head -n 120
echo "=== MIDDLE ==="
dmesg | grep -E "CTS-|sprd_panel|tran_touch" | tail -n 120
