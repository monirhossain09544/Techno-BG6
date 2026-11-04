import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, out, _ = ssh.exec_command("sed -n '1180,1245p' /nvme0n1-disk/shunno_os/system/core/init/property_service.cpp")
print(out.read().decode())
ssh.close()
