import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

script = r'''#!/bin/bash
set -e
LLVM_OBJDUMP=$(find /nvme0n1-disk/shunno_os/prebuilts/clang -name "llvm-objdump" | head -n 1)

echo "=== 1. CHECK execve IN uprobestatsbpfload ==="
grep -B 35 -A 15 "execve@plt" /tmp/uprobe.asm || true

echo "=== 2. CHECK BPF FILES IN uprobestats ==="
cd /tmp/uprobe_inspect
mkdir -p mnt
mountpoint -q mnt || mount -o ro,loop apex_payload.img mnt
ls -la mnt/etc/bpf/uprobestats/ 2>/dev/null || ls -la mnt/etc/bpf/ 2>/dev/null || true
umount mnt
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_uprobe.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_uprobe.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
