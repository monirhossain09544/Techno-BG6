import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
cmd = """
cd /nvme0n1-disk/shunno_os/vendor/gapps
git remote -v || true
ls -la
ls -la arm64/proprietary/product/app/ arm64/proprietary/product/priv-app/ common/proprietary/product/app/ 2>/dev/null || true
"""
_, out, _ = ssh.exec_command(cmd)
print(out.read().decode())
ssh.close()
