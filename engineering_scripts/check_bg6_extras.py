import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
ls -la /nvme0n1-disk/hios14_rom/bg6_extras/
find /nvme0n1-disk/shunno_os/ -name "avbtool" -o -name "testkey_rsa2048.pem" 2>/dev/null
cat /nvme0n1-disk/hios14_rom/finish_hios14_5.sh
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
