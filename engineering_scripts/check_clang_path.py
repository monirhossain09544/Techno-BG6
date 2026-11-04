import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
find /nvme0n1-disk/shunno_os/prebuilts/clang -name "aarch64-linux-android*-clang" 2>/dev/null | head -n 10
ls -la /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/d8
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode())
ssh.close()
