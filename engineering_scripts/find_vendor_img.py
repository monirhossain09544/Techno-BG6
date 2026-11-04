import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
find /nvme0n1-disk/ -maxdepth 3 -name "*vendor*" -o -name "*super*" -o -name "*bg6*" 2>/dev/null
ls -la /nvme0n1-disk/bg6_device/ /nvme0n1-disk/hios14_rom/ 2>/dev/null
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
