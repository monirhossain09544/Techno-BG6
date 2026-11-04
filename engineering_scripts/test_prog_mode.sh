#!/system/bin/sh
echo "=== TEST 2: reset_pin 0 -> 1 -> program_mode 1 ==="
for delay in 0 1000 2000 5000 10000 20000 40000; do
    echo "--- Testing delay=${delay}us ---"
    echo 0 > /sys/chipone-tddi/misc/reset_pin
    usleep 10000
    echo 1 > /sys/chipone-tddi/misc/reset_pin
    if [ "$delay" -gt 0 ]; then
        usleep $delay
    fi
    echo 1 > /sys/chipone-tddi/misc/program_mode
    cat /sys/chipone-tddi/misc/program_mode
done
dmesg | grep -E "CTS-" | tail -n 45