import struct

with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/sprd-drm.ko", "rb") as f:
    elf = f.read()

e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsize
    sections.append(struct.unpack("<IIQQQQIIQQ", elf[off:off+64]))

symtab = next(s for s in sections if s[1] == 2)
strtab = sections[symtab[6]]
for i in range(symtab[5] // symtab[9]):
    off = symtab[4] + i * symtab[9]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack("<IBBHQQ", elf[off:off+24])
    end = elf.index(b"\x00", strtab[4] + st_name)
    name = elf[strtab[4] + st_name : end].decode("ascii", "ignore")
    if (st_shndx == 9) or (st_shndx == 12 and 214000 <= st_value <= 216000) or (st_shndx == 12 and 51000 <= st_value <= 52000):
        print(f"sec={st_shndx} val={st_value} ({st_value:#x}) size={st_size}: {name}")
