#!/system/bin/sh
dmesg | grep -E "sprd_panel|sprd_dsi|sprd_dpu|CTS" | tail -n 40
