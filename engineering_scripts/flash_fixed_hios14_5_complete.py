import subprocess
import os
import time

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
IMG_PATH = r"D:\hios14_5_system.img"
SERIAL = "1099738415003670"

print("=== STEP 1: Waiting for BROM (Hold Volume Down + Power until restart) ===", flush=True)
spd_cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "w", "boot_a", "boot_a.img",
    "w", "misc", "misc_fastbootd.img",
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
print(f"spd_dump finished with exit code {proc.returncode}", flush=True)

print("=== STEP 2: Waiting for phone to enter fastbootd (1099738415003670) ===", flush=True)
for i in range(45):
    time.sleep(2)
    out = subprocess.check_output(["fastboot", "devices"], text=True, stderr=subprocess.STDOUT)
    if SERIAL in out:
        print(f"Detected device in fastbootd: {out.strip()}", flush=True)
        break
else:
    raise SystemExit("Timed out waiting for fastbootd")

def run_fb(*args, check=True):
    cmd = ["fastboot", "-s", SERIAL] + list(args)
    print(f"\n>>> Running: {' '.join(cmd)}", flush=True)
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1)
    for line in p.stdout:
        print(line, end="", flush=True)
    p.wait()
    if check and p.returncode != 0:
        raise SystemExit(f"Command failed with exit code {p.returncode}")

run_fb("getvar", "is-userspace", check=False)

print("=== STEP 3: Flashing Fixed Official TECNO HiOS 14.5 (D:\\hios14_5_system.img) ===", flush=True)
run_fb("flash", "system_a", IMG_PATH, check=True)
run_fb("erase", "userdata", check=False)
run_fb("erase", "metadata", check=False)
run_fb("reboot", check=True)
print("\nFIXED_HIOS14_5_FLASHED_AND_REBOOTING_100_PERCENT!", flush=True)
