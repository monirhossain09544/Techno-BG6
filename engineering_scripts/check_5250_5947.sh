#!/system/bin/sh
dmesg | grep -E "CTS-|psensor|sprd_panel|adapt_ts" | head -n 120