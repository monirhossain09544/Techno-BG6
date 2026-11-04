#!/system/bin/sh
echo "=== GPIO DEBUGFS ==="
cat /sys/kernel/debug/gpio
echo "=== PANEL DT PROPERTIES ==="
for p in /proc/device-tree/soc/ap-apb/dsi@*/panel* /proc/device-tree/dsi@*/panel* /proc/device-tree/*/dsi*/panel*; do
  if [ -d "$p" ]; then
    echo "Found panel: $p"
    ls -la "$p"
  fi
done
find /proc/device-tree -name "*icnl9916*" -o -name "*chipone*"
