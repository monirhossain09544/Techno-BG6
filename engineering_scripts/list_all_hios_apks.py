import paramiko

REMOTE_PY = r'''import subprocess, os

for root in ["/nvme0n1-disk/hios14_rom/bg6_extras", "/nvme0n1-disk/hios14_rom/kl6_root", "/nvme0n1-disk/hios14_rom/kl4_root"]:
    print("===", root, "===")
    out = subprocess.check_output(f"find {root} -name '*.apk' 2>/dev/null || true", shell=True).decode().splitlines()
    for p in sorted(out):
        if "/overlay/" not in p:
            print(" ", p)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
