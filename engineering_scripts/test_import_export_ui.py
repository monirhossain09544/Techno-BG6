import sys, subprocess, time, re, xml.etree.ElementTree as ET

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} logcat -c")
print("Starting ContactsImportOrExportActivity...")
print(sh(f"{ADB} shell am start -a com.android.contacts.action.IMPORT_EXPORT -n com.sh.smart.caller/com.mediatek.contacts.activities.ContactsImportOrExportActivity"))
time.sleep(2.0)

sh(f"{ADB} shell screencap -p /sdcard/sc_import_export1.png")
sh(r"adb -s 1099738415003670 pull /sdcard/sc_import_export1.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_import_export1.png")

sh(f"{ADB} shell uiautomator dump /sdcard/ui_imp.xml")
xml1 = sh(f"{ADB} shell cat /sdcard/ui_imp.xml")
if "<hierarchy" in xml1:
    root = ET.fromstring(xml1[xml1.index("<hierarchy"):])
    for n in root.iter("node"):
        txt = n.attrib.get("text", "").strip()
        rid = n.attrib.get("resource-id", "")
        b = n.attrib.get("bounds", "")
        if txt:
            print(f"  UI Item: '{txt}' ({rid}) @ {b}")

print("\n--- Logcat from ContactsImportOrExportActivity ---")
log = sh(f"{ADB} logcat -d")
for line in log.splitlines():
    low = line.lower()
    if any(k in low for k in ["contactsapp", "import", "export", "sim", "phb", "account", "subinfo", "error", "exception"]):
        print(" ", line[:220])
