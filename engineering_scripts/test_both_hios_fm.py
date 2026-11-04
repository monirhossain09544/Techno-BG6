import subprocess
import time
import os
import xml.etree.ElementTree as ET

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ART = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

def test_apk(apk_name, shot_prefix):
    apk_path = os.path.join(SCRATCH, apk_name)
    subprocess.run(["adb", "uninstall", "com.transsion.filemanagerx"], capture_output=True)
    r = subprocess.run(["adb", "install", "-r", "-d", "-g", apk_path], capture_output=True, text=True)
    print(f"=== {apk_name} install ===", r.stdout.strip(), r.stderr.strip())
    if "Success" not in r.stdout:
        return
    subprocess.run(["adb", "shell", "appops", "set", "com.transsion.filemanagerx", "MANAGE_EXTERNAL_STORAGE", "allow"])
    subprocess.run(["adb", "logcat", "-c"])
    subprocess.run(["adb", "shell", "monkey", "-p", "com.transsion.filemanagerx", "-c", "android.intent.category.LAUNCHER", "1"], capture_output=True)
    time.sleep(3.5)

    # Check if AGREE dialog appears and tap AGREE so we see the real home UI!
    subprocess.run(["adb", "shell", "uiautomator", "dump", "/sdcard/fm_tmp.xml"], capture_output=True)
    subprocess.run(["adb", "pull", "/sdcard/fm_tmp.xml", os.path.join(SCRATCH, "fm_tmp.xml")], capture_output=True)
    if os.path.exists(os.path.join(SCRATCH, "fm_tmp.xml")):
        tree = ET.parse(os.path.join(SCRATCH, "fm_tmp.xml"))
        for node in tree.iter("node"):
            txt = node.attrib.get("text", "")
            b = node.attrib.get("bounds", "")
            if txt.upper() in ("AGREE", "ALLOW", "ACCEPT", "START", "CONTINUE"):
                import re
                m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
                if m:
                    cx = (int(m.group(1)) + int(m.group(3))) // 2
                    cy = (int(m.group(2)) + int(m.group(4))) // 2
                    print(f"Tapping {txt} at ({cx}, {cy})")
                    subprocess.run(["adb", "shell", "input", "tap", str(cx), str(cy)])
                    time.sleep(2.5)
                    break

    shot_path = os.path.join(ART, f"{shot_prefix}.png")
    subprocess.run(["adb", "shell", "screencap", "-p", f"/sdcard/{shot_prefix}.png"])
    subprocess.run(["adb", "pull", f"/sdcard/{shot_prefix}.png", shot_path], capture_output=True)
    log = subprocess.run(["adb", "logcat", "-d", "-s", "AndroidRuntime:E"], capture_output=True, text=True)
    print(f"=== {apk_name} crashes ===", log.stdout.strip() or "NONE (0 crashes!)")

test_apk("file-manager-3-3-20-143-release.apk", "fm_test_3_3_20")
test_apk("file-manager-17-0-0-104-release.apk", "fm_test_17_0_0")
