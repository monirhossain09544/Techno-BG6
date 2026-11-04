import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
echo "=== Root of Sunno OS system ==="
ls -laZ /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/
echo "=== Root of KL4 system ==="
ls -laZ /nvme0n1-disk/hios14_rom/mnt_kl4_sys/
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
