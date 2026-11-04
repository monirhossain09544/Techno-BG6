import os
p = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\sunno_system.img"
sz = os.path.getsize(p)
found_cm = False
found_mode = False
with open(p, "rb") as f:
    hdr = f.read(4096)
    f.seek(0)
    while True:
        buf = f.read(16 * 1024 * 1024)
        if not buf:
            break
        if b"sunno_cm_identity.bin" in buf:
            found_cm = True
        if b"persist.vendor.hwc.display.modeid=0" in buf:
            found_mode = True
print(f"Size: {sz}, Magic: {hdr[:4].hex()}, Ext4Magic: {hdr[1080:1082].hex()}, found_cm={found_cm}, found_mode={found_mode}")
