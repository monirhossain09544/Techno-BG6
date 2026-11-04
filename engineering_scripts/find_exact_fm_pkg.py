import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
echo "=== CHECK OSIcon.apk FOR FILE MANAGER PACKAGE NAME ==="
unzip -l /nvme0n1-disk/hios14_rom/kl4_root/product/app/OSIcon/OSIcon.apk | grep -iE "file|xml" | head -n 40
$AAPT2 dump resources /nvme0n1-disk/hios14_rom/kl4_root/product/app/OSIcon/OSIcon.apk 2>/dev/null | grep -iE "filemanager|file_manager|files" | head -n 40 || true

echo "=== CHECK HiLauncher.apk FOR FILE MANAGER PACKAGE NAME ==="
strings /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk | grep -iE "filemanager|filesgoogle|documentsui" | sort -u | head -n 40 || true
$AAPT2 dump xmltree /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk --file res/xml/default_workspace_4x6.xml 2>/dev/null | grep -iE "packageName|className" -A 1 | head -n 80 || true

echo "=== CHECK ums9230_KL4_go.xml PARTITIONS ==="
grep -iE "File|ID=|Base=" /nvme0n1-disk/hios14_rom/kl4_pac_files/ums9230_KL4_go.xml | head -n 60 || true

echo "=== CHECK KL6 userdata.img ==="
mkdir -p /tmp/kl6_ud
cd /tmp/kl6_ud
unzip -o -j /nvme0n1-disk/hios14_rom/KL6_Full_HiOS14_5.zip "*/userdata.img" >/dev/null 2>&1 || true
file /tmp/kl6_ud/userdata.img || true
simg2img /tmp/kl6_ud/userdata.img /tmp/kl6_ud/userdata.raw 2>/dev/null || cp /tmp/kl6_ud/userdata.img /tmp/kl6_ud/userdata.raw
mkdir -p /tmp/mnt_ud
echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_ud 2>/dev/null || true
if echo '${BG6_SERVER_PASS}' | sudo -S mount -o ro,loop /tmp/kl6_ud/userdata.raw /tmp/mnt_ud 2>/dev/null; then
    find /tmp/mnt_ud -maxdepth 4
    echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_ud
fi
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
