import subprocess
import time

print("Waiting for TECNO-BG6 (1099738415003670) on ADB or Fastboot...", flush=True)
for i in range(45):
    time.sleep(2)
    adb_out = subprocess.check_output(["adb", "devices"], text=True, stderr=subprocess.STDOUT)
    fb_out = subprocess.check_output(["fastboot", "devices"], text=True, stderr=subprocess.STDOUT)
    if "1099738415003670" in adb_out:
        print(f"[{i*2}s] ADB detected:\n{adb_out.strip()}", flush=True)
        break
    if "1099738415003670" in fb_out:
        print(f"[{i*2}s] Fastboot detected:\n{fb_out.strip()}", flush=True)
        break
else:
    print("Timeout after 90s waiting for ADB/Fastboot.", flush=True)
    raise SystemExit(0)

if "1099738415003670" in adb_out:
    for j in range(60):
        try:
            bc = subprocess.check_output(["adb", "-s", "1099738415003670", "shell", "getprop", "sys.boot_completed"], text=True, stderr=subprocess.STDOUT).strip()
            ver = subprocess.check_output(["adb", "-s", "1099738415003670", "shell", "getprop", "ro.tranos.version"], text=True, stderr=subprocess.STDOUT).strip()
            mode = subprocess.check_output(["adb", "-s", "1099738415003670", "shell", "getprop", "persist.vendor.hwc.display.modeid"], text=True, stderr=subprocess.STDOUT).strip()
            print(f"[+{j*3}s] boot_completed={bc!r}, tranos={ver!r}, modeid={mode!r}", flush=True)
            if bc == "1":
                print("HIOS_14_5_BOOT_COMPLETED_100_PERCENT!", flush=True)
                break
        except Exception as e:
            print(f"[+{j*3}s] waiting ({e})", flush=True)
        time.sleep(3)
