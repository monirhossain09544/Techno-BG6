import paramiko, sys
sys.stdout.reconfigure(encoding='utf-8')

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = "cat /nvme0n1-disk/infinity_x/mnt/system/etc/init/00-fix-metadata.rc; echo '=== VNDK.RC ==='; cat /nvme0n1-disk/infinity_x/mnt/system/etc/init/vndk.rc"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
