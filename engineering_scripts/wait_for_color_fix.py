import subprocess
import time

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"

for i in range(25):
    res = subprocess.run([ADB, "devices"], text=True, capture_output=True)
    lines = [l for l in res.stdout.strip().splitlines() if "1099738415003670" in l and "\tdevice" in l]
    if lines:
        p = subprocess.run(
            [ADB, "shell", "getprop sys.boot_completed; getprop persist.sys.phh.unisoc_color_transform_workaround; dmesg | grep -iE 'dpu_cm_set|dpu_modeset|sprd_oled'"],
            text=True, capture_output=True
        )
        out = p.stdout.strip()
        print(f"[{i*3}s]\n{out}\n---", flush=True)
        if out.startswith("1"):
            subprocess.run([ADB, "shell", "input keyevent KEYCODE_WAKEUP"], check=False)
            break
    else:
        print(f"[{i*3}s] Rebooting...", flush=True)
    time.sleep(3)
