import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
text_off = sections[8][4]

for fn, start, end in [("cts_resume_device", 0x1dfa8, 0x1e1e4), ("cts_plat_is_normal_mode", 0x18a64, 0x18b30)]:
    print(f"=== {fn} ===")
    for off in range(start, end, 4):
        insn = struct.unpack("<I", elf[text_off+off:text_off+off+4])[0]
        print(f"  {off:#06x}: {insn:#010x}")