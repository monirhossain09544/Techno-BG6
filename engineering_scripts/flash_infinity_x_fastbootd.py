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
    if not os.path.exists(IMG):
        raise SystemExit(f"ERROR: {IMG} not found!")
    img_size = os.path.getsize(IMG)
    print(f"Verified image: {IMG} ({img_size:,} bytes)", flush=True)

    rc, out = run([ADB, "devices"])
    if "1099738415003670" in out:
        print("Device detected in ADB mode. Rebooting to fastbootd...", flush=True)
        run([ADB, "reboot", "fastboot"])
        time.sleep(10)

    print("Waiting for fastbootd device...", flush=True)
    for _ in range(45):
        rc, out = run([FASTBOOT, "devices"])
        if "1099738415003670" in out:
            break
        time.sleep(2)
    else:
        raise SystemExit("ERROR: Device not detected in fastbootd mode.")

    # Free logical space in super and resize system_a
    for part in ["product_a", "product_b", "system_ext_b", "vendor_b", "system_b"]:
        run([FASTBOOT, "delete-logical-partition", part])
    run([FASTBOOT, "resize-logical-partition", "system_a", str(img_size)])

    print("Flashing Project Infinity X v3.12 (TECNO-BG6 Silicon Tuned) to system_a...", flush=True)
    rc, _ = run([FASTBOOT, "flash", "system_a", IMG])
    if rc != 0:
        raise SystemExit("ERROR: fastboot flash system_a failed!")

    print("Wiping userdata for clean Android 16 QPR2 transition...", flush=True)
    run([FASTBOOT, "-w"])

    print("Rebooting into Project Infinity X v3.12...", flush=True)
    run([FASTBOOT, "reboot"])
    print("=== FLASH COMPLETE, DEVICE REBOOTING ===", flush=True)

if __name__ == "__main__":
    main()
