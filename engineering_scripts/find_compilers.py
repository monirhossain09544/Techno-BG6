import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
find / -name "*aarch64*gcc*" -o -name "*aarch64*clang*" -o -name "d8" 2>/dev/null
cat /nvme0n1-disk/infinity_x/bg6_perf_engine.c | head -n 35
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
ssh.close()
