import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
ro_off = sections[7][4]
table = struct.unpack("<256H", elf[ro_off + 65232 : ro_off + 65232 + 512])

def crc16(data):
    crc = 0
    for b in data:
        crc = ((crc >> 8) ^ table[(crc ^ b) & 0xff]) & 0xffff
    return crc

# Find 3-byte sequences ending in 00 or starting with something known that give 0xd731 or 0x696b
for b0 in range(256):
    for b1 in range(256):
        c1 = ((b0) ^ table[b0]) # wait, use crc16
        # fast invert for 3rd byte:
        c = ((0 >> 8) ^ table[b0]) & 0xffff
        c = ((c >> 8) ^ table[(c ^ b1) & 0xff]) & 0xffff
        for target, name in [(0xd731, "d731"), (0x696b, "696b")]:
            # we need ((c >> 8) ^ table[(c ^ b2) & 0xff]) == target
            # so table[(c ^ b2) & 0xff] == target ^ (c >> 8)
            need = target ^ (c >> 8)
            if need in table:
                idx = table.index(need)
                b2 = idx ^ (c & 0xff)
                if b0 in (0, 0x16, 0x99, 0xf0, 0xf1, 0xe1, 0x60, 0xff) or b2 == 0:
                    print(f"{name}: {b0:02x} {b1:02x} {b2:02x}")