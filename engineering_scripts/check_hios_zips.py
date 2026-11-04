import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
echo "=== unzip -l KL6_Full_HiOS14_5.zip ==="
unzip -l /nvme0n1-disk/hios14_rom/KL6_Full_HiOS14_5.zip
echo "=== unzip -l KL4_Unisoc_HiOS14.zip ==="
unzip -l /nvme0n1-disk/hios14_rom/KL4_Unisoc_HiOS14.zip
echo "=== cat build_hios14_5.sh ==="
cat /nvme0n1-disk/hios14_rom/build_hios14_5.sh | head -n 120
echo "=== check bg6_extras ==="
ls -lh /nvme0n1-disk/hios14_rom/bg6_extras/
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
