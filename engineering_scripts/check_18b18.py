import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
symtab = next(s for s in sections if s[1] == 2)
strtab = sections[symtab[6]]
sym_by_idx = []
for i in range(symtab[5] // symtab[9]):
    off = symtab[4] + i * symtab[9]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack("<IBBHQQ", elf[off:off+24])
    end = elf.index(b"\x00", strtab[4] + st_name)
    name = elf[strtab[4] + st_name : end].decode("ascii", "ignore")
    sym_by_idx.append((name, st_shndx, st_value, st_size))

for s in sections:
    if s[1] == 4 and s[7] == 8:
        for i in range(s[5] // s[9]):
            off = s[4] + i * s[9]
            r_offset, r_info, r_addend = struct.unpack("<QQq", elf[off:off+24])
            if 0x18a64 <= r_offset <= 0x18b90:
                sym_idx = r_info >> 32
                print(f"{r_offset:#x}: {sym_by_idx[sym_idx]} + {r_addend:#x}")