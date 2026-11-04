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

echo "=== 1. CHECK netbpfload.rc AND netbpfload.33rc ==="
cat payload_mnt/etc/netbpfload.rc
echo "--- netbpfload.33rc ---"
cat payload_mnt/etc/netbpfload.33rc

echo "=== 2. CHECK BPF FILES IN TETHERING APEX AND SYSTEM ==="
ls -la payload_mnt/etc/bpf/ payload_mnt/etc/bpf/mainline/
ls -la /nvme0n1-disk/infinity_x/mnt/system/etc/bpf/ 2>/dev/null || true
ls -la /nvme0n1-disk/infinity_x/mnt/system/bin/*bpf* 2>/dev/null || true

echo "=== 3. CHECK UPROBESTATS APEX ==="
rm -rf /tmp/uprobe_inspect
mkdir -p /tmp/uprobe_inspect
cd /tmp/uprobe_inspect
unzip -o -q /nvme0n1-disk/infinity_x/mnt/system/apex/com.android.uprobestats.capex
if [ -f original_apex ]; then unzip -o -q original_apex; fi
mkdir -p mnt
mount -o ro,loop apex_payload.img mnt
find mnt -maxdepth 3
strings mnt/bin/uprobestatsbpfload | grep -E "bpf|BPF|bpfloader|Failed|abort" || true
umount mnt
umount /tmp/teth_inspect/payload_mnt

echo "=== 4. CHECK KEYSTORE.CRASH_COUNT IN SYSTEM ==="
cd /nvme0n1-disk/infinity_x
grep -rn "keystore_crash_prop\|keystore_diagnostics_prop\|keystore.crash_count" mnt/system/etc/selinux/ /nvme0n1-disk/hios14_rom/bg6_vendor_selinux/ || true
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_bpf.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_bpf.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
