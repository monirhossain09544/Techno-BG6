import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
grep -rn "bootstrap-apex" merged_root/system/etc/init/ 2>/dev/null
strings merged_root/system/bin/init merged_root/system/bin/apexd | grep -E "bootstrap-apex|first_stage" | head -n 30
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
