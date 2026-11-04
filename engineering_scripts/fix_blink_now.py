import subprocess
import time

root_dir = r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root"
spd_exe = rf"{root_dir}\spd_dump.exe"
adb_exe = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"

print("1. Waiting for BROM (COM3) to restore valid vbmeta_a, vbmeta_system_a, erase metadata, and write misc-wipe.bin...")
spd_cmd = [
    spd_exe,
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "w", "vbmeta_a", r"backups\vbmeta_a.bin",
    "w", "vbmeta_system_a", r"backups\vbmeta_system_a.bin",
    "e", "metadata",
    "w", "misc", r"package_emmc\misc-wipe.bin",
    "reset"
]
subprocess.run(spd_cmd, cwd=root_dir, check=True)
print("2. BROM fix complete! Phone is now wiping /data (f2fs) in recovery and booting Sunno OS 1.0...")

for i in range(1, 30):
    time.sleep(5)
    out = subprocess.check_output([adb_exe, "devices", "-l"], text=True, stderr=subprocess.STDOUT)
    if "1099738415003670" in out:
        print(f"[{i*5}s] Phone connected via ADB: {out.strip()}")
        break
    else:
        print(f"[{i*5}s] Waiting for Sunno OS 1.0 boot...")
