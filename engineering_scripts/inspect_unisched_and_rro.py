import paramiko, sys
sys.stdout.reconfigure(encoding='utf-8')

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
echo "=== 1. FULL power_resource_file_info.xml ==="
cat /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/power_resource_file_info.xml

echo "=== 2. CHECK power_scene_config.xml ==="
head -n 120 /nvme0n1-disk/hios14_rom/mnt_kl4_vendor/etc/power_scene_config.xml || true

echo "=== 3. CHECK /nvme0n1-disk/bg6_device/rro_decoded ==="
find /nvme0n1-disk/bg6_device/rro_decoded -type f
cat /nvme0n1-disk/bg6_device/rro_decoded/AndroidManifest.xml || true
cat /nvme0n1-disk/bg6_device/rro_decoded/res/values/config.xml 2>/dev/null || true
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
