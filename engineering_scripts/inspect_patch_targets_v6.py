import paramiko

REMOTE_PY = r'''import subprocess, os

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"
BASE3 = f"{WORK}/smali_classes3.dex"

if not os.path.exists(BASE3):
    subprocess.check_call(f"/usr/bin/baksmali d {WORK}/dex/classes3.dex -o {BASE3}", shell=True)

print("=== sz.smali ===")
for b in [BASE1, BASE2, BASE3]:
    if os.path.exists(f"{b}/sz.smali"):
        print(open(f"{b}/sz.smali").read())

print("=== a32.smali ===")
for b in [BASE1, BASE2, BASE3]:
    if os.path.exists(f"{b}/a32.smali"):
        print(open(f"{b}/a32.smali").read()[:2500])

print("=== p33.smali 540..end ===")
ls = open(f"{BASE2}/p33.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(539, len(ls))))

print("=== mc0.smali WhatsApp visibility & click ===")
out = subprocess.check_output(f"grep -rn -i 'whatsapp' {BASE1} {BASE2} {BASE3} || true", shell=True).decode()
print(out[:5000])

print("=== All sync1 / is_read_only in BASE1..BASE3 ===")
out2 = subprocess.check_output(f"grep -rn '\"sync1\"\\|\"is_read_only\"' {BASE1} {BASE2} {BASE3} || true", shell=True).decode()
print(out2)

print("=== Check kl6_root/system APKs ===")
apks = subprocess.check_output("find /nvme0n1-disk/hios14_rom/kl6_root/system -name '*.apk' 2>/dev/null | sort", shell=True).decode()
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
