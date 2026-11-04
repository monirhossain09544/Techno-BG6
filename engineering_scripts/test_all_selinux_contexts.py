import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
BIN=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin
$BIN/secilc -m -M true -G -N -c 30 \
  merged_root/system/etc/selinux/plat_sepolicy.cil \
  merged_root/system/etc/selinux/mapping/33.0.cil \
  merged_root/system/etc/selinux/mapping/33.0.compat.cil \
  merged_root/system/system_ext/etc/selinux/system_ext_sepolicy.cil \
  merged_root/system/system_ext/etc/selinux/mapping/33.0.cil \
  bg6_vendor_selinux/plat_pub_versioned.cil \
  bg6_vendor_selinux/vendor_sepolicy.cil \
  -o /tmp/test_sepolicy -f /dev/null 2>&1

echo "=== Testing file_contexts with checkfc ==="
cat merged_root/system/etc/selinux/plat_file_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_file_contexts \
    merged_root/system/product/etc/selinux/product_file_contexts \
    bg6_vendor_selinux/vendor_file_contexts > /tmp/all_file_contexts
$BIN/checkfc /tmp/test_sepolicy /tmp/all_file_contexts 2>&1 && echo "FILE_CONTEXTS_OK!"

echo "=== Testing service_contexts with checkfc -s ==="
cat merged_root/system/etc/selinux/plat_service_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_service_contexts \
    bg6_vendor_selinux/vendor_service_contexts > /tmp/all_service_contexts
$BIN/checkfc -s /tmp/test_sepolicy /tmp/all_service_contexts 2>&1 && echo "SERVICE_CONTEXTS_OK!"

echo "=== Testing hwservice_contexts with checkfc -l ==="
cat merged_root/system/etc/selinux/plat_hwservice_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_hwservice_contexts \
    bg6_vendor_selinux/vendor_hwservice_contexts > /tmp/all_hwservice_contexts
$BIN/checkfc -l /tmp/test_sepolicy /tmp/all_hwservice_contexts 2>&1 && echo "HWSERVICE_CONTEXTS_OK!"
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
