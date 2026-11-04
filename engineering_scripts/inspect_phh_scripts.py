import paramiko, sys
sys.stdout.reconfigure(encoding='utf-8')

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
cd /nvme0n1-disk/infinity_x/mnt/system
echo "=== 00-fix-metadata.sh ==="
cat etc/00-fix-metadata.sh 2>/dev/null || true
echo "=== phh-on-data.sh ==="
cat bin/phh-on-data.sh 2>/dev/null || true
echo "=== phh-on-boot.sh ==="
cat bin/phh-on-boot.sh 2>/dev/null || true
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
