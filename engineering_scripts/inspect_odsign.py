import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

script = r'''#!/bin/bash
set -e
cd /nvme0n1-disk/infinity_x
echo "=== 1. CHECK odsign.rc AND keystore2.rc ==="
cat mnt/system/etc/init/odsign.rc 2>/dev/null || true
cat mnt/system/etc/init/keystore2.rc 2>/dev/null || true

echo "=== 2. CHECK ALL .rc FILES IN mnt/system/etc/init/ ==="
ls -la mnt/system/etc/init/
cat mnt/system/etc/init/vndk-sp.rc 2>/dev/null || true
cat mnt/system/etc/init/phh-*.rc 2>/dev/null || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_odsign.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_odsign.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
