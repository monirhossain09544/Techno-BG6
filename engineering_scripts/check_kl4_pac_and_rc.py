import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
echo "=== 1. Check kl4_pac_files ==="
ls -lh kl4_pac_files/
echo "=== 2. Check all .rc files in merged_root for custom Transsion/PayJoy commands ==="
grep -rnE "anti_crack|payjoy|Nephilim|TEOP|trantabe" merged_root/system/etc/init/ merged_root/system/system_ext/etc/init/ merged_root/system/product/etc/init/ mnt_kl4_vendor/etc/init/ 2>/dev/null
echo "=== 3. Check KL6 system/bin/init for trigger_anti_crack_exception ==="
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
