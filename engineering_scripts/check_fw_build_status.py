import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
ps aux | grep -E "smali|python3|zip" | grep -v grep
ls -la --time-style=full-iso /nvme0n1-disk/infinity_x/mock_work/*.dex /nvme0n1-disk/infinity_x/mock_work/*.jar
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode())
ssh.close()
