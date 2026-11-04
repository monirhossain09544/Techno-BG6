import zipfile, struct
with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')
for name, off in [("Lo7/c0$b;->D", 0x3fa570), ("Le2/c;->f", 0x340e14)]:
    sz = struct.unpack_from('<I', dex, off+12)[0]
    print(name, sz, [f"0x{struct.unpack_from('<H', dex, off+16+2*i)[0]:04x}" for i in range(sz)])
