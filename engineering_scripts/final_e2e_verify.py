import sys, subprocess, time, re, xml.etree.ElementTree as ET

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

print("=== 1. VERIFY DIALPAD + WHATSAPP BUTTON ON FINAL APK ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.dialer.main.impl.MainActivity")
time.sleep(2.0)

# Tap dialpad FAB if needed
sh(f"{ADB} shell uiautomator dump /sdcard/ui_dial.xml")
xd = sh(f"{ADB} shell cat /sdcard/ui_dial.xml")
if "<hierarchy" in xd:
    rd = ET.fromstring(xd[xd.index("<hierarchy"):])
    for n in rd.iter("node"):
        rid = n.attrib.get("resource-id", "")
        if "fab" in rid.lower() or "dialpad_floating" in rid.lower():
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", n.attrib.get("bounds", ""))
            if m:
                x1, y1, x2, y2 = map(int, m.groups())
                sh(f"{ADB} shell input tap {(x1+x2)//2} {(y1+y2)//2}")
                time.sleep(1.2)
                break

# Type 017 to show Dual-SIM + WhatsApp button
sh(f"{ADB} shell input text 017")
time.sleep(1.0)
sh(f"{ADB} shell screencap -p /sdcard/sc_final_dialpad_check.png")
sh(r"adb -s 1099738415003670 pull /sdcard/sc_final_dialpad_check.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_final_dialpad_check.png")

print("=== 2. CHECK ALL CONTACTS CURRENTLY IN CONTACTS PROVIDER ===")
out = sh(f"{ADB} shell content query --uri content://com.android.contacts/contacts --projection _id:display_name:has_phone_number")
for l in out.splitlines():
    if l.strip():
        print(" ", l[:160])

# Return phone screen cleanly to Contacts list
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(1.0)
sh(f"{ADB} shell screencap -p /sdcard/sc_final_contacts_ready.png")
sh(r"adb -s 1099738415003670 pull /sdcard/sc_final_contacts_ready.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_final_contacts_ready.png")
print("FINAL LIVE CHECK DONE!")
