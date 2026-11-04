import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

script = r'''#!/bin/bash
set -e
cd /tmp/teth_inspect
mkdir -p payload_mnt
mountpoint -q payload_mnt || mount -o ro,loop apex_payload.img payload_mnt

echo "=== 1. ALL RC FILES IN TETHERING APEX ==="
ls -la payload_mnt/etc/
for f in payload_mnt/etc/*rc*; do
    echo "--- $f ---"
    cat "$f"
done
umount payload_mnt

echo "=== 2. UPROBESTATS INIT.RC ==="
cd /tmp/uprobe_inspect
mkdir -p mnt
mountpoint -q mnt || mount -o ro,loop apex_payload.img mnt
cat mnt/etc/init.rc
umount mnt

echo "=== 3. CHECK GENFS CIL FILES AND PHH DIR IN INFINITY X ==="
cd /nvme0n1-disk/infinity_x
for f in mnt/system/etc/selinux/plat_sepolicy_genfs_*.cil; do
    echo "--- $f ---"
    cat "$f"
done
ls -la mnt/system/phh/

echo "=== 4. CHECK INIT.RC BPFLOADER SECTION IN INFINITY X ==="
sed -n '1070,1120p' mnt/system/etc/init/hw/init.rc

echo "=== 5. CHECK SELINUX FUNCTIONS IN INIT_FIXED ==="
LLVM_OBJDUMP=$(find /nvme0n1-disk/shunno_os/prebuilts/clang -name "llvm-objdump" | head -n 1)
$LLVM_OBJDUMP --syms -C init_fixed | grep -iE "selinux|policy|enforce|xperm|vbmeta" | head -n 60 || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_bpf2.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_bpf2.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
