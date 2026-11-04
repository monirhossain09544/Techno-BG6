import sys, subprocess, time, re, xml.etree.ElementTree as ET
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace").stdout

print("=== 1. LIVE PHONE REPRO (REAL CONTACT) ===")
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(1.5)
sh(f"{ADB} shell input keyevent KEYCODE_BACK")
time.sleep(0.5)
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(1.5)

sh(f"{ADB} shell uiautomator dump /sdcard/contacts_ui.xml")
xml_txt = sh(f"{ADB} shell cat /sdcard/contacts_ui.xml")

candidates = []
if "<hierarchy" in xml_txt:
    xml_clean = xml_txt[xml_txt.index("<hierarchy"):]
    root = ET.fromstring(xml_clean)
    for node in root.iter("node"):
        txt = node.attrib.get("text", "").replace("\u200e", "").strip()
        res = node.attrib.get("resource-id", "")
        b = node.attrib.get("bounds", "")
        if "cliv_name_textview" in res and "My Profile" not in txt and txt:
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
            if m:
                x1, y1, x2, y2 = map(int, m.groups())
                candidates.append((txt, (x1 + x2) // 2, (y1 + y2) // 2))

print("Real contact candidates:", candidates)
sh(f"{ADB} logcat -c")
if candidates:
    name, tx, ty = candidates[0]
    print(f"Tapping {name} at ({tx}, {ty})...")
    sh(f"{ADB} shell input tap {tx} {ty}")
    time.sleep(2.0)

log = sh(f"{ADB} logcat -d")
print("--- Relevant Logcat after tapping real contact ---")
for line in log.splitlines():
    low = line.lower()
    if any(k in low for k in ["contact", "smart.caller", "toast", "exception", "error", "quickcontact", "illegal", "sqlite", "activitytaskmanager", "notfound", "exist", "ra0", "loader"]):
        print(line[:240])

print("\n--- Checking active subIds & radio IccProvider logs ---")
print("telephony.db siminfo:")
print(sh(f'{ADB} shell su -c "sqlite3 /data/user_de/0/com.android.providers.telephony/databases/telephony.db \'SELECT _id, sim_id, display_name, carrier_name, number FROM siminfo WHERE sim_id >= 0;\'"'))

sh(f"{ADB} logcat -b all -c")
print("Querying subId 1 and subId 2 as root & checking radio logs:")
for sid in ["1", "2", "3", "4", "5", "6"]:
    res = sh(f'{ADB} shell su -c "content query --uri content://icc/adn/subId/{sid}"')
    lines = [l for l in res.splitlines() if l.strip()]
    print(f"subId/{sid}: {len(lines)} rows -> {lines[:5]}")

rlog = sh(f"{ADB} logcat -b radio -d")
print("--- Radio logcat (IccProvider / ADN / PBR / USIM) ---")
for line in rlog.splitlines():
    low = line.lower()
    if any(k in low for k in ["icc", "adn", "pbr", "sim", "phb", "pb", "usim", "ef_"]):
        print(line[:240])

print("\n=== 2. SERVER SMALI INSPECTION ===")
REMOTE_PY = r'''import os, subprocess

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"

aapt2 = subprocess.check_output("which aapt2 || find /nvme0n1-disk/shunno_os/prebuilts -name aapt2 | head -n 1", shell=True).decode().strip()
out2 = subprocess.run(f"{aapt2} dump resources {WORK}/SmartCaller_V6_A16.apk | grep -B2 -A2 -i \"doesn't exist\"", shell=True, capture_output=True, text=True).stdout
print("aapt2 resource match:\n", out2[:2000])

for d in ["smali_classes.dex", "smali_classes2.dex", "smali_classes3.dex"]:
    p = f"{WORK}/{d}/oy1.smali"
    if os.path.exists(p):
        print(f"=== FOUND {p} ===")
        print(open(p).read())

cols = ["indicate_phone_or_sim_contact", "index_in_sim", "is_sdn_contact", "Loy1;->"]
for c in cols:
    print(f"--- Grep {c} ---")
    g = subprocess.run(f"grep -rn '{c}' {WORK}/smali_classes*", shell=True, capture_output=True, text=True).stdout
    print(g[:3500])
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
