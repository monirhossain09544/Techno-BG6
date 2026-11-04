import paramiko

REMOTE_PY = r'''import subprocess, os

print("=== hios14_rom ls ===")
print(subprocess.check_output("ls -la /nvme0n1-disk/hios14_rom", shell=True).decode())

out = subprocess.check_output("find /nvme0n1-disk/hios14_rom -name '*.apk' 2>/dev/null || true", shell=True).decode().splitlines()
for p in sorted(out):
    low = p.lower()
    if any(k in low for k in ["call", "dial", "contact", "file", "note", "doc", "manager", "explorer", "smart"]):
        if os.path.exists(p):
            print("APK:", p, os.path.getsize(p))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
