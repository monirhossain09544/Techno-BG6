import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
echo "=== 1. CHECK SHUNNO_OS selinux.cpp ==="
grep -n -C 20 "IsEnforcing(" /nvme0n1-disk/shunno_os/system/core/init/selinux.cpp || true

echo "=== 2. CHECK ELF PROGRAM HEADERS OF init_fixed ==="
readelf -l /nvme0n1-disk/infinity_x/init_fixed
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
