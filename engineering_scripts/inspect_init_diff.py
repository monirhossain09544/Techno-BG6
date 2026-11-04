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

echo "=== 1. CHECK DISASSEMBLY / SYMBOLS OF INIT VS INIT_FIXED AROUND SELINUX ==="
LLVM_OBJDUMP=$(find /nvme0n1-disk/shunno_os/prebuilts/clang -name "llvm-objdump" | head -n 1)
echo "Using objdump: $LLVM_OBJDUMP"

$LLVM_OBJDUMP -d mnt/system/bin/init > /tmp/init_orig.asm
$LLVM_OBJDUMP -d init_fixed > /tmp/init_fixed.asm
diff -u /tmp/init_orig.asm /tmp/init_fixed.asm | grep -E "^\+|^\-|@@" | head -n 120 || true

echo "=== 2. CHECK STRINGS IN INIT_FIXED AROUND SELINUX ==="
strings -n 4 mnt/system/bin/init > /tmp/str_orig.txt
strings -n 4 init_fixed > /tmp/str_fixed.txt
diff -u /tmp/str_orig.txt /tmp/str_fixed.txt || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_init_diff.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_init_diff.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
