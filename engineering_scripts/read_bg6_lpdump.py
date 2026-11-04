import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

_, stdout, stderr = ssh.exec_command("head -n 60 /nvme0n1-disk/bg6_device/bg6_fstab.txt")
raw = stdout.read()
try:
    print(raw.decode("utf-8"))
except:
    print(raw.decode("utf-16", errors="ignore"))
ssh.close()
