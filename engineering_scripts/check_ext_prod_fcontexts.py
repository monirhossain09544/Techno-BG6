import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
cd /nvme0n1-disk/hios14_rom
cat mnt_kl4_ext/etc/selinux/system_ext_file_contexts mnt_kl4_prod/etc/selinux/product_file_contexts
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
