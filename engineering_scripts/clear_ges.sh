#!/system/bin/sh
for cmd in al0 cc0 aa0 bb0 ab0 ba0 5e0 3e0 fp0 w00 o00 m00 e00 c00 z00 s00 v00; do
    echo -n "$cmd" > /proc/gesture_function 2>/dev/null
done
cat /proc/gesture_state
