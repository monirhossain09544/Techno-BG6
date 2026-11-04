import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
python3 -c '
import subprocess
out = subprocess.check_output(["/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r510928/bin/llvm-objdump", "-d", "/tmp/spd_dump.exe"]).decode()
lines = out.splitlines()
for i, l in enumerate(lines):
    if "40c800:" in l or "40c805:" in l or "40c810:" in l or "40c7f" in l:
        print("\\n".join(lines[i:i+180]))
        break
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
