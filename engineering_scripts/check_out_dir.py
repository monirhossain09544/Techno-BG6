import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, out, err = ssh.exec_command("ls -lh /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/ /tmp/")
print(out.read().decode())
ssh.close()
