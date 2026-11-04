import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
cd /nvme0n1-disk/hios14_rom
mkdir -p mnt_kl4_sys mnt_kl4_ext mnt_kl4_prod mnt_kl6_ext mnt_kl6_prod
mount -o loop,ro -t erofs kl4_parts/system_a.img mnt_kl4_sys
mount -o loop,ro -t erofs kl4_parts/system_ext_a.img mnt_kl4_ext
mount -o loop,ro -t erofs kl4_parts/product_a.img mnt_kl4_prod
mount -o loop,ro -t erofs kl6_parts/system_ext_a.img mnt_kl6_ext
mount -o loop,ro -t erofs kl6_parts/product_a.img mnt_kl6_prod

ls -laZ mnt_kl4_sys/system/bin/init mnt_kl4_ext/priv-app/TranSystemUI mnt_kl4_prod/priv-app/OSIcon 2>/dev/null || ls -laZ mnt_kl4_sys/system/bin/init mnt_kl4_ext/priv-app/TranSystemUI
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
