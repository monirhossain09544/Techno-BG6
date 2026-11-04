import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
echo "=== LIST /nvme0n1-disk AND /nvme0n1-disk/hios14_rom ==="
ls -lh /nvme0n1-disk/
ls -lh /nvme0n1-disk/hios14_rom/
echo "=== FIND ANY tr_mi / tr_preload / super / zip / pac / payload IN /nvme0n1-disk ==="
find /nvme0n1-disk -maxdepth 3 \( -iname "*tr_*" -o -iname "*file*" -o -iname "*.zip" -o -iname "*.pac" -o -iname "*kl6*" -o -iname "*bg6*" -o -iname "*hios*" \) 2>/dev/null | head -n 120
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
