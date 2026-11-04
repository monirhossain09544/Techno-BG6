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

echo "=== 1. CHECK ALL wait_for_prop AND exec_start IN init.rc ==="
grep -n -C 5 "wait_for_prop\|exec_start" mnt/system/etc/init/hw/init.rc

echo "=== 2. CHECK keystore.module_hash.sent IN SYSTEM ==="
grep -rn "module_hash" mnt/system/etc/ 2>/dev/null || true
strings mnt/system/bin/keystore2 | grep -i "module_hash" -C 3 || true

echo "=== 3. CHECK ALL OTHER .rc FILES IN mnt/system/etc/init/ FOR REBOOT_ON_FAILURE ==="
grep -rn "reboot_on_failure" mnt/system/etc/init/ mnt/system/system_ext/etc/init/ mnt/system/product/etc/init/ 2>/dev/null || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_initrc.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_initrc.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
