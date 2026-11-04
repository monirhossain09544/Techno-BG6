import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
strings /nvme0n1-disk/hios14_rom/merged_root/system/bin/init | grep -C 8 "apex_sepolicy"
echo "=== Compare with shunno_os init ==="
strings /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/init | grep -C 8 "apex_sepolicy"
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
