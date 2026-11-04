import paramiko

REMOTE_PY = r'''import subprocess, os

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"
BASE3 = f"{WORK}/smali_classes3.dex"

print("=== Callers of La32;->a ===")
print(subprocess.check_output(f"grep -rn 'La32;->a(' {BASE1} {BASE2} {BASE3} || true", shell=True).decode())

print("=== mc0.smali 18360..18565 ===")
ls = open(f"{BASE2}/mc0.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(18359, min(len(ls), 18565))))
print("=== mc0.smali Call Recordings search ===")
print(subprocess.check_output(f"grep -rn -i 'record' {BASE2}/mc0.smali | head -n 40 || true", shell=True).decode())

print("=== tv$b.smali 335..405 ===")
ls = open(f"{BASE1}/tv$b.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(334, min(len(ls), 405))))

print("=== RawContact.smali 345..385 ===")
ls = open(f"{BASE1}/com/android/contacts/model/RawContact.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(344, min(len(ls), 385))))

print("=== fx.smali 4280..4320 ===")
ls = open(f"{BASE3}/fx.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(4279, min(len(ls), 4320))))

print("=== Check SmartCaller AndroidManifest permissions & queries ===")
APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
aapt = subprocess.check_output("which aapt2 || find /nvme0n1-disk -name aapt2 2>/dev/null | head -n 1", shell=True).decode().strip()
print("aapt2:", aapt)
if aapt:
    print(subprocess.check_output(f"{aapt} dump permissions {APK}", shell=True).decode())

print("=== Check /nvme0n1-disk/hios14_rom contents ===")
print(subprocess.check_output("find /nvme0n1-disk/hios14_rom -maxdepth 4 -iname '*file*' -o -iname '*manager*' 2>/dev/null | head -n 40", shell=True).decode())
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
