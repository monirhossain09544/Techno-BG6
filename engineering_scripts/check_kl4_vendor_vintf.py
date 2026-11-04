import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
cd /nvme0n1-disk/hios14_rom
mkdir -p mnt_kl4_vendor
mount -o loop,ro -t erofs kl4_parts/vendor_a.img mnt_kl4_vendor 2>/dev/null || true
grep -E "ro.board|ro.hardware|ro.vndk|ro.product.vendor|ro.vendor.sdk" mnt_kl4_vendor/build.prop
echo "=== KL4 system_ext/etc/vintf & product/etc/vintf ==="
cat mnt_kl4_sys/system/etc/vintf/compatibility_matrix.device.xml 2>/dev/null | head -n 30
cat mnt_kl4_ext/etc/vintf/manifest.xml 2>/dev/null
cat mnt_kl4_prod/etc/vintf/manifest.xml 2>/dev/null
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
