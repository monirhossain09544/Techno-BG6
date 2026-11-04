import paramiko
import subprocess

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
OUT=/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab
echo "=== 1. Check webview in OUT and source ==="
find "$OUT/system" -iname "*webview*" 2>/dev/null
ls -lh /nvme0n1-disk/shunno_os/external/chromium-webview/prebuilt/arm64/webview.apk

echo "=== 2. Check SetupWizard in OUT ==="
find "$OUT/system" -iname "*setupwizard*" -o -iname "*restore*" 2>/dev/null

echo "=== 3. Check tecno-bg6 overlay in device/phh/treble ==="
find /nvme0n1-disk/shunno_os/device/phh/treble -iname "*bg6*" 2>/dev/null
for f in $(find /nvme0n1-disk/shunno_os/device/phh/treble -iname "*bg6*" -type d 2>/dev/null); do
    find "$f" -type f -exec head -n 50 {} +
done

echo "=== 4. Check sunno.mk / tdgsi_arm64_ab.mk ==="
cat /nvme0n1-disk/shunno_os/device/phh/treble/tdgsi_arm64_ab/tdgsi_arm64_ab.mk 2>/dev/null || true
"""

_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
ssh.close()
