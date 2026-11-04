import paramiko

REMOTE_PY = r'''import subprocess, os

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"

# Check if there are other dex files
print("DEX files:", sorted(os.listdir(f"{WORK}/dex")))
for d in sorted(os.listdir(f"{WORK}/dex")):
    dp = f"{WORK}/dex/{d}"
    for col in ["is_sdn_contact", "indicate_phone_or_sim_contact", "index_in_sim", "is_read_only", "tran_whats_app_setting", "com.whatsapp"]:
        c = int(subprocess.check_output(f"strings {dp} | grep -c '{col}' || true", shell=True).decode().strip())
        if c:
            print(f"  {d}: {col}={c}")

print("\n=== Non-AOSP column grep in smali_classes* ===")
out = subprocess.check_output(f"grep -rn 'is_sdn_contact\\|indicate_phone_or_sim_contact\\|index_in_sim\\|\"is_read_only\"' {BASE1} {BASE2} || true", shell=True).decode()
print(out)

print("\n=== e$a.smali 115..195 ===")
ls = open(f"{BASE1}/com/android/contacts/list/e$a.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(114, min(len(ls), 195))))

print("\n=== gt2.smali 610..660 & 760..810 ===")
ls = open(f"{BASE2}/gt2.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(609, min(len(ls), 660))))
print("---")
print("".join(f"{i+1}: {ls[i]}" for i in range(759, min(len(ls), 810))))

print("\n=== oy1.smali all methods ===")
ls = open(f"{BASE2}/oy1.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(0, len(ls))))

print("\n=== p33 / WhatsApp package references ===")
out_wa = subprocess.check_output(f"grep -rn 'com\\.whatsapp\\|Lp33;' {BASE1} {BASE2} || true", shell=True).decode()
print(out_wa[:4000])

print("\n=== Check FileManager APKs on server ===")
fm = subprocess.check_output("find /nvme0n1-disk -iname '*filemanager*' -o -iname '*files*.apk' 2>/dev/null | head -n 40", shell=True).decode()
print(fm)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=90)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("ERR:", err)
c.close()
