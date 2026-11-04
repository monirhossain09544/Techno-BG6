import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
echo "=== Largest dirs in kl4_root/product ==="
du -sh kl4_root/product/* | sort -hr
du -sh kl4_root/product/app/* kl4_root/product/priv-app/* kl4_root/product/etc/* 2>/dev/null | sort -hr | head -n 30

echo "=== Checking KL6 product/theme ==="
ls -la kl6_root/product/theme/ 2>/dev/null || true
find kl6_root -iname "*theme*" -o -iname "*wallpaper*" | head -n 40
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
