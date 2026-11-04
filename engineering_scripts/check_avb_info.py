import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool info_image --image /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system.img"
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
