#!/system/bin/sh
for ko in $(find /vendor /system /odm -name "*adaptive*" -o -name "*gesture*" -o -name "*chipone*" 2>/dev/null); do
    echo "=== $ko ==="
    strings "$ko" | grep -iE "gesture_function|func mode|state_change_machine|TRAN_GESTURE|TRAN_NORMAL|psensor|cc0|al0|gesture_state"
done
