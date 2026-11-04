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
LLVM_OBJDUMP=$(find /nvme0n1-disk/shunno_os/prebuilts/clang -name "llvm-objdump" | head -n 1)

echo "=== CHECK KEYSTORE2 MODULE_HASH LOGIC ==="
$LLVM_OBJDUMP -d --demangle mnt/system/bin/keystore2 > /tmp/keystore2.asm
grep -n -C 35 "watch_apex_info\|module_hash\|read_apex_info" /tmp/keystore2.asm | head -n 140 || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_ks2.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_ks2.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
