import os, subprocess, sys, time

SER = "1099738415003670"
ADB = "adb"
FASTBOOT = "fastboot"

def run(cmd, check=True):
    print("+", " ".join(cmd), flush=True)
    r = subprocess.run(cmd)
    if check and r.returncode != 0:
        raise SystemExit(f"Command failed ({r.returncode}): {' '.join(cmd)}")

def main():
    if len(sys.argv) < 3:
        print("Usage: python Restore_A16_GSI_v87_Complete.py <bg6_boot_a_v7_v4l2_iio_rust.img> <infinity_x_bg6_ready.img>")
        raise SystemExit(1)
    boot_img, sys_img = sys.argv[1], sys.argv[2]
    assert os.path.getsize(boot_img) == 67108864, "Invalid boot_a size!"
    assert os.path.getsize(sys_img) == 3423481856, "Invalid system_a size!"

    print("[1/3] Flashing Ring-0 Rust + V4L2/IIO boot_a (plus disabled vbmeta for custom GSI)...")
    run([ADB, "-s", SER, "reboot", "bootloader"], check=False)
    time.sleep(6)
    vb_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "brom_super_flasher"))
    for vbp, vbf in [("vbmeta_a", "vbmeta_a_disabled.img"), ("vbmeta_system_a", "vbmeta_system_a_disabled.img")]:
        p = os.path.join(vb_dir, vbf)
        if os.path.exists(p):
            run([FASTBOOT, "-s", SER, "flash", vbp, p])
    run([FASTBOOT, "-s", SER, "flash", "boot_a", boot_img])

    print("[2/3] Entering fastbootd & flashing 3.42 GB v8.7 system_a...")
    run([FASTBOOT, "-s", SER, "reboot", "fastboot"])
    time.sleep(8)
    for part in ["product_a", "product_b", "system_ext_a", "system_ext_b", "vendor_b", "system_b"]:
        run([FASTBOOT, "-s", SER, "delete-logical-partition", part], check=False)
    run([FASTBOOT, "-s", SER, "resize-logical-partition", "system_a", str(os.path.getsize(sys_img))])
    run([FASTBOOT, "-s", SER, "flash", "system_a", sys_img])

    print("[3/3] Formatting userdata & rebooting into Android 16 GSI v8.7...")
    run([FASTBOOT, "-s", SER, "erase", "metadata"], check=False)
    run([FASTBOOT, "-s", SER, "-w"], check=False)
    run([FASTBOOT, "-s", SER, "reboot"])

if __name__ == "__main__":
    main()
