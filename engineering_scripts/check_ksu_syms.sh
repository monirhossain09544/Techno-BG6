#!/system/bin/sh
echo "=== 1. Search classes*.dex for rootedDevice ==="
for f in /data/local/tmp/fp_dex/classes*.dex; do
    res=$(grep -a -o -E '.{0,25}rootedDevice.{0,25}' "$f" 2>/dev/null | head -n 5)
    if [ -n "$res" ]; then
        echo "Match in $f:"
        echo "$res"
    fi
done

echo "=== 2. Check KernelSU symbols in /proc/kallsyms ==="
grep -E "ksu_.*umount|ksu_.*allowlist|ksu_.*profile|ksu_handle_setuid" /proc/kallsyms
