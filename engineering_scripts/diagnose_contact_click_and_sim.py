import subprocess
import time
import re
import xml.etree.ElementTree as ET
import os

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"

# 1. Reproduce "The contact doesn't exist" and capture FULL logcat (all levels!)
subprocess.run(["adb", "logcat", "-c"])
subprocess.run(["adb", "shell", "am", "start", "-n", "com.sh.smart.caller/com.android.contacts.activities.PeopleActivity"], capture_output=True)
time.sleep(2)

subprocess.run(["adb", "shell", "uiautomator", "dump", "/sdcard/c_tap.xml"], capture_output=True)
subprocess.run(["adb", "pull", "/sdcard/c_tap.xml", os.path.join(SCRATCH, "c_tap.xml")], capture_output=True)

tap_xy = None
if os.path.exists(os.path.join(SCRATCH, "c_tap.xml")):
    tree = ET.parse(os.path.join(SCRATCH, "c_tap.xml"))
    for node in tree.iter("node"):
        txt = node.attrib.get("text", "")
        b = node.attrib.get("bounds", "")
        if txt in ("Borsha Islam", "Abbu", "Ammu") or (txt and node.attrib.get("resource-id", "").endswith("cliv_name_textview")):
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
            if m:
                tap_xy = ((int(m.group(1)) + int(m.group(3))) // 2, (int(m.group(2)) + int(m.group(4))) // 2)
                print(f"Found contact {txt!r} at {tap_xy}")
                break

if not tap_xy:
    # Print all visible text nodes to find a contact row
    if os.path.exists(os.path.join(SCRATCH, "c_tap.xml")):
        tree = ET.parse(os.path.join(SCRATCH, "c_tap.xml"))
        for node in tree.iter("node"):
            txt = node.attrib.get("text", "")
            rid = node.attrib.get("resource-id", "")
            b = node.attrib.get("bounds", "")
            if txt:
                print("NODE:", txt, rid, b)
                if txt not in ("Contacts", "Search contacts", "My Profile", "My Groups", "Recents") and not tap_xy:
                    m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
                    if m and int(m.group(2)) > 400:
                        tap_xy = ((int(m.group(1)) + int(m.group(3))) // 2, (int(m.group(2)) + int(m.group(4))) // 2)

if tap_xy:
    print("Tapping contact at:", tap_xy)
    subprocess.run(["adb", "shell", "input", "tap", str(tap_xy[0]), str(tap_xy[1])])
    time.sleep(2.5)

log = subprocess.run(["adb", "logcat", "-d"], capture_output=True, text=True, errors="replace").stdout
print("=== RELEVANT LOGCAT LINES ===")
for line in log.splitlines():
    if any(k in line.lower() for k in ["contactloader", "sqlite", "invalid column", "doesn't exist", "not exist", "smart.caller", "contactsprovider", "exception", "raw_contacts", "indicate_phone", "sdn", "sync1"]):
        print(line)

# 2. Check SIM subscriptions and SIM contacts in content://icc/adn
print("\n=== CHECK ACTIVE SUBSCRIPTIONS & ICC ADN SIM CONTACTS ===")
subs = subprocess.run(["adb", "shell", "content", "query", "--uri", "content://telephony/siminfo", "--projection", "_id:icc_id:display_name:carrier_name:sim_slot_index"], capture_output=True, text=True, errors="replace").stdout
for line in subs.splitlines():
    if "sim_slot_index=0" in line or "sim_slot_index=1" in line:
        print("ACTIVE SIM:", line)

for uri in [
    "content://icc/adn",
    "content://icc/adn/subId/1",
    "content://icc/adn/subId/2",
    "content://icc/adn/subId/3",
    "content://icc/adn/subId/4",
]:
    r = subprocess.run(["adb", "shell", "content", "query", "--uri", uri], capture_output=True, text=True, errors="replace")
    lines = [l for l in r.stdout.splitlines() if l.strip()]
    print(f"URI {uri}: {len(lines)} rows")
    for l in lines[:5]:
        print("  ", l)
