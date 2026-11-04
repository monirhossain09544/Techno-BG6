import sys, subprocess
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace").stdout

print("=== 1. CHECK ROOT & ACCOUNTS & CONTACTS DB ON PHONE ===")
print("id:", sh(f"{ADB} shell id").strip())
print("which su:", sh(f"{ADB} shell which su").strip())
print("adb root test:", sh(f"{ADB} root").strip())
print("id after adb root:", sh(f"{ADB} shell id").strip())

print("--- Accounts on device ---")
acc = sh(f"{ADB} shell dumpsys account")
for line in acc.splitlines():
    if "Account {" in line or "type=" in line:
        print(" ", line.strip()[:180])

print("--- Raw contacts summary ---")
rc = sh(f"{ADB} shell content query --uri content://com.android.contacts/raw_contacts --projection _id:account_name:account_type:display_name:deleted")
for line in rc.splitlines():
    if line.strip():
        print(" ", line[:180])

print("\n=== 2. SERVER: INSPECT tv.smali, ContactsProvider2, ra0$a, m22, oz2, ft2 ===")
REMOTE_PY = r'''import subprocess, os

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"

# 1. Check ContactsProvider2.java for is_read_only / raw_contact_is_read_only
cp2 = "/nvme0n1-disk/shunno_os/packages/providers/ContactsProvider/src/com/android/providers/contacts/ContactsProvider2.java"
if os.path.exists(cp2):
    out = subprocess.run(f"grep -n 'IS_READ_ONLY' {cp2} | head -n 40", shell=True, capture_output=True, text=True).stdout
    print("--- ContactsProvider2 IS_READ_ONLY columns ---\n", out)

# 2. Check where Ltv$b;->b is referenced and what column indices tv.smali reads around 62/63 (0x3e, 0x3f, 0x40)
g = subprocess.run(f"grep -rn 'Ltv\\$b;' {WORK}/smali_classes*", shell=True, capture_output=True, text=True).stdout
print("--- Grep Ltv$b; ---\n", g)

tv_lines = open(f"{WORK}/smali_classes.dex/tv.smali").readlines()
for idx, line in enumerate(tv_lines):
    if "0x3e" in line or "0x3f" in line or "0x40" in line or "Ltv$b;" in line or "Lsz;->a" in line or "Loy1;" in line:
        start = max(0, idx - 5)
        end = min(len(tv_lines), idx + 18)
        print(f"--- tv.smali around line {idx+1} ---")
        print("".join(f"{i+1}: {tv_lines[i]}" for i in range(start, end)))

# 3. Check RawContact.smali around line 362, ra0$a.smali around 459 & 614, m22.smali around 679
for path, centers in [
    (f"{WORK}/smali_classes.dex/com/android/contacts/model/RawContact.smali", [362]),
    (f"{WORK}/smali_classes2.dex/ra0$a.smali", [459, 614, 641]),
    (f"{WORK}/smali_classes2.dex/m22.smali", [679]),
]:
    lines = open(path).readlines()
    for c in centers:
        s = max(0, c - 25)
        e = min(len(lines), c + 35)
        print(f"=== {os.path.basename(path)} around {c} ===")
        print("".join(f"{i+1}: {lines[i]}" for i in range(s, e)))

# 4. Check ft2.smali (SIM contact reader) and oz2.smali (SIM contact importer) around 1532, 1569
ft2_lines = open(f"{WORK}/smali_classes.dex/ft2.smali").readlines()
print("=== ft2.smali (first 160 lines) ===")
print("".join(f"{i+1}: {ft2_lines[i]}" for i in range(min(160, len(ft2_lines)))))

oz2_lines = open(f"{WORK}/smali_classes2.dex/oz2.smali").readlines()
for c in [1532, 1569]:
    s = max(0, c - 25)
    e = min(len(oz2_lines), c + 35)
    print(f"=== oz2.smali around {c} ===")
    print("".join(f"{i+1}: {oz2_lines[i]}" for i in range(s, e)))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
c.close()
