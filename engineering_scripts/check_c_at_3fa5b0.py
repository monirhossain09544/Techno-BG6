import zipfile, struct

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

insns_start = 0x3fa5b0 + 16
insns_size = struct.unpack_from('<I', dex, 0x3fa5b0 + 12)[0]
for i in range(insns_size):
    w = struct.unpack_from('<H', dex, insns_start + 2*i)[0]
    if 0x0070 <= i <= 0x00e0 or 0x0140 <= i <= 0x0156:
        print(f"0x{i:04x}: 0x{w:04x}")
