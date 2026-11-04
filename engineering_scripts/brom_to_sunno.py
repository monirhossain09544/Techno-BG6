import os
import subprocess
import time

root_dir = r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root"
misc_path = os.path.join(root_dir, "misc-fastbootd.bin")
sunno_img = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\sunno_system.img"

# Exact AOSP BCB for fastbootd: command="boot-recovery", recovery="recovery\n--fastboot\n"
bcb = b"boot-recovery".ljust(64, b"\x00") + b"recovery\n--fastboot\n".ljust(2048 - 64, b"\x00")
with open(misc_path, "wb") as f:
    f.write(bcb)

spd_cmd = [
    os.path.join(root_dir, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "w", "misc", "misc-fastbootd.bin",
    "reset"
]

attempt = 0
while True:
    attempt += 1
    print(f"[Attempt {attempt}] Waiting for Unisoc BROM (SPRD U2S Diag COM3) via spd_dump.exe...")
    res = subprocess.run(spd_cmd, cwd=root_dir)
    if res.returncode == 0:
        print("SUCCESS! BROM wrote misc-fastbootd.bin and reset device!")
        break
    print(f"spd_dump exited with {res.returncode}, immediately retrying in 0.2s...")
    time.sleep(0.2)

print("Waiting for device to enter fastbootd...")
for p in ["product_b", "system_b", "system_ext_b", "vendor_b", "system_a-cow", "system_ext_a", "product_a"]:
    subprocess.run(["fastboot", "delete-logical-partition", p])

print("Flashing Sunno OS system_a...")
subprocess.run(["fastboot", "flash", "system_a", sunno_img], check=True)
subprocess.run(["fastboot", "-w"])
subprocess.run(["fastboot", "reboot"], check=True)
print("Completed flashing Sunno OS and rebooting!")
