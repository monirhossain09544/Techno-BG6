import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = r"""
find /nvme0n1-disk/ -name "*bg6*vendor*" -o -name "*vendor*bg6*" 2>/dev/null
df -h /nvme0n1-disk
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
