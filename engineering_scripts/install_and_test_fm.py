import subprocess
import time
import os

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ARTIFACT_DIR = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

# Tap Install at (321, 844)
subprocess.run(["adb", "shell", "input", "tap", "321", "844"])
print("Tapped Install, waiting for com.transsion.filemanagerx...")

paths = []
for i in range(30):
    time.sleep(2)
    res = subprocess.run(["adb", "shell", "pm", "path", "com.transsion.filemanagerx"], capture_output=True, text=True)
    out = res.stdout.strip()
    if out:
        paths = [line.replace("package:", "").strip() for line in out.splitlines() if line.strip()]
        print(f"Installed! Paths ({len(paths)}):", paths)
        break

if not paths:
    raise RuntimeError("Install timed out!")

fm_dir = os.path.join(SCRATCH, "tecno_filemanager_apks")
os.makedirs(fm_dir, exist_ok=True)
for p in paths:
    fname = os.path.basename(p)
    subprocess.run(["adb", "pull", p, os.path.join(fm_dir, fname)], check=True)
    print("Pulled:", fname, os.path.getsize(os.path.join(fm_dir, fname)))

# Grant permissions and MANAGE_EXTERNAL_STORAGE so it opens cleanly and shows files
subprocess.run(["adb", "shell", "appops", "set", "com.transsion.filemanagerx", "MANAGE_EXTERNAL_STORAGE", "allow"])
for perm in [
    "android.permission.READ_EXTERNAL_STORAGE",
    "android.permission.WRITE_EXTERNAL_STORAGE",
    "android.permission.READ_MEDIA_IMAGES",
    "android.permission.READ_MEDIA_VIDEO",
    "android.permission.READ_MEDIA_AUDIO",
    "android.permission.POST_NOTIFICATIONS",
]:
    subprocess.run(["adb", "shell", "pm", "grant", "com.transsion.filemanagerx", perm], capture_output=True)

# Clear logcat, launch File Manager
subprocess.run(["adb", "logcat", "-c"])
subprocess.run(["adb", "shell", "monkey", "-p", "com.transsion.filemanagerx", "-c", "android.intent.category.LAUNCHER", "1"])
time.sleep(4)

# Dump UI to check if Terms/Agree dialog appears
subprocess.run(["adb", "shell", "uiautomator", "dump", "/sdcard/fm_ui.xml"])
subprocess.run(["adb", "pull", "/sdcard/fm_ui.xml", os.path.join(SCRATCH, "fm_ui.xml")])

import xml.etree.ElementTree as ET
if os.path.exists(os.path.join(SCRATCH, "fm_ui.xml")):
    tree = ET.parse(os.path.join(SCRATCH, "fm_ui.xml"))
    for node in tree.iter("node"):
        txt = node.attrib.get("text", "")
        bounds = node.attrib.get("bounds", "")
        if txt:
            print(f"FM UI: {txt!r} {bounds}")

subprocess.run(["adb", "shell", "screencap", "-p", "/sdcard/test_tecno_fm1.png"])
subprocess.run(["adb", "pull", "/sdcard/test_tecno_fm1.png", os.path.join(ARTIFACT_DIR, "test_tecno_fm1.png")])

log = subprocess.run(["adb", "logcat", "-d", "-s", "AndroidRuntime:E"], capture_output=True, text=True)
print("AndroidRuntime errors:\n", log.stdout)
