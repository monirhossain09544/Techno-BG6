import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, out, err = ssh.exec_command("ls /nvme0n1-disk/shunno_os/out/combined-*.mk; head -n 20 /nvme0n1-disk/shunno_os/out/soong/soong.variables")
print(out.read().decode())
ssh.close()
