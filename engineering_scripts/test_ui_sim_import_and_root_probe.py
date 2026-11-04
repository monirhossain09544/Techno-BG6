import sys, subprocess, time, re, xml.etree.ElementTree as ET

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

def dump_nodes():
    sh(f"{ADB} shell uiautomator dump /sdcard/ui_cur.xml")
    x = sh(f"{ADB} shell cat /sdcard/ui_cur.xml")
    if "<hierarchy" not in x:
        return []
    root = ET.fromstring(x[x.index("<hierarchy"):])
    out = []
    for n in root.iter("node"):
        txt = n.attrib.get("text", "").strip()
        rid = n.attrib.get("resource-id", "")
        desc = n.attrib.get("content-desc", "")
        b = n.attrib.get("bounds", "")
        m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
        if m:
            x1, y1, x2, y2 = map(int, m.groups())
            out.append((txt, rid, desc, (x1 + x2) // 2, (y1 + y2) // 2, b))
    return out

sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am force-stop com.sh.smart.caller")
time.sleep(0.5)
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(2.0)

nodes = dump_nodes()
print("--- PeopleActivity top nodes ---")
settings_xy = None
for txt, rid, desc, cx, cy, b in nodes:
    if cy < 300:
        print(f"  txt='{txt}' rid='{rid}' desc='{desc}' @ ({cx},{cy}) {b}")
    if "setting" in (rid + desc + txt).lower() or (cy < 240 and cx > 600):
        settings_xy = (cx, cy)

print("Tapping Settings @", settings_xy)
if settings_xy:
    sh(f"{ADB} shell input tap {settings_xy[0]} {settings_xy[1]}")
    time.sleep(1.5)

nodes2 = dump_nodes()
imp_xy = None
for txt, rid, desc, cx, cy, b in nodes2:
    if txt:
        print(f"  Settings item: '{txt}' @ ({cx},{cy})")
    if "import/export" in txt.lower():
        imp_xy = (cx, cy)

if not imp_xy:
    sh(f"{ADB} shell input swipe 360 1300 360 500 250")
    time.sleep(1.0)
    for txt, rid, desc, cx, cy, b in dump_nodes():
        if "import/export" in txt.lower():
            imp_xy = (cx, cy)

print("Tapping Import/Export @", imp_xy)
sh(f"{ADB} logcat -c")
if imp_xy:
    sh(f"{ADB} shell input tap {imp_xy[0]} {imp_xy[1]}")
    time.sleep(1.8)

sh(f"{ADB} shell screencap -p /sdcard/sc_imp_screen1.png")
sh(r"adb -s 1099738415003670 pull /sdcard/sc_imp_screen1.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_imp_screen1.png")

print("--- Import/Export screen nodes ---")
imp_from_sim_xy = None
for txt, rid, desc, cx, cy, b in dump_nodes():
    if txt or desc:
        print(f"  ImpNode: txt='{txt}' desc='{desc}' rid='{rid}' @ ({cx},{cy})")
    if "sim" in txt.lower() or "import" in txt.lower():
        if not imp_from_sim_xy and "export" not in txt.lower():
            imp_from_sim_xy = (txt, cx, cy)

print("Candidate SIM import button:", imp_from_sim_xy)
if imp_from_sim_xy:
    sh(f"{ADB} shell input tap {imp_from_sim_xy[1]} {imp_from_sim_xy[2]}")
    time.sleep(1.8)
    sh(f"{ADB} shell screencap -p /sdcard/sc_imp_screen2.png")
    sh(r"adb -s 1099738415003670 pull /sdcard/sc_imp_screen2.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_imp_screen2.png")
    print("--- Screen 2 nodes ---")
    for txt, rid, desc, cx, cy, b in dump_nodes():
        if txt or desc:
            print(f"  S2Node: txt='{txt}' desc='{desc}' rid='{rid}' @ ({cx},{cy})")

print("\n--- Logcat during Import/Export navigation ---")
for line in sh(f"{ADB} logcat -d").splitlines():
    low = line.lower()
    if any(k in low for k in ["contactsapp", "import", "sim", "phb", "subinfo", "error", "exception", "activitytaskmanager"]):
        print(" ", line[:220])
