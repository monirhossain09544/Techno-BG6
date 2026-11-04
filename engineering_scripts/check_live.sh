#!/system/bin/sh
uptime
dmesg | grep -E "CTS-|sprd-drm|adapt_ts" | tail -n 60