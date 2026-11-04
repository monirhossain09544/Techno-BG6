import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, out, err = ssh.exec_command("cat /tmp/gen_delta.py")
print(out.read().decode())
ssh.close()
