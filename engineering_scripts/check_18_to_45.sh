#!/system/bin/sh
dmesg | awk '/\[   18\./,/\[   45\./' | grep -iE "cts|touch|spi|drm|panel|gesture|icnl"
echo "=== Recent CTS/DRM ==="
dmesg | tail -n 60
