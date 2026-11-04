import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
grep -n -C 15 -iE "sprd|unisoc|ums9230|ims" /nvme0n1-disk/infinity_x/mnt/system/bin/rw-system.sh || true
find /nvme0n1-disk/shunno_os/ -name "*ims*.apk" 2>/dev/null | head -n 30 || true
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
