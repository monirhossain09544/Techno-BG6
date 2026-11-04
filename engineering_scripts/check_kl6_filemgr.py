import paramiko

REMOTE_PY = r'''import subprocess

print("=== KL6 zip contents ===")
print(subprocess.check_output("unzip -l /nvme0n1-disk/hios14_rom/KL6_Full_HiOS14_5.zip | head -n 60", shell=True).decode())

print("=== strings in kl6 system_a.img for apk ===")
print(subprocess.check_output("strings /nvme0n1-disk/hios14_rom/kl6_parts/system_a.img | grep -iE 'file|note|manager' | grep -i '\\.apk' | sort -u | head -n 40 || true", shell=True).decode())
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
