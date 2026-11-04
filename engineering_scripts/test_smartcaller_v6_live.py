import subprocess, time

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SER = "1099738415003670"
APK = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SmartCaller_V6_A16.apk"
ART = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

def run(cmd):
    p = subprocess.run(cmd, capture_output=True, text=True)
    return p.stdout + p.stderr

print("Uninstalling old SmartCaller...")
print(run([ADB, "-s", SER, "uninstall", "com.sh.smart.caller"]))

print("Installing SmartCaller_V6_A16.apk...")
print(run([ADB, "-s", SER, "install", "-r", "-d", "-g", APK]))

# Set default dialer role so SmartCaller has full dialer rights
print(run([ADB, "-s", SER, "shell", "cmd role add-role-holder android.app.role.DIALER com.sh.smart.caller"]))
print(run([ADB, "-s", SER, "shell", "settings put system tran_whats_app_setting 1"]))
print(run([ADB, "-s", SER, "logcat", "-c"]))

print("Launching Phone (MainActivity)...")
print(run([ADB, "-s", SER, "shell", "am start -n com.sh.smart.caller/com.android.dialer.main.impl.MainActivity"]))
time.sleep(3.5)
run([ADB, "-s", SER, "shell", "screencap -p /sdcard/sc_v6_phone1.png"])
run([ADB, "-s", SER, "pull", "/sdcard/sc_v6_phone1.png", f"{ART}\\sc_v6_phone1.png"])

print("Launching Contacts (ContactMainActivity)...")
print(run([ADB, "-s", SER, "shell", "am start -n com.sh.smart.caller/com.android.dialer.ContactMainActivity"]))
time.sleep(3.0)
run([ADB, "-s", SER, "shell", "screencap -p /sdcard/sc_v6_contacts1.png"])
run([ADB, "-s", SER, "pull", "/sdcard/sc_v6_contacts1.png", f"{ART}\\sc_v6_contacts1.png"])

print("Checking logcat for crashes...")
logs = run([ADB, "-s", SER, "logcat", "-d", "-s", "AndroidRuntime:E"])
print("Crashes:\n", logs[-2000:] if logs else "NONE")
