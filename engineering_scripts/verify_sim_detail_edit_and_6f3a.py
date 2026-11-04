import sys, subprocess, time, re, xml.etree.ElementTree as ET

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"
local_probe = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SimProbe.apk"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

print("=== 1. VERIFY TAPPING 'Anas Er Dadi' (SIM 1 CONTACT) & EDIT SCREEN ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am force-stop com.sh.smart.caller")
time.sleep(0.4)
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(2.0)

sh(f"{ADB} shell uiautomator dump /sdcard/ui_anas.xml")
x = sh(f"{ADB} shell cat /sdcard/ui_anas.xml")
anas_xy = None
if "<hierarchy" in x:
    root = ET.fromstring(x[x.index("<hierarchy"):])
    for n in root.iter("node"):
        txt = n.attrib.get("text", "").replace("\u200e", "").strip()
        if "Anas Er Dadi" in txt:
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", n.attrib.get("bounds", ""))
            if m:
                x1, y1, x2, y2 = map(int, m.groups())
                anas_xy = ((x1 + x2) // 2, (y1 + y2) // 2)
                break

print("Anas Er Dadi @", anas_xy)
sh(f"{ADB} logcat -c")
if anas_xy:
    sh(f"{ADB} shell input tap {anas_xy[0]} {anas_xy[1]}")
    time.sleep(2.0)
    sh(f"{ADB} shell screencap -p /sdcard/sc_anas_detail.png")
    sh(r"adb -s 1099738415003670 pull /sdcard/sc_anas_detail.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_anas_detail.png")

    # Also tap Edit icon (top right pencil ~ 487, 136 - let's find from XML!)
    sh(f"{ADB} shell uiautomator dump /sdcard/ui_detail.xml")
    xd = sh(f"{ADB} shell cat /sdcard/ui_detail.xml")
    if "<hierarchy" in xd:
        rd = ET.fromstring(xd[xd.index("<hierarchy"):])
        for n in rd.iter("node"):
            rid = n.attrib.get("resource-id", "")
            desc = n.attrib.get("content-desc", "")
            if "edit" in (rid + desc).lower():
                m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", n.attrib.get("bounds", ""))
                if m:
                    x1, y1, x2, y2 = map(int, m.groups())
                    print("Tapping Edit @", (x1+x2)//2, (y1+y2)//2)
                    sh(f"{ADB} shell input tap {(x1+x2)//2} {(y1+y2)//2}")
                    time.sleep(1.8)
                    sh(f"{ADB} shell screencap -p /sdcard/sc_anas_edit.png")
                    sh(r"adb -s 1099738415003670 pull /sdcard/sc_anas_edit.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_anas_edit.png")
                    break

for l in sh(f"{ADB} logcat -d").splitlines():
    if any(k in l.lower() for k in ["fatal exception", "invalid column", "contacteditor", "contactdetail"]):
        print(" ", l[:200])

print("\n=== 2. CHECK WHAT WAS ON DEVELOPER OPTIONS SCREEN ===")
sh(f"{ADB} shell settings put global development_settings_enabled 1")
sh(f"{ADB} shell am start -a android.settings.APPLICATION_DEVELOPMENT_SETTINGS")
time.sleep(1.8)
for step in range(4):
    sh(f"{ADB} shell uiautomator dump /sdcard/dev_s.xml")
    xs = sh(f"{ADB} shell cat /sdcard/dev_s.xml")
    if "<hierarchy" in xs:
        rs = ET.fromstring(xs[xs.index("<hierarchy"):])
        for n in rs.iter("node"):
            t = n.attrib.get("text", "").strip()
            if any(w in t.lower() for w in ["root", "debug", "usb"]):
                print(f"  [scroll {step}] '{t}' @ {n.attrib.get('bounds','')}")
    sh(f"{ADB} shell input swipe 360 1300 360 450 220")
    time.sleep(0.7)
