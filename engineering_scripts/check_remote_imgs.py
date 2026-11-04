import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
ls -la /nvme0n1-disk/bg6_device/ /nvme0n1-disk/rom/ /nvme0n1-disk/sunno_release/
find /nvme0n1-disk/bg6_device -maxdepth 3 -ls
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
