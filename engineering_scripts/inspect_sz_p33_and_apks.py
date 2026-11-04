import paramiko

REMOTE_PY = r'''import subprocess, os

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"

print("=== e$a.smali 1..140 ===")
ls = open(f"{BASE1}/com/android/contacts/list/e$a.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(0, min(len(ls), 140))))

print("=== g.smali 230..265 ===")
ls = open(f"{BASE1}/com/android/contacts/list/g.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(229, min(len(ls), 265))))

print("=== p33.smali full ===")
ls = open(f"{BASE2}/p33.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(0, min(len(ls), 550))))

print("=== dialpadview/a.smali 13715..13870 ===")
ls = open(f"{BASE1}/com/android/dialer/dialpadview/a.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(13714, min(len(ls), 13870))))

print("=== All APKs in hios14_rom ===")
apks = subprocess.check_output("find /nvme0n1-disk/hios14_rom/kl6_root /nvme0n1-disk/hios14_rom/kl4_root -name '*.apk' 2>/dev/null | sort", shell=True).decode()
print(apks)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
