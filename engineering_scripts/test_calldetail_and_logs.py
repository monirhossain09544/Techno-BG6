import subprocess, time, urllib.request

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SER = "1099738415003670"
ART = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

def run(cmd):
    p = subprocess.run(cmd, capture_output=True, text=True)
    return p.stdout + p.stderr

run([ADB, "-s", SER, "logcat", "-c"])
run([ADB, "-s", SER, "shell", "am start -n com.sh.smart.caller/com.android.dialer.main.impl.MainActivity"])
time.sleep(2.5)
# Tap (i) icon next to 01758-550338: in 720x1612 screenshot, (i) is around x=660, y=428
run([ADB, "-s", SER, "shell", "input tap 660 428"])
time.sleep(2.5)
run([ADB, "-s", SER, "shell", "screencap -p /sdcard/sc_v6_calldetail2.png"])
run([ADB, "-s", SER, "pull", "/sdcard/sc_v6_calldetail2.png", f"{ART}\\sc_v6_calldetail2.png"])

logs = run([ADB, "-s", SER, "logcat", "-d"])
for line in logs.splitlines():
    if any(k in line for k in ["IllegalArgumentException", "Invalid column", "ContactDetail", "FATAL", "SmartCaller", "AndroidRuntime"]):
        print(line[:200])
