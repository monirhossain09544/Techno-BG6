import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
set -e
cd /nvme0n1-disk/hios14_rom

# 1. Ensure /bootstrap-apex and other GSI root mountpoints exist with proper SELinux contexts
mkdir -p merged_root/bootstrap-apex merged_root/tmp merged_root/efs merged_root/persist merged_root/bt_firmware merged_root/sec_storage
chmod 0755 merged_root/bootstrap-apex merged_root/efs merged_root/persist merged_root/bt_firmware merged_root/sec_storage
chmod 0771 merged_root/tmp
chown root:root merged_root/bootstrap-apex merged_root/efs merged_root/persist merged_root/bt_firmware merged_root/sec_storage
chown 2000:2000 merged_root/tmp

python3 - << "PYEOF"
import os
os.setxattr("merged_root/bootstrap-apex", "security.selinux", b"u:object_r:apex_mnt_dir:s0", follow_symlinks=False)
os.setxattr("merged_root/tmp", "security.selinux", b"u:object_r:shell_data_file:s0", follow_symlinks=False)
for d in ["efs", "persist", "bt_firmware", "sec_storage", "blackbox", "tranfs"]:
    p = f"merged_root/{d}"
    if os.path.exists(p):
        os.setxattr(p, "security.selinux", b"u:object_r:rootfs:s0", follow_symlinks=False)
PYEOF

# 2. Verify checkfc
BIN=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin
rm -f /tmp/all_file_contexts
cat merged_root/system/etc/selinux/plat_file_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_file_contexts \
    merged_root/system/product/etc/selinux/product_file_contexts \
    bg6_vendor_selinux/vendor_file_contexts > /tmp/all_file_contexts
$BIN/checkfc /tmp/test_sepolicy /tmp/all_file_contexts

# 3. Rebuild hios14_5_system.img with mkfs.erofs
rm -f hios14_5_system.img
$BIN/mkfs.erofs -z lz4hc,9 -T 1723613285 hios14_5_system.img merged_root >/dev/null

# 4. Add AVB hashtree footer (SHA256_RSA2048, q-gsi.avbpubkey)
ORIG_SIZE=$(stat -c %s hios14_5_system.img)
PART_SIZE=$((ORIG_SIZE + 41943040))
export PATH="$BIN:$PATH"
$BIN/avbtool add_hashtree_footer \
    --image hios14_5_system.img \
    --partition_name system \
    --partition_size $PART_SIZE \
    --hash_algorithm sha256 \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048 \
    --rollback_index 1722816000 \
    --prop com.android.build.system.os_version:14 \
    --prop com.android.build.system.security_patch:2024-08-05

stat -c %s hios14_5_system.img
sha256sum hios14_5_system.img
echo "REBUILD_FIXED_HIOS14_5_SUCCESS!"
'"""
_, stdout, stderr = ssh.exec_command(cmd)
for line in iter(stdout.readline, ""):
    print(line, end="", flush=True)
print(stderr.read().decode(), flush=True)
ssh.close()
