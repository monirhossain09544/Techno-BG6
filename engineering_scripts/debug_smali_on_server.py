import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
ps aux | grep -E "java|smali"
ls -lh /nvme0n1-disk/infinity_x/mock_work/
smali --version
find /nvme0n1-disk -name "*smali*.jar" 2>/dev/null | head -n 20
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
