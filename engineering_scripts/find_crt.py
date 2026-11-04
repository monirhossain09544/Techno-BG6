import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
which aarch64-linux-gnu-gcc || true
ls -d /nvme0n1-disk/shunno_os/prebuilts/ndk/* /nvme0n1-disk/shunno_os/prebuilts/runtime/* 2>/dev/null || true
find /nvme0n1-disk/shunno_os/prebuilts/ndk /nvme0n1-disk/shunno_os/out -name "crtbegin_dynamic.o" 2>/dev/null | head -n 10
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
