import subprocess
import os
import time

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"

print("Waiting for phone in BROM mode (Hold Volume Down + Power)...", flush=True)
spd_cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "fdl", "fdl1-sign.bin", "0x5500",
    "fdl", "fdl2-sign.bin", "0x9efffe00",
    "read_part", "sysdumpdb", "0", "1048576", "current_sysdumpdb.bin",
    "write_part", "boot_a", "boot_a.img",
    "write_part", "misc", "misc_fastbootd.img",
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

print("Checking fastbootd connection...", flush=True)
for i in range(30):
    time.sleep(2)
    out = subprocess.check_output(["fastboot", "devices"], text=True, stderr=subprocess.STDOUT)
    if "1099738415003670" in out:
        print(f"PHONE_IS_NOW_SAFELY_IN_FASTBOOTD: {out.strip()}", flush=True)
        break
