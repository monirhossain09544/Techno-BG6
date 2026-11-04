import os
import subprocess

print("=== SEARCHING LOCAL PC FOR REPO ===")
skip_dirs = {"AppData", "Application Data", "Local Settings", "Windows", "Program Files", "Program Files (x86)", "ProgramData", "$Recycle.Bin", "node_modules", ".git", ".gradle", "Android"}

for drive in ["C:\\", "D:\\", "E:\\"]:
    if not os.path.exists(drive):
        continue
    for root, dirs, files in os.walk(drive):
        dirs[:] = [d for d in dirs if d not in skip_dirs and not d.startswith(".")]
        if "SESSION_2026-10-27_RESTORE.md" in files or "BOOTLOOP_SYSTEM_EXT.md" in files or "hios_pro_dt2w" in dirs:
            print("FOUND:", root)
        # limit depth to 5
        if root.count(os.sep) >= 5:
            dirs[:] = []

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SERIAL = "1099738415003670"

for cmd in [
    ["shell", "echo ADB_SHELL_OK; uname -a; uptime"],
    ["shell", "ps -A | grep -E 'dt2w|hios|bg6|sh|su|system_server'"],
    ["shell", "/data/adb/ksud --version"],
    ["shell", "su -c 'id; ls -la /data/adb/modules/'"],
]:
    try:
        r = subprocess.run([ADB, "-s", SERIAL] + cmd, capture_output=True, text=True, timeout=4, errors="replace")
        print("CMD:", cmd, "RC:", r.returncode)
        print(r.stdout[:1000], r.stderr[:500])
    except subprocess.TimeoutExpired:
        print("CMD TIMEOUT:", cmd)
