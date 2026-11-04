import subprocess
import time
import xml.etree.ElementTree as ET
import os

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"

# 1. Quick check of tranfs.img header/strings for apk
tranfs = r"D:\Tecno_BG6_Full_ROM_Backup\tranfs.img"
if os.path.exists(tranfs):
    with open(tranfs, "rb") as f:
        head = f.read(4096)
    print("tranfs magic:", head[:64])

# 2. Check if com.transsion.filemanagerx is already installed on phone
res = subprocess.run(["adb", "shell", "pm", "path", "com.transsion.filemanagerx"], capture_output=True, text=True)
print("Existing pm path:", res.stdout.strip())

if not res.stdout.strip():
    # Wake phone & open Play Store to com.transsion.filemanagerx
    subprocess.run(["adb", "shell", "input", "keyevent", "KEYCODE_WAKEUP"])
    subprocess.run(["adb", "shell", "wm", "dismiss-keyguard"])
    subprocess.run([
        "adb", "shell", "am", "start",
        "-a", "android.intent.action.VIEW",
        "-d", "market://details?id=com.transsion.filemanagerx",
        "-p", "com.android.vending"
    ])
    time.sleep(5)
    subprocess.run(["adb", "shell", "uiautomator", "dump", "/sdcard/play_fm.xml"])
    subprocess.run(["adb", "pull", "/sdcard/play_fm.xml", os.path.join(SCRATCH, "play_fm.xml")])
    if os.path.exists(os.path.join(SCRATCH, "play_fm.xml")):
        tree = ET.parse(os.path.join(SCRATCH, "play_fm.xml"))
        for node in tree.iter("node"):
            txt = node.attrib.get("text", "")
            desc = node.attrib.get("content-desc", "")
            bounds = node.attrib.get("bounds", "")
            if txt or desc:
                print(f"TEXT={txt!r} DESC={desc!r} BOUNDS={bounds}")
