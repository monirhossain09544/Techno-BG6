import subprocess
import time

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"

print("Monitoring Project Infinity X v3.12 first boot...", flush=True)
for i in range(45):
    res = subprocess.run([ADB, "devices"], text=True, capture_output=True)
    out = res.stdout.strip()
    lines = [l for l in out.splitlines() if "1099738415003670" in l]
    if lines:
        state = lines[0].split()[-1]
        print(f"[{i*3}s] ADB state: {state}", flush=True)
        if state == "device":
            p = subprocess.run(
                [ADB, "shell", "getprop sys.boot_completed; getprop init.svc.bootanim; getprop persist.vendor.hwc.display.modeid; getprop ro.infinity.version; pgrep -a bg6_perf_engine"],
                text=True, capture_output=True
            )
            info = " | ".join(p.stdout.strip().splitlines())
            print(f"   Status: {info}", flush=True)
            if p.stdout.strip().startswith("1"):
                print("=== BOOT COMPLETED 100%! ===", flush=True)
                break
    else:
        print(f"[{i*3}s] Waiting for ADB enumeration...", flush=True)
    time.sleep(3)
