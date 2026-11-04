import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
echo "=== CHECK OpenSplitPolicy (0x120aa0) IN init_fixed.asm ==="
grep -A 180 "0000000000120aa0" /tmp/init_fixed.asm || grep -A 180 " 120aa0:" /tmp/init_fixed.asm
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
