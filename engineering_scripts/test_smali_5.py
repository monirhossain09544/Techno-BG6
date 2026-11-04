import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
time smali a -j 8 fw_classes5 -o test5.dex 2>&1
echo "EXIT_CODE=$?"
ls -lh test5.dex 2>&1 || true
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
