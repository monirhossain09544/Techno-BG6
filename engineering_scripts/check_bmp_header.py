import struct
import gzip

with open(r"D:\Tecno_BG6_Full_ROM_Backup\logo.img", "rb") as f:
    orig = f.read()
s0 = struct.unpack("<I", orig[24:28])[0]
bmp1 = gzip.decompress(orig[44:44+s0])

with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\sunno_boot_splash.bmp", "rb") as f:
    bmp_new = f.read()

print("orig header (54b):", bmp1[:54].hex())
print("new  header (54b):", bmp_new[:54].hex())
print("orig tail (4b):", bmp1[-4:].hex())
