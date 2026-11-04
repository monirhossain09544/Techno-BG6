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

echo "=== 1. CHECK init_dev_config AND aconfigd SERVICES ==="
grep -rn "init_dev_config\|aconfigd" mnt/system/etc/init/ mnt/system/system_ext/etc/init/ mnt/system/product/etc/init/ 2>/dev/null || true

echo "=== 2. CHECK STRINGS & DISASSEMBLY OF /system/bin/bpfloader ==="
strings mnt/system/bin/bpfloader | grep -E "bpf|BPF|progs_loaded|kver|Kernel|kernel|Failed|abort|ignore" || true

echo "=== 3. CHECK HOW netbpfload, uprobestatsbpfload, AND bpfloader HANDLE ERRORS ==="
LLVM_OBJDUMP=$(find /nvme0n1-disk/shunno_os/prebuilts/clang -name "llvm-objdump" | head -n 1)

cd /tmp/uprobe_inspect
mkdir -p mnt
mountpoint -q mnt || mount -o ro,loop apex_payload.img mnt
$LLVM_OBJDUMP -d --demangle mnt/bin/uprobestatsbpfload > /tmp/uprobe.asm
grep -A 40 "<main>:" /tmp/uprobe.asm || head -n 120 /tmp/uprobe.asm
umount mnt

cd /nvme0n1-disk/infinity_x
$LLVM_OBJDUMP -d --demangle mnt/system/bin/bpfloader > /tmp/sys_bpfloader.asm
grep -A 60 "<main>:" /tmp/sys_bpfloader.asm || head -n 120 /tmp/sys_bpfloader.asm
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_bpf3.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_bpf3.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
