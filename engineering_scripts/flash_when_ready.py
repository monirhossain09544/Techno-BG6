import subprocess
import time

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
FASTBOOT = r"C:\Users\Monir\Android\Sdk\platform-tools\fastboot.exe"
IMG = r"D:\infinity_x_bg6_ready.img"

print("Waiting for phone in fastboot or adb...", flush=True)
while True:
    fb_out = subprocess.run([FASTBOOT, "devices"], capture_output=True, text=True).stdout.strip()
    if fb_out:
        print(f"Detected in fastboot: {fb_out}", flush=True)
        break
    adb_out = subprocess.run([ADB, "devices"], capture_output=True, text=True).stdout.strip().splitlines()
    adb_devs = [l for l in adb_out[1:] if l.strip()]
    if adb_devs:
        print(f"Detected in adb: {adb_devs[0]} -> rebooting to fastbootd...", flush=True)
        subprocess.run([ADB, "reboot", "fastboot"])
        time.sleep(5)
        continue
    time.sleep(1.5)

# Check if in userspace fastbootd
var_out = subprocess.run([FASTBOOT, "getvar", "is-userspace"], capture_output=True, text=True)
combined = (var_out.stdout + "\n" + var_out.stderr).lower()
print(f"is-userspace check: {combined.strip()}", flush=True)

if "is-userspace: no" in combined:
    print("Phone is in bootloader fastboot; switching to userspace fastbootd...", flush=True)
    subprocess.run([FASTBOOT, "reboot", "fastboot"], check=True)
    time.sleep(5)

print("Flashing aligned system_a...", flush=True)
p = subprocess.Popen([FASTBOOT, "flash", "system_a", IMG], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
for line in p.stdout:
    print(line, end="", flush=True)
p.wait()
if p.returncode != 0:
    raise RuntimeError(f"fastboot flash failed with code {p.returncode}")

print("Rebooting phone into system...", flush=True)
subprocess.run([FASTBOOT, "reboot"], check=True)
print("FLASH_AND_REBOOT_COMPLETE", flush=True)
