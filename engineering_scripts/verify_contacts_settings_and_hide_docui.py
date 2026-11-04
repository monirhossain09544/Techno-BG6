import subprocess
import time
import os
import xml.etree.ElementTree as ET
import re

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ART = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

# 1. Disable stock DocumentsUI LauncherActivity icon live (keep SAF picker intact!)
# Check if su / phh root or pm disable-user works for component
for cmd in [
    ["adb", "shell", "su", "0", "pm", "disable", "com.android.documentsui/com.android.documentsui.LauncherActivity"],
    ["adb", "shell", "pm", "disable-user", "--user", "0", "com.android.documentsui/com.android.documentsui.LauncherActivity"],
]:
    r = subprocess.run(cmd, capture_output=True, text=True)
    print("CMD:", " ".join(cmd), "->", r.stdout.strip(), r.stderr.strip())
    if "disabled" in r.stdout.lower():
        break

# Also ensure stock dialer & contacts remain disabled
subprocess.run(["adb", "shell", "pm", "disable-user", "--user", "0", "com.android.dialer"], capture_output=True)
subprocess.run(["adb", "shell", "pm", "disable-user", "--user", "0", "com.android.contacts"], capture_output=True)

# 2. Launch Contacts activity in SmartCaller and test Contacts Settings + viewing a contact
subprocess.run(["adb", "logcat", "-c"])
subprocess.run(["adb", "shell", "am", "start", "-n", "com.sh.smart.caller/com.android.contacts.activities.PeopleActivity"], capture_output=True)
time.sleep(2.5)

subprocess.run(["adb", "shell", "uiautomator", "dump", "/sdcard/sc_contacts_ui.xml"], capture_output=True)
subprocess.run(["adb", "pull", "/sdcard/sc_contacts_ui.xml", os.path.join(SCRATCH, "sc_contacts_ui.xml")], capture_output=True)

settings_xy = None
contact_xy = None
if os.path.exists(os.path.join(SCRATCH, "sc_contacts_ui.xml")):
    tree = ET.parse(os.path.join(SCRATCH, "sc_contacts_ui.xml"))
    for node in tree.iter("node"):
        txt = node.attrib.get("text", "")
        desc = node.attrib.get("content-desc", "")
        rid = node.attrib.get("resource-id", "")
        b = node.attrib.get("bounds", "")
        m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
        if not m:
            continue
        cx, cy = (int(m.group(1)) + int(m.group(3))) // 2, (int(m.group(2)) + int(m.group(4))) // 2
        if "setting" in desc.lower() or "setting" in rid.lower() or "menu" in rid.lower():
            print("Candidate settings node:", txt, desc, rid, b)
            settings_xy = (cx, cy)
        if txt == "Borsha Islam":
            contact_xy = (cx, cy)

if contact_xy:
    print("Tapping contact Borsha Islam at", contact_xy)
    subprocess.run(["adb", "shell", "input", "tap", str(contact_xy[0]), str(contact_xy[1])])
    time.sleep(2)
    subprocess.run(["adb", "shell", "screencap", "-p", "/sdcard/sc_v6_contact_view.png"])
    subprocess.run(["adb", "pull", "/sdcard/sc_v6_contact_view.png", os.path.join(ART, "sc_v6_contact_view.png")], capture_output=True)
    subprocess.run(["adb", "shell", "input", "keyevent", "KEYCODE_BACK"])
    time.sleep(1.5)

if settings_xy:
    print("Tapping Contacts Settings at", settings_xy)
    subprocess.run(["adb", "shell", "input", "tap", str(settings_xy[0]), str(settings_xy[1])])
    time.sleep(2)
    subprocess.run(["adb", "shell", "screencap", "-p", "/sdcard/sc_v6_contacts_settings.png"])
    subprocess.run(["adb", "pull", "/sdcard/sc_v6_contacts_settings.png", os.path.join(ART, "sc_v6_contacts_settings.png")], capture_output=True)

log = subprocess.run(["adb", "logcat", "-d", "-s", "AndroidRuntime:E"], capture_output=True, text=True)
print("AndroidRuntime errors:", log.stdout.strip() or "NONE (0 crashes!)")
