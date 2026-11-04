import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
echo "=== CHECK COMPILERS ==="
which aarch64-linux-gnu-gcc aarch64-linux-gnu-g++ clang clang++ 2>/dev/null
ls -la /nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r498229b/bin/clang++ 2>/dev/null
ls -la /nvme0n1-disk/shunno_os/prebuilts/gcc/linux-x86/aarch64/ 2>/dev/null
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
