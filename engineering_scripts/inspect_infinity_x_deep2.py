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

VND="/nvme0n1-disk/hios14_rom/bg6_vendor_selinux"

echo "=== 1. CHECK keystore.crash_count AND tranphone_service ==="
grep -rn "keystore.crash_count" mnt/system/ $VND/ 2>/dev/null || true
grep -rn "tranphone_service" mnt/system/ $VND/ /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/ 2>/dev/null || true

echo "=== 2. CHECK HOW SHUNNO_OS PASSES CHECKFC -s AND -p WITH BG6 VENDOR ==="
SHUNNO="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system"
SECILC="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/secilc"
CHECKFC="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/checkfc"

$SECILC \
  $SHUNNO/etc/selinux/plat_sepolicy.cil \
  $SHUNNO/etc/selinux/mapping/33.0.cil \
  $SHUNNO/etc/selinux/mapping/33.0.compat.cil \
  $SHUNNO/system_ext/etc/selinux/system_ext_sepolicy.cil \
  $SHUNNO/system_ext/etc/selinux/mapping/33.0.cil \
  $SHUNNO/product/etc/selinux/product_sepolicy.cil \
  $SHUNNO/product/etc/selinux/mapping/33.0.cil \
  $VND/plat_pub_versioned.cil \
  $VND/vendor_sepolicy.cil \
  -m -M true -G -N -c 30 -o /tmp/test_shunno_sepolicy -f /dev/null && echo "SHUNNO_SECILC_OK"

cat $SHUNNO/etc/selinux/plat_service_contexts \
    $SHUNNO/system_ext/etc/selinux/system_ext_service_contexts \
    $SHUNNO/product/etc/selinux/product_service_contexts \
    $VND/vendor_service_contexts > /tmp/shunno_sc 2>/dev/null || true
$CHECKFC -s /tmp/test_shunno_sepolicy /tmp/shunno_sc && echo "SHUNNO_SC_OK" || echo "SHUNNO_SC_FAIL"

cat $SHUNNO/etc/selinux/plat_property_contexts \
    $SHUNNO/system_ext/etc/selinux/system_ext_property_contexts \
    $SHUNNO/product/etc/selinux/product_property_contexts \
    $VND/vendor_property_contexts > /tmp/shunno_pc 2>/dev/null || true
$CHECKFC -p /tmp/test_shunno_sepolicy /tmp/shunno_pc && echo "SHUNNO_PC_OK" || echo "SHUNNO_PC_FAIL"

echo "=== 3. CHECK WEBVIEW, IMS, OVERLAYS IN INFINITY X ==="
find mnt/system -iname "*webview*" -o -iname "*ims*" -o -iname "*sprd*" -o -iname "*unisoc*" 2>/dev/null | head -n 60

echo "=== 4. CHECK SPACE USAGE INSIDE INFINITY X IMG ==="
df -h mnt
du -sh mnt/system/* 2>/dev/null | sort -hr | head -n 20
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/inspect_inf9.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/inspect_inf9.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
