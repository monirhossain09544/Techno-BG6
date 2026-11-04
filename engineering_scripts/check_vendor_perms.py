import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = r"""
ls -la /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/permissions/
grep -rn "ram" /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/permissions/ /nvme0n1-disk/infinity_x/mnt_inject/ 2>/dev/null || true
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
