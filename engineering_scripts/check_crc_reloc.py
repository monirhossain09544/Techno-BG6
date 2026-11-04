import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
ro_off = sections[7][4]
table = struct.unpack("<256H", elf[ro_off + 65232 : ro_off + 65232 + 512])
# Wait: what is at ro_off + 0xfed0 (65232)?
print("65232 == 0xfed0?", 65232 == 0xfed0)
# Wait: in cts_tcs_spi_xtrans:
# 0x103f0: ('', 7, 65232, "''")
# Let's check the relocation addend at 0x103f0 and 0x103f4!
symtab = next(s for s in sections if s[1] == 2)
for s in sections:
    if s[1] == 4 and s[7] == 8:
        for i in range(s[5] // s[9]):
            off = s[4] + i * s[9]
            r_offset, r_info, r_addend = struct.unpack("<QQq", elf[off:off+24])
            if 0x103d0 <= r_offset <= 0x10420:
                print(f"reloc @ {r_offset:#x}: type={r_info & 0xffffffff} addend={r_addend:#x}")