import subprocess
import os

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"

print("=== Waiting for phone in BROM mode (Hold Volume Down + Power until screen turns black) ===", flush=True)
spd_cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "w", "boot_a", "boot_a.img",
    "w", "misc", "misc.img",
    "w", "super", "super.img",
    "e", "metadata",
    "reset"
]

proc = subprocess.Popen(
    spd_cmd,
    cwd=BACKUP_DIR,
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    text=True,
    bufsize=1
)

for line in proc.stdout:
    print(line, end="", flush=True)

proc.wait()
print(f"\nFLASH_COMPLETE_EXIT_CODE_{proc.returncode}", flush=True)
