import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
cd /nvme0n1-disk/hios14_rom
AVBTOOL=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool
KEY=/nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"

echo "Original size:"
stat -c %s hios14_5_system.img

# Calculate max partition size (original + 64MB aligned to 4096)
ORIG_SIZE=$(stat -c %s hios14_5_system.img)
MAX_SIZE=$(( ORIG_SIZE + 67108864 ))

$AVBTOOL add_hashtree_footer \
    --image hios14_5_system.img \
    --partition_name system \
    --partition_size $MAX_SIZE \
    --key $KEY \
    --algorithm SHA256_RSA2048 \
    --rollback_index 1722816000 \
    --prop com.android.build.system.os_version:14 \
    --prop com.android.build.system.security_patch:2024-08-05

$AVBTOOL resize_image --image hios14_5_system.img

echo "New size after AVB hashtree footer + resize_image:"
stat -c %s hios14_5_system.img
$AVBTOOL info_image --image hios14_5_system.img
sha256sum hios14_5_system.img
'"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
