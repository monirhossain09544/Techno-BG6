import paramiko

REMOTE_PY = r'''import subprocess, os

# 1. Check where "sync1" appears in both SmartCaller versions
for label, apk in [
    ("BG6_V5.5", "/nvme0n1-disk/hios14_rom/kl4_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"),
    ("KL6_V6.0", "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"),
]:
    out = subprocess.check_output(f"unzip -p {apk} 'classes*.dex' | strings | grep -E '^sync[1-4]$|^account_type$' | sort | uniq -c", shell=True).decode()
    print(f"=== {label} sync strings ===")
    print(out)

# 2. Search entire /nvme0n1-disk for any Transsion FileManager APK if present
print("=== Searching /nvme0n1-disk for filemanager / explorer APKs ===")
fm = subprocess.check_output("find /nvme0n1-disk -iname '*file*apk*' 2>/dev/null || true", shell=True).decode()
print(fm)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
