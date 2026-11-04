import sys, subprocess, time, re, xml.etree.ElementTree as ET

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

print("=== 1. CHECK ADB ROOT SETTING / PROPS ===")
for tbl in ["global", "secure", "system"]:
    out = sh(f"{ADB} shell settings list {tbl}")
    for l in out.splitlines():
        if "root" in l.lower() or "adb" in l.lower():
            print(f"  [{tbl}] {l}")

for l in sh(f"{ADB} shell getprop").splitlines():
    if "root" in l.lower() or "adb" in l.lower():
        print("  [prop]", l)

print("\n=== 2. TEST CONTACTS -> SETTINGS -> IMPORT/EXPORT CONTACTS ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am force-stop com.sh.smart.caller")
time.sleep(0.4)
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(1.8)

# Dump PeopleActivity UI to find Settings gear icon
sh(f"{ADB} shell uiautomator dump /sdcard/ui_people.xml")
xml1 = sh(f"{ADB} shell cat /sdcard/ui_people.xml")
if "<hierarchy" in xml1:
    root = ET.fromstring(xml1[xml1.index("<hierarchy"):])
    for n in root.iter("node"):
        rid = n.attrib.get("resource-id", "")
        desc = n.attrib.get("content-desc", "")
        txt = n.attrib.get("text", "")
        b = n.attrib.get("bounds", "")
        if any(k in (rid + desc + txt).lower() for k in ["setting", "menu", "more", "option", "right", "action"]):
            print("  People node:", rid, "|", desc, "|", txt, "|", b)

# Open ContactsPreferenceActivity / Settings directly or check activities in com.sh.smart.caller
pkgs = sh(f"{ADB} shell dumpsys package com.sh.smart.caller")
for line in pkgs.splitlines():
    if "import" in line.lower() or "sim" in line.lower() or "preference" in line.lower() or "settings" in line.lower():
        if "com." in line:
            print("  Pkg component:", line.strip()[:160])
