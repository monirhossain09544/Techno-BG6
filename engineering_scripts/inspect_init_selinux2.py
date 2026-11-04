import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
echo "=== INIT_FIXED security_setenforce / security_load_policy ==="
grep -B 20 -A 15 "security_setenforce@plt\|security_load_policy@plt" /tmp/init_fixed.asm
echo "=== INIT_ORIG security_setenforce / security_load_policy ==="
grep -B 20 -A 15 "security_setenforce@plt\|security_load_policy@plt" /tmp/init_orig.asm
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
