import paramiko, sys
sys.stdout.reconfigure(encoding='utf-8')

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
echo "=== 1. CONTENTS OF /nvme0n1-disk/bg6_device ==="
ls -la /nvme0n1-disk/bg6_device/
cat /nvme0n1-disk/bg6_device/bg6_vendor_build.prop

echo "=== 2. INSPECT bg6_product_rro.apk ==="
AAPT2=$(find /nvme0n1-disk/shunno_os/out/host/linux-x86/bin -name "aapt2" | head -n 1)
$AAPT2 dump badging /nvme0n1-disk/bg6_device/bg6_product_rro.apk || true
$AAPT2 dump resources /nvme0n1-disk/bg6_device/bg6_product_rro.apk | head -n 120 || true

echo "=== 3. CHECK KL4 VENDOR POWER & INIT CONFIGS (UMS9230 T606 REFERENCE) ==="
ls -la /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/init/ /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/power* 2>/dev/null || true
cat /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/init/hw/init.ums9230*.rc 2>/dev/null || true
cat /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/power_resource_file_info.xml 2>/dev/null || true
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
