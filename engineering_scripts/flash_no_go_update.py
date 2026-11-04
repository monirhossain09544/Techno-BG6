import subprocess
import time
import os

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
FASTBOOT = r"C:\Users\Monir\Android\Sdk\platform-tools\fastboot.exe"
IMG = r"D:\infinity_x_bg6_ready.img"

def run(cmd):
    print(f">>> {' '.join(cmd)}", flush=True)
    res = subprocess.run(cmd, text=True, capture_output=True)
    if res.stdout:
        print(res.stdout.strip(), flush=True)
    if res.stderr:
        print(res.stderr.strip(), flush=True)
    return res.returncode, (res.stdout or "") + (res.stderr or "")

def main():
    img_size = os.path.getsize(IMG)
    print(f"Verified image: {IMG} ({img_size:,} bytes)", flush=True)

    rc, out = run([ADB, "devices"])
    if "1099738415003670" in out:
        print("Device detected in ADB mode. Rebooting to fastbootd...", flush=True)
        run([ADB, "reboot", "fastboot"])
        time.sleep(8)

    print("Waiting for fastbootd/fastboot device...", flush=True)
    for _ in range(45):
        rc, out = run([FASTBOOT, "devices"])
        if "1099738415003670" in out:
            break
        time.sleep(2)
    else:
        raise SystemExit("ERROR: Device not detected in fastboot/fastbootd mode.")

    # Check if in bootloader fastboot instead of userspace fastbootd
    rc, var_out = run([FASTBOOT, "getvar", "is-userspace"])
    if "is-userspace: no" in var_out:
        print("Device is in bootloader fastboot. Rebooting into userspace fastbootd...", flush=True)
        run([FASTBOOT, "reboot", "fastboot"])
        time.sleep(8)
        for _ in range(30):
            rc, out = run([FASTBOOT, "devices"])
            if "1099738415003670" in out:
                break
            time.sleep(2)

    run([FASTBOOT, "resize-logical-partition", "system_a", str(img_size)])
    print("Flashing Non-Go Vendor-Overwritten Project Infinity X v3.12 to system_a (preserving userdata)...", flush=True)
    rc, _ = run([FASTBOOT, "flash", "system_a", IMG])
    if rc != 0:
        raise SystemExit("ERROR: fastboot flash system_a failed!")

    print("Rebooting into system...", flush=True)
    run([FASTBOOT, "reboot"])
    print("=== UPDATE FLASH COMPLETE (USERDATA PRESERVED) ===", flush=True)

if __name__ == "__main__":
    main()
