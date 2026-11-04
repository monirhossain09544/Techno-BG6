import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
echo "=== CHECK KL6 .map FILES ==="
unzip -p /nvme0n1-disk/hios14_rom/KL6_Full_HiOS14_5.zip "*/product.map" "*/system.map" "*/system_ext.map" | grep -iE "\.apk" | sort -u
echo "=== CHECK /home/administrator & /tmp ==="
find /home/administrator /tmp -maxdepth 3 \( -iname "*.apk" -o -iname "*bg6*" -o -iname "*file*" -o -iname "*super*" \) 2>/dev/null || true
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
