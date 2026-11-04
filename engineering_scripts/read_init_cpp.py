import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = "sed -n '825,895p' /nvme0n1-disk/shunno_os/system/core/init/init.cpp"
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
