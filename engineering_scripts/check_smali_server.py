import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
cat /usr/bin/smali
ls -la /nvme0n1-disk/infinity_x/mock_work/
ls -la /nvme0n1-disk/infinity_x/mock_work/fw_dex/
ps aux | grep -i smali
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
