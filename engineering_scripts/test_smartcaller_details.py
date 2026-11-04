import subprocess, time

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SER = "1099738415003670"
ART = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

def run(cmd):
    p = subprocess.run(cmd, capture_output=True, text=True)
    return p.stdout + p.stderr

run([ADB, "-s", SER, "logcat", "-c"])

# Tap on Borsha Islam in Contacts (around x=300, y=760 on 720x1612)
run([ADB, "-s", SER, "shell", "input tap 300 760"])
time.sleep(2.5)
run([ADB, "-s", SER, "shell", "screencap -p /sdcard/sc_v6_detail1.png"])
run([ADB, "-s", SER, "pull", "/sdcard/sc_v6_detail1.png", f"{ART}\\sc_v6_detail1.png"])

# Go back, switch to Recents tab (x=180, y=1560), tap (i) on 01758-550338 (x=660, y=420)
run([ADB, "-s", SER, "shell", "input keyevent 4"])
time.sleep(1.0)
run([ADB, "-s", SER, "shell", "input tap 180 1560"])
time.sleep(1.5)
run([ADB, "-s", SER, "shell", "input tap 660 420"])
time.sleep(2.5)
run([ADB, "-s", SER, "shell", "screencap -p /sdcard/sc_v6_calldetail1.png"])
run([ADB, "-s", SER, "pull", "/sdcard/sc_v6_calldetail1.png", f"{ART}\\sc_v6_calldetail1.png"])

logs = run([ADB, "-s", SER, "logcat", "-d", "-s", "AndroidRuntime:E"])
print("Crashes:\n", logs[-3000:] if logs else "NONE")
