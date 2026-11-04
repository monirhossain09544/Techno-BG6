import zipfile, struct, check_h0q
from check_c0b import dump_code

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

for mid, m in enumerate(check_h0q.methods):
    if m[0] in ('Lf9/l$s;', 'Lf9/l$u;'):
        print(f"Method 0x{mid:04x}: {m}")

dump_code("Lf9/l;->D3", 0x351f6c)
