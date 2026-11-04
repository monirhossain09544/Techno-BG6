import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
grep -E "clang|gcc|bg6_perf_engine" /nvme0n1-disk/infinity_x/patch_no_go.sh /nvme0n1-disk/infinity_x/inject_suite.sh
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode())
ssh.close()
