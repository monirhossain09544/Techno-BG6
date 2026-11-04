import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
ro_off = sections[7][4]
print("magic_num bytes:", [hex(b) for b in elf[ro_off + 67584 : ro_off + 67588]])