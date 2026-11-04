import paramiko

REMOTE_PY = r'''import subprocess, os, shutil

# Find baksmali / apktool
tools = subprocess.check_output("which baksmali smali apktool || find / -name '*baksmali*' 2>/dev/null || true", shell=True).decode()
print("TOOLS:", tools)

APK6 = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
print("=== Checking whatsapp strings in V6.0.1.123 SmartCaller ===")
wa = subprocess.check_output(f"unzip -p {APK6} 'classes*.dex' | strings | grep -i 'whatsapp' | sort -u | head -n 40", shell=True).decode()
print(wa)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
