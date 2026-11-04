import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
echo "=== init.environ.rc ==="
cat mnt_kl4_sys/init.environ.rc

echo "=== KL4 product/etc/permissions & system_ext/etc/permissions ==="
ls mnt_kl4_prod/etc/permissions/ mnt_kl4_ext/etc/permissions/

echo "=== KL6 system_ext/etc/permissions ==="
ls mnt_kl6_ext/etc/permissions/
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
