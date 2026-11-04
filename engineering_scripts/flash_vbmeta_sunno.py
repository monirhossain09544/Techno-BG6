import subprocess

for name in ["vbmeta_a", "vbmeta_system_a"]:
    src = rf"D:\Tecno_BG6_Full_ROM_Backup\{name}.img"
    dst = rf"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\{name}_disabled.img"
    with open(src, "rb") as f:
        data = bytearray(f.read())
    assert data[:4] == b"AVB0"
    data[123] = 3  # AVB_VBMETA_IMAGE_FLAGS_HASHTREE_DISABLED | VERIFICATION_DISABLED
    with open(dst, "wb") as f:
        f.write(data)
    print(f"Prepared {dst} (flags=3)")

subprocess.run(["adb", "reboot", "fastboot"], check=True)
subprocess.run(["fastboot", "flash", "vbmeta_a", r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vbmeta_a_disabled.img"], check=True)
subprocess.run(["fastboot", "flash", "vbmeta_system_a", r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vbmeta_system_a_disabled.img"], check=True)
subprocess.run(["fastboot", "reboot"], check=True)
print("Flashed vbmeta_a & vbmeta_system_a with AVB disabled and rebooted!")
