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
    if any(k in name for k in ["charger", "krang", "direction", "suspend_device", "pwr_mode", "esd_protection"]):
        print(f"SYM: {name} @ {st_value:#x} (size {st_size:#x})")

text_off = sections[8][4]
for name, shndx, val, size in sym_by_idx:
    if name in ["cts_tcs_set_charger_plug", "cts_tcs_set_pwr_mode", "cts_tcs_get_esd_protection"]:
        print(f"=== {name} ({val:#x}..{val+size:#x}) ===")
        for off in range(val, val + size, 4):
            insn = struct.unpack("<I", elf[text_off+off:text_off+off+4])[0]
            print(f"  {off:#06x}: {insn:#010x}")