import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
echo "=== CHECK HOST TOOLS ==="
ls -la /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/aapt2 /nvme0n1-disk/shunno_os/out/host/linux-x86/bin/apksigner /nvme0n1-disk/shunno_os/out/host/linux-x86/framework/signapk.jar 2>/dev/null
which apktool aapt2 java clang++ 2>/dev/null
find /nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/ -maxdepth 3 -name "aarch64-linux-android*-clang++" 2>/dev/null
ls -la /nvme0n1-disk/shunno_os/build/make/target/product/security/platform.* 2>/dev/null
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
