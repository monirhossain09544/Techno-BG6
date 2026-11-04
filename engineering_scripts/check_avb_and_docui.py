import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
echo "=== CHECK patch_no_go_v3.sh & mock_work scripts ==="
cat /nvme0n1-disk/infinity_x/patch_no_go_v3.sh | tail -n 60
ls -la /nvme0n1-disk/infinity_x/mock_work/ 2>/dev/null || true

echo "=== CHECK AVB INFO ON infinity_x_bg6_ready.img ==="
AVB=/nvme0n1-disk/shunno_os/external/avb/avbtool.py
python3 "$AVB" info_image --image /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img || true

echo "=== CHECK DocumentsUI.apk LAUNCHER ACTIVITY ==="
mkdir -p /tmp/mnt_inf_ro
echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_inf_ro 2>/dev/null || true
echo '${BG6_SERVER_PASS}' | sudo -S mount -o ro,loop /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img /tmp/mnt_inf_ro
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
$AAPT2 dump badging /tmp/mnt_inf_ro/system/priv-app/DocumentsUI/DocumentsUI.apk | grep -E "package:|launchable" || true
$AAPT2 dump xmltree /tmp/mnt_inf_ro/system/priv-app/DocumentsUI/DocumentsUI.apk --file AndroidManifest.xml | grep -B 6 -A 8 "LAUNCHER" || true

echo "=== CHECK Dialer + Contacts APK sizes to see space freed ==="
du -sh /tmp/mnt_inf_ro/system/product/priv-app/Dialer /tmp/mnt_inf_ro/system/product/priv-app/Contacts 2>/dev/null || true
df -BM /tmp/mnt_inf_ro
echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_inf_ro
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
print("STDERR:", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
