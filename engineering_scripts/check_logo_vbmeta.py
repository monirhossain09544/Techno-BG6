import os, glob

for p in glob.glob(r"D:\Tecno_BG6_Full_ROM_Backup\*") + glob.glob(r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\**\*logo*", recursive=True):
    if os.path.isfile(p):
        print(f"{p} ({os.path.getsize(p):,} bytes)")

with open(r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\backups\vbmeta_a.bin", "rb") as f:
    vb = f.read()

print("Is 'logo' in vbmeta_a.bin?", b"logo" in vb)
for word in [b"boot", b"vendor_boot", b"dtbo", b"logo", b"fbootlogo", b"uboot", b"trustos", b"vbmeta"]:
    print(f"  {word.decode()}: {word in vb}")
