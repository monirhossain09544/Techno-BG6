import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
text_off = sections[8][4]
for off in range(0x1df10, 0x1dfa8, 4):
    insn = struct.unpack("<I", elf[text_off+off:text_off+off+4])[0]
    print(f"  {off:#06x}: {insn:#010x}")