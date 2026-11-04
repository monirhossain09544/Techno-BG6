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

AVBTOOL="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool"
KEY="/nvme0n1-disk/shunno_os/build/make/target/product/gsi/testkey_rsa2048.pem"

echo "=== 1. E2FSCK & RESIZE2FS -M ==="
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true
resize2fs -M infinity_x_bg6_ready.img
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true

BLOCKS=$(tune2fs -l infinity_x_bg6_ready.img | awk '/^Block count:/ {print $3}')
FS_BYTES=$((BLOCKS * 4096))
TOTAL_BYTES=$((FS_BYTES + 67108864)) # +64MB for AVB hashtree + footer
echo "FS_BYTES=$FS_BYTES TOTAL_BYTES=$TOTAL_BYTES"
truncate -s $TOTAL_BYTES infinity_x_bg6_ready.img

echo "=== 2. ADD AVB HASHTREE FOOTER & VERIFY ==="
$AVBTOOL erase_footer --image infinity_x_bg6_ready.img 2>/dev/null || true
$AVBTOOL add_hashtree_footer \
    --image infinity_x_bg6_ready.img \
    --partition_name system \
    --hash_algorithm sha256 \
    --key $KEY \
    --algorithm SHA256_RSA2048

$AVBTOOL verify_image --image infinity_x_bg6_ready.img --key $KEY
$AVBTOOL info_image --image infinity_x_bg6_ready.img

echo "=== 3. VERIFY MOUNT & XATTRS OF FINAL SIGNED IMAGE ==="
mkdir -p mnt_verify
umount mnt_verify 2>/dev/null || true
mount -o ro,loop infinity_x_bg6_ready.img mnt_verify
python3 - << 'PYEOF'
import os
for p in [
    "mnt_verify/system/bin/init",
    "mnt_verify/system/etc/init/init.bg6.rc",
    "mnt_verify/system/etc/init/hw/init.rc",
    "mnt_verify/system/build.prop",
    "mnt_verify/system/product/etc/apns-conf.xml",
    "mnt_verify/system/etc/selinux/plat_sepolicy.cil",
    "mnt_verify/system/etc/selinux/mapping/33.0.cil",
    "mnt_verify/system/etc/selinux/plat_property_contexts",
]:
    ctx = os.getxattr(p, "security.selinux", follow_symlinks=False)
    st = os.stat(p)
    print(f"{p}: size={st.st_size} mode={oct(st.st_mode)} uid={st.st_uid}:{st.st_gid} ctx={ctx}")
PYEOF
umount mnt_verify
ls -lh infinity_x_bg6_ready.img
echo "=== FINAL_IMAGE_VERIFIED_100_PERCENT ==="
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/sign_infinity_x.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/sign_infinity_x.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=300)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
