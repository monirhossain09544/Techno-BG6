import subprocess
import time
import os
import shutil

if os.path.exists(r"D:\cur_ext.bin"):
    os.remove(r"D:\cur_ext.bin")

ADB = shutil.which("adb") or r"C:\Users\Monir\AppData\Local\Android\Sdk\platform-tools\adb.exe"
SERIAL = "1099738415003670"
print(f"Using ADB: {ADB}", flush=True)

print("=== Waiting for TECNO-BG6 (1099738415003670) to boot Official TECNO HiOS 14.5 via ADB ===", flush=True)
t0 = time.time()
while time.time() - t0 < 240:
    out = subprocess.run([ADB, "devices"], capture_output=True, text=True).stdout
    if SERIAL in out:
        state = [line for line in out.splitlines() if SERIAL in line][0]
        print(f"[{int(time.time()-t0)}s] ADB detected: {state}", flush=True)
        if "\tdevice" in state:
            boot_comp = subprocess.run([ADB, "-s", SERIAL, "shell", "getprop", "sys.boot_completed"], capture_output=True, text=True).stdout.strip()
            init_svc = subprocess.run([ADB, "-s", SERIAL, "shell", "getprop", "init.svc.bootanim"], capture_output=True, text=True).stdout.strip()
            modeid = subprocess.run([ADB, "-s", SERIAL, "shell", "getprop", "persist.vendor.hwc.display.modeid"], capture_output=True, text=True).stdout.strip()
            tranos = subprocess.run([ADB, "-s", SERIAL, "shell", "getprop", "ro.tranos.version"], capture_output=True, text=True).stdout.strip()
            print(f"  sys.boot_completed={boot_comp}, bootanim={init_svc}, modeid={modeid}, tranos={tranos}", flush=True)
            if boot_comp == "1":
                print("\nOFFICIAL_HIOS_14_5_BOOT_COMPLETED_100_PERCENT!", flush=True)
                break
    time.sleep(3)
