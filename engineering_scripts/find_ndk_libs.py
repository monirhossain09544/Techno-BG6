import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
find /nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/ -name "crtend_android.o" 2>/dev/null | grep arm64
find /nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/ -name "libc.so" 2>/dev/null | grep arm64 | head -n 10
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
