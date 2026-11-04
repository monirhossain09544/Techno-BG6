import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
OUT=/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab
echo "=== 1. Check symlinks / dirs in OUT ==="
ls -ld "$OUT/product" "$OUT/system/product" "$OUT/system_ext" "$OUT/system/system_ext" 2>/dev/null
find "$OUT" -maxdepth 4 -iname "*webview*" 2>/dev/null

echo "=== 2. Check where webview is defined in build/make or device/phh/treble ==="
grep -rn "webview" /nvme0n1-disk/shunno_os/device/phh/treble/ /nvme0n1-disk/shunno_os/vendor/gapps/ /nvme0n1-disk/shunno_os/vendor/partner_gms/ 2>/dev/null | head -n 40

echo "=== 3. Check where treble-overlay-tecno-bg6 is in OUT and source ==="
find "$OUT" -iname "*bg6*" 2>/dev/null
find /nvme0n1-disk/shunno_os/vendor/hardware_overlay -iname "*bg6*" 2>/dev/null
for f in $(find /nvme0n1-disk/shunno_os/vendor/hardware_overlay -iname "*bg6*" 2>/dev/null); do
    echo "--- $f ---"
    find "$f" -type f -exec head -n 50 {} +
done
"""

_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
