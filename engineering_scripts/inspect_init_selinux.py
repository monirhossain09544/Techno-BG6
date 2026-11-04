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

echo "=== FIND WHERE 'Loading SELinux policy' AND 'plat_sepolicy_genfs_' ARE REFERENCED IN init_fixed ==="
strings -t x init_fixed | grep -E "Loading SELinux policy|plat_sepolicy_genfs_|xperms rules from|ro.boot.vbmeta"
strings -t x mnt/system/bin/init | grep -E "Loading SELinux policy|plat_sepolicy_genfs_|xperms rules from|ro.boot.vbmeta"
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_init_selinux.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_init_selinux.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
