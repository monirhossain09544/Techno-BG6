import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
grep -rn "bootstrap-apex" /nvme0n1-disk/shunno_os/system/core/init/ /nvme0n1-disk/shunno_os/system/apex/ 2>/dev/null | head -n 30
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
