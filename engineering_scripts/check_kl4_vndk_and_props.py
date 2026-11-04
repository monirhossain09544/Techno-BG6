import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
echo "=== KL4 system_ext/apex ==="
ls -la kl4_root/system_ext/apex/
echo "=== KL4 system/apex ==="
ls -la kl4_root/system/system/apex/
echo "=== KL4 product/app & priv-app ==="
ls kl4_root/product/app/ kl4_root/product/priv-app/
echo "=== KL4 product/theme ==="
ls -la kl4_root/product/theme/
echo "=== KL4 HiOS version props ==="
grep -E "tranos|os.version|low_ram|2g_go|refresh|dynamicbar" kl4_root/product/etc/build.prop kl4_root/system/system/build.prop kl4_root/system_ext/etc/build.prop
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
