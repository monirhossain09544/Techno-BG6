#!/system/bin/sh
dmesg | head -n 500 | grep -i -E "cts|chipone|icnl|tran_touch|panel|dsi"
