#!/system/bin/sh
dmesg | grep -E "CTS-|sprd_panel|tran_touch" | head -n 80
