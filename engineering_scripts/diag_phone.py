import subprocess
import os

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SERIAL = "1099738415003670"

def sh(cmd):
    p = subprocess.run([ADB, "-s", SERIAL, "shell", f"su -c '{cmd}'"], capture_output=True, text=True, errors="replace")
    return p.stdout + p.stderr

print("=== MODULES ===")
print(sh("ls -la /data/adb/modules/"))

print("=== RUNNING SCRIPTS / DAEMONS ===")
print(sh("ps -A -o PID,PPID,USER,NAME,ARGS | grep -E 'dt2w|hios|bg6|sh|input|getevent|sendevent|overlay'"))

print("=== TOP CPU ===")
print(sh("top -n 1 -b | head -n 25"))

print("=== DISPLAY SIZE & DENSITY ===")
print(sh("wm size; wm density"))

print("=== OVERLAYS ===")
print(sh("cmd overlay list"))

print("=== FIND REPO ON PC ===")
for root_dir in [r"C:\Users\Monir\Desktop", r"C:\Users\Monir\Documents", r"C:\Users\Monir\Downloads", r"C:\Users\Monir\source", r"C:\Users\Monir\projects", r"C:\Users\Monir"]:
    if not os.path.exists(root_dir):
        continue
    for entry in os.scandir(root_dir):
        if entry.is_dir() and not entry.name.startswith(".") and entry.name not in ("AppData", "Application Data", "Local Settings"):
            cand = os.path.join(entry.path, "docs", "SESSION_2026-10-27_RESTORE.md")
            if os.path.exists(cand):
                print("FOUND REPO:", entry.path)
            cand2 = os.path.join(entry.path, "hios_pro_dt2w")
            if os.path.exists(cand2):
                print("FOUND hios_pro_dt2w:", cand2)
