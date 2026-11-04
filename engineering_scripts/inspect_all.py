import os
import subprocess

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SERIAL = "1099738415003670"

def run_adb(sh_cmd, timeout=5):
    try:
        r = subprocess.run([ADB, "-s", SERIAL, "shell", f"su -c '{sh_cmd}'"], capture_output=True, text=True, timeout=timeout, errors="replace")
        return r.stdout + r.stderr
    except subprocess.TimeoutExpired:
        return f"[TIMEOUT after {timeout}s]: {sh_cmd}\n"

print("=== 1. MODULE FILES ON PHONE ===")
print(run_adb("find /data/adb/modules/bg6_hios_pro -maxdepth 4 -ls"))

print("=== 2. USER/ROOT PROCESSES (NON-KERNEL THREADS) ===")
print(run_adb("ps -A -o PID,PPID,USER,CPU,MEM,NAME,ARGS | grep -v '\\['"))

print("=== 3. DENSITY / DISPLAY / GRAPHICS PROPS ===")
print(run_adb("getprop | grep -iE 'density|dpi|lcd|hwui|sf\\.|render|touch|dt2w'"))

print("=== 4. SYSTEM_SERVER / SURFACEFLINGER / SYSTEMUI ANR OR CRASHES ===")
print(run_adb("logcat -d -b crash -t 80"))
print(run_adb("logcat -d -t 100 | grep -iE 'ANR|Watchdog|DeadSystem|SystemUI|Overlay|dt2w|InputDispatcher|freeze' | tail -n 50"))

print("=== 5. FIND REPO ON PC (INCLUDING .gemini AND ALL DRIVES) ===")
for base in [r"C:\Users\Monir\.gemini", r"C:\Users\Monir"]:
    for root, dirs, files in os.walk(base):
        if any(x in root for x in ["AppData\\Local\\Packages", "AppData\\Local\\Google", "AppData\\Local\\Microsoft", "AppData\\Roaming", "Android\\Sdk", "node_modules"]):
            dirs[:] = []
            continue
        if "SESSION_2026-10-27_RESTORE.md" in files or "hios_pro_dt2w" in dirs or "BOOTLOOP_SYSTEM_EXT.md" in files or "verify_features.sh" in files:
            print("FOUND ON PC:", root)
