import sys, subprocess, time, re, xml.etree.ElementTree as ET
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"
local_probe = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SimProbe.apk"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

print("=== 1. SERVER: GREP StorageVolume->getPath & INSPECT ContactsImportOrExport ===")
c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, so, se = c.exec_command(r'''python3 -c '
import subprocess, os
WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
g = subprocess.run(f"grep -rn \"StorageVolume;->getPath\" {WORK}/smali_classes*", shell=True, capture_output=True, text=True).stdout
print("StorageVolume.getPath matches:\n", g)
for line in g.splitlines():
    if ":" in line:
        f, ln, _ = line.split(":", 2)
        ln = int(ln)
        ls = open(f).readlines()
        print(f"=== {f} @ {ln} ===")
        print("".join(f"{i+1}: {ls[i]}" for i in range(max(0, ln-15), min(len(ls), ln+15))))
' ''', timeout=60)
print(so.read().decode("utf-8", errors="replace"))
c.close()

print("=== 2. PHONE: ENABLE ROOTED DEBUGGING IN DEVELOPER OPTIONS & PROBE RAW SIM CHIP ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am start -a android.settings.APPLICATION_DEVELOPMENT_SETTINGS")
time.sleep(2.0)

def find_and_tap_text(target_sub):
    for _ in range(8):
        sh(f"{ADB} shell uiautomator dump /sdcard/dev_ui.xml")
        x = sh(f"{ADB} shell cat /sdcard/dev_ui.xml")
        if "<hierarchy" in x:
            root = ET.fromstring(x[x.index("<hierarchy"):])
            for n in root.iter("node"):
                t = n.attrib.get("text", "")
                if target_sub.lower() in t.lower():
                    m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", n.attrib.get("bounds", ""))
                    if m:
                        x1, y1, x2, y2 = map(int, m.groups())
                        cx, cy = (x1 + x2) // 2, (y1 + y2) // 2
                        print(f"Found '{t}' @ ({cx},{cy})")
                        sh(f"{ADB} shell input tap {cx} {cy}")
                        return True
        sh(f"{ADB} shell input swipe 360 1250 360 450 250")
        time.sleep(0.8)
    return False

found = find_and_tap_text("Rooted debugging")
time.sleep(1.0)
# Check if confirmation dialog appeared ("Allow" / "OK")
sh(f"{ADB} shell uiautomator dump /sdcard/dev_ui2.xml")
x2 = sh(f"{ADB} shell cat /sdcard/dev_ui2.xml")
if "<hierarchy" in x2:
    root2 = ET.fromstring(x2[x2.index("<hierarchy"):])
    for n in root2.iter("node"):
        t = n.attrib.get("text", "").strip()
        if t.lower() in ("allow", "ok", "enable", "turn on"):
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", n.attrib.get("bounds", ""))
            if m:
                x1, y1, x2, y2 = map(int, m.groups())
                sh(f"{ADB} shell input tap {(x1+x2)//2} {(y1+y2)//2}")
                time.sleep(0.8)

print("Testing adb root:", sh(f"{ADB} root"))
time.sleep(2.0)
sh(f"{ADB} wait-for-device")
print("Current ADB id:", sh(f"{ADB} shell id"))
