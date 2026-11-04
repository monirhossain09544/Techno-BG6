import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
cmd = """
cd /nvme0n1-disk/shunno_os
grep -rn "resetprop_phh" device/phh/treble/ system/ 2>/dev/null | head -n 30
grep -rn "PropertyLoadBootDefaults" system/core/init/ 2>/dev/null -A 35
"""
_, out, _ = ssh.exec_command(cmd)
print(out.read().decode())
ssh.close()
