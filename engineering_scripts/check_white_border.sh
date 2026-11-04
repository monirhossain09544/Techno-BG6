#!/system/bin/sh
echo "=== 1. Visible Windows in WindowManager ==="
dumpsys window windows | grep -E "Window #|mAttrs=|isOnScreen=true|isVisible=true|Surface" | head -n 120

echo "=== 2. SurfaceFlinger Layers ==="
dumpsys SurfaceFlinger | grep -E "Layer|HWC layers|Device|Client" -A 40 | head -n 80

echo "=== 3. Check Edge Flash / Flash / Accessibility / Overlay Settings ==="
settings list system | grep -iE "flash|edge|border|light|peek|single|hand|mode|zoom|scale|bound"
settings list secure | grep -iE "flash|edge|border|light|peek|accessibility|magnification|inversion|contrast|display"
settings list global | grep -iE "flash|edge|border|light|peek|force|debug|overlay|display"
getprop | grep -iE "layout|strict|edge|flash|border"

echo "=== 4. Take screenshot ==="
screencap -p /data/local/tmp/border_screen.png
ls -la /data/local/tmp/border_screen.png
