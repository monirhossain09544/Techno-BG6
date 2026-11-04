import subprocess
import time

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"

for i in range(25):
    res = subprocess.run([ADB, "devices"], text=True, capture_output=True)
    lines = [l for l in res.stdout.strip().splitlines() if "1099738415003670" in l and "\tdevice" in l]
    if lines:
        p = subprocess.run(
            [ADB, "shell", "getprop sys.boot_completed; cmd display get-active-display-mode-at-start 0; dumpsys display | grep -E 'mActiveModeId|mDefaultModeId|mUserPreferredModeId'; logcat -d -b all | grep -iE 'SprdDrm::|setActiveConfig|getActiveConfig'"],
            text=True, capture_output=True
        )
        out = p.stdout.strip()
        print(f"[{i*3}s]\n{out}\n---", flush=True)
        if out.startswith("1"):
            break
    else:
        print(f"[{i*3}s] Rebooting...", flush=True)
    time.sleep(3)
