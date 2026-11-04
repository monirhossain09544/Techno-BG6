import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = "grep -i -C 6 'FDL' /nvme0n1-disk/hios14_rom/kl4_pac_files/ums9230_KL4_go.xml"
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
