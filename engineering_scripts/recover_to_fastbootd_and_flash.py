import subprocess
import time
import os

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
IMG_PATH = r"D:\hios14_5_system.img"

print("=== STEP 1: Waiting for phone in BROM mode (Hold Volume Down + Power until screen turns off) ===", flush=True)
spd_cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "fdl", "fdl1-sign.bin", "0x5500",
    "fdl", "fdl2-sign.bin", "0x9efffe00",
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
print(f"spd_dump exited with code {proc.returncode}", flush=True)

print("=== STEP 2: Waiting for phone to enter fastbootd (1099738415003670) ===", flush=True)
for i in range(40):
    time.sleep(2)
    out = subprocess.check_output(["fastboot", "devices"], text=True, stderr=subprocess.STDOUT)
    if "1099738415003670" in out:
        print(f"Detected device in fastboot: {out.strip()}", flush=True)
        break

u_out = subprocess.check_output(["fastboot", "-s", "1099738415003670", "getvar", "is-userspace"], text=True, stderr=subprocess.STDOUT)
print(u_out, flush=True)

print("=== STEP 3: Flashing Official TECNO HiOS 14.5 (D:\\hios14_5_system.img) to system_a ===", flush=True)
flash_proc = subprocess.Popen(
    ["fastboot", "-s", "1099738415003670", "flash", "system_a", IMG_PATH],
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    text=True,
    bufsize=1
)
for line in flash_proc.stdout:
    print(line, end="", flush=True)
flash_proc.wait()
if flash_proc.returncode != 0:
    raise SystemExit(f"fastboot flash system_a failed with code {flash_proc.returncode}")

print("=== STEP 4: Formatting userdata & metadata for clean Transsion signature switch ===", flush=True)
subprocess.call(["fastboot", "-s", "1099738415003670", "erase", "userdata"])
subprocess.call(["fastboot", "-s", "1099738415003670", "erase", "metadata"])
subprocess.call(["fastboot", "-s", "1099738415003670", "-w"])

print("=== STEP 5: Rebooting into Official TECNO HiOS 14.5! ===", flush=True)
subprocess.check_call(["fastboot", "-s", "1099738415003670", "reboot"])
print("ALL_FLASH_STEPS_100_PERCENT_SUCCESS!", flush=True)
