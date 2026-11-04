import zipfile, struct, check_h0q

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

targets = {'Ld9/p;', 'Lf9/l;', 'Lh8/p;', 'Lh9/o;', 'Li8/w;', 'Lp8/k;', 'Lr8/m;', 'Ls8/g;', 'Lx8/k;', 'Ln8/e;', 'Ln8/r;', 'Lw8/f;'}
for i in range(struct.unpack_from('<I', dex, 0x60)[0]):
    c_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', dex, struct.unpack_from('<I', dex, 0x64)[0] + i*32)
    cname = check_h0q.types[c_idx]
    if cname in targets:
        sname = check_h0q.types[super_idx]
        src = check_h0q.strings[src_idx] if src_idx != 0xffffffff else "None"
        print(f"Class {cname} extends {sname} (source={src})")

from check_c0b import dump_code
dump_code("Ln8/e;->o", 0x3d8a20)
dump_code("Ln8/r;->o", 0x3da18c)
dump_code("Lw8/f;->o", 0x47cfb8)
dump_code("Lr8/m$b;->d", 0x434530)
dump_code("Lr8/m$b;->k", 0x43465c)
