import os

SUPER_PATH = r"D:\Tecno_BG6_Full_ROM_Backup\super.img"
print(f"Checking {SUPER_PATH} ({os.path.getsize(SUPER_PATH):,} bytes)...")

# Read first 64 bytes to check if sparse or raw
with open(SUPER_PATH, "rb") as f:
    hdr = f.read(64)
print("Header magic:", hdr[:16].hex())
