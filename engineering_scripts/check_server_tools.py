import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=15)

cmd = """
which java javac python3 gcc aarch64-linux-gnu-gcc clang apktool baksmali smali d8 zipalign 2>&1
ls -la /nvme0n1-disk/infinity_x/
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
