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

SECILC="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/secilc"
CHECKFC="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/checkfc"
VND="/nvme0n1-disk/hios14_rom/bg6_vendor_selinux"

echo "=== 1. CHECK POLICYCAP IN INFINITY X VS SHUNNO_OS ==="
grep "policycap" mnt/system/etc/selinux/plat_sepolicy.cil || true
grep "policycap" /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/selinux/plat_sepolicy.cil || true

echo "=== 2. CLEAN UNSUPPORTED CIL FOR KERNEL 5.15 & TEST SECILC ==="
grep -v "(nlmsg " mnt/system/etc/selinux/plat_sepolicy.cil | grep -v "functionfs_seclabel" > /tmp/plat_clean3.cil

$SECILC \
  /tmp/plat_clean3.cil \
  mnt/system/etc/selinux/mapping/33.0.cil \
  mnt/system/etc/selinux/mapping/33.0.compat.cil \
  mnt/system/system_ext/etc/selinux/system_ext_sepolicy.cil \
  mnt/system/system_ext/etc/selinux/mapping/33.0.cil \
  mnt/system/product/etc/selinux/product_sepolicy.cil \
  mnt/system/product/etc/selinux/mapping/33.0.cil \
  $VND/plat_pub_versioned.cil \
  $VND/vendor_sepolicy.cil \
  -m -M true -G -N -c 30 -o /tmp/test_infinity_sepolicy -f /dev/null && echo "SECILC_SUCCESS" || echo "SECILC_FAILED"

echo "=== 3. TEST CHECKFC WITH COMPILED SEPOLICY ==="
cat mnt/system/etc/selinux/plat_file_contexts \
    mnt/system/system_ext/etc/selinux/system_ext_file_contexts \
    mnt/system/product/etc/selinux/product_file_contexts \
    $VND/vendor_file_contexts > /tmp/combined_fc
$CHECKFC /tmp/test_infinity_sepolicy /tmp/combined_fc && echo "CHECKFC_FILE_SUCCESS" || echo "CHECKFC_FILE_FAILED"

cat mnt/system/etc/selinux/plat_service_contexts \
    mnt/system/system_ext/etc/selinux/system_ext_service_contexts \
    mnt/system/product/etc/selinux/product_service_contexts \
    $VND/vendor_service_contexts > /tmp/combined_sc 2>/dev/null || true
$CHECKFC -s /tmp/test_infinity_sepolicy /tmp/combined_sc && echo "CHECKFC_SERVICE_SUCCESS" || echo "CHECKFC_SERVICE_FAILED"

cat mnt/system/etc/selinux/plat_hwservice_contexts \
    mnt/system/system_ext/etc/selinux/system_ext_hwservice_contexts \
    mnt/system/product/etc/selinux/product_hwservice_contexts \
    $VND/vendor_hwservice_contexts > /tmp/combined_hwsc 2>/dev/null || true
$CHECKFC -l /tmp/test_infinity_sepolicy /tmp/combined_hwsc && echo "CHECKFC_HWSERVICE_SUCCESS" || echo "CHECKFC_HWSERVICE_FAILED"

cat mnt/system/etc/selinux/plat_property_contexts \
    mnt/system/system_ext/etc/selinux/system_ext_property_contexts \
    mnt/system/product/etc/selinux/product_property_contexts \
    $VND/vendor_property_contexts > /tmp/combined_pc 2>/dev/null || true
$CHECKFC -p /tmp/test_infinity_sepolicy /tmp/combined_pc && echo "CHECKFC_PROP_SUCCESS" || echo "CHECKFC_PROP_FAILED"

echo "=== 4. INSPECT RW-SYSTEM.SH AND INFINITY X SPECIFIC FILES ==="
head -n 120 mnt/system/bin/rw-system.sh
tail -n 120 mnt/system/bin/rw-system.sh
ls -la mnt/system/product/etc/apns-conf.xml mnt/system/etc/apns-conf.xml 2>/dev/null || true
ls -la mnt/system/priv-app/ mnt/system/product/priv-app/ mnt/system/system_ext/priv-app/ | head -n 100
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_inf8.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_inf8.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
