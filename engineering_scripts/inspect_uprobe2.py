import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

script = r'''#!/bin/bash
set -e
echo "=== 1. CHECK 0x8050..0x8350 IN /tmp/uprobe.asm ==="
grep -A 130 " 8050:" /tmp/uprobe.asm || grep -B 60 -A 20 " 825c:" /tmp/uprobe.asm

echo "=== 2. CHECK bpf.progs_loaded IN init.rc AND /system/bin/bpfloader ==="
grep -rn "progs_loaded" /nvme0n1-disk/infinity_x/mnt/system/etc/init/ /nvme0n1-disk/infinity_x/mnt/system/bin/bpfloader 2>/dev/null || true
strings /nvme0n1-disk/infinity_x/mnt/system/bin/bpfloader | grep -i "progs_loaded" -C 5 || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_uprobe2.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_uprobe2.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
