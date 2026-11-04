import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
ls -la /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/*prop* /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/*seapp* /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/*fc* 2>/dev/null
find /nvme0n1-disk -maxdepth 3 -name "*odm*" -o -name "*bg6*" 2>/dev/null
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
