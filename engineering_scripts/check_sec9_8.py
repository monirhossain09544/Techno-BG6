import struct

with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/sprd-drm.ko", "rb") as f:
    elf = f.read()

e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
symtab = next(s for s in sections if s[1] == 2)
strtab = sections[symtab[6]]
sym_by_idx = []
syms = {}
for i in range(symtab[5] // symtab[9]):
    off = symtab[4] + i * symtab[9]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack("<IBBHQQ", elf[off:off+24])
    end = elf.index(b"\x00", strtab[4] + st_name)
    name = elf[strtab[4] + st_name : end].decode("ascii", "ignore")
    sym_by_idx.append((name, st_shndx, st_value, st_size))
    if name and not name.startswith("$"):
        syms[name] = (st_shndx, st_value, st_size)

for name, (shndx, val, size) in sorted(syms.items(), key=lambda x: (x[1][0], x[1][1])):
    if shndx == 9 and val < 64:
        print(f"sec 9 @ {val:#x} (size {size}): {name}")

# Also find all references to sec 9 offset 8 in .rela.text
rela_text = {}
for s in sections:
    if s[1] == 4 and s[7] == 12:
        for i in range(s[5] // s[9]):
            off = s[4] + i * s[9]
            r_offset, r_info, r_addend = struct.unpack("<QQq", elf[off:off+24])
            sym_idx = r_info >> 32
            name, st_shndx, st_val, _ = sym_by_idx[sym_idx]
            if st_shndx == 9 and st_val + r_addend == 8:
                # Find which function r_offset is in
                fn = next((n for n, (sh, v, sz) in syms.items() if sh == 12 and v <= r_offset < v + sz), "unknown")
                print(f"Ref to sec9+8 at {r_offset:#x} in {fn}")
