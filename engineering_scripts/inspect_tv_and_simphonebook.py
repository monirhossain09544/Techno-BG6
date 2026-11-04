import sys, subprocess
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace").stdout

print("=== 1. PHONE SIMPHONEBOOK & RADIO LOGS (NO SU) ===")
sh(f"{ADB} logcat -b all -c")

uris = [
    "content://com.android.simphonebook/elementary_files",
    "content://com.android.simphonebook/subid/1/adn",
    "content://com.android.simphonebook/subid/2/adn",
    "content://com.android.simphonebook/subid/3/adn",
    "content://com.android.simphonebook/subid/4/adn",
    "content://icc/adn/subId/1",
    "content://icc/adn/subId/2",
    "content://icc/sdn/subId/1",
    "content://icc/sdn/subId/2",
]
for u in uris:
    out = sh(f"{ADB} shell content query --uri {u}")
    lines = [l for l in out.splitlines() if l.strip()]
    print(f"URI {u} -> {len(lines)} lines")
    for l in lines[:15]:
        print("  ", l[:200])

print("\n--- Radio Logcat after ICC & SimPhonebook queries ---")
rlog = sh(f"{ADB} logcat -b radio -d")
for line in rlog.splitlines()[-120:]:
    print(line[:230])

print("\n--- Active SIM subscriptions from dumpsys isub ---")
isub = sh(f"{ADB} shell dumpsys isub")
for line in isub.splitlines():
    if any(k in line.lower() for k in ["subid", "slot", "active", "teletalk", "robi", "grameen", "banglalink", "airtel", "iccid", "displayname"]):
        print(line[:220])

print("\n=== 2. SERVER SMALI: tv.smali, is_read_only, AND SIM CONTACTS ===")
REMOTE_PY = r'''import os, subprocess, glob

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"

print("--- Grep is_read_only across smali ---")
g = subprocess.run(f"grep -rn '\"is_read_only\"' {WORK}/smali_classes*", shell=True, capture_output=True, text=True).stdout
print(g)

print("--- All tv*.smali files ---")
for p in sorted(glob.glob(f"{WORK}/smali_classes*/tv*.smali")):
    print("FILE:", p, "lines:", sum(1 for _ in open(p)))

for p in sorted(glob.glob(f"{WORK}/smali_classes.dex/tv*.smali")):
    print(f"\n=== {p} ===")
    txt = open(p).read()
    print(txt[:12000])

print("\n--- Grep PhbInfoUtils & icc/adn & simphonebook ---")
g2 = subprocess.run(f"grep -rn -E 'content://icc|simphonebook|PhbInfoUtils' {WORK}/smali_classes*", shell=True, capture_output=True, text=True).stdout
print(g2[:5000])
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
