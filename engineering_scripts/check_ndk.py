import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
ls -la /nvme0n1-disk/shunno_os/out/soong/ndk/ 2>/dev/null
ls -la /nvme0n1-disk/shunno_os/prebuilts/ndk/ 2>/dev/null
find /nvme0n1-disk/shunno_os/prebuilts/ndk/ -maxdepth 4 -name "sysroot" 2>/dev/null
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
