import struct
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    elf = f.read()
e_shoff = struct.unpack("<Q", elf[40:48])[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack("<HHH", elf[58:64])
sections = [struct.unpack("<IIQQQQIIQQ", elf[e_shoff + i * e_shentsize : e_shoff + (i+1) * e_shentsize]) for i in range(e_shnum)]
ro_off = sections[7][4]
table = struct.unpack("<256H", elf[ro_off + 65232 : ro_off + 65232 + 512])

def crc16_msb(data):
    crc = 0
    for b in data:
        crc = ((crc << 8) ^ table[(b ^ ((crc >> 8) & 0xff)) & 0xff]) & 0xffff
    return crc

for n in range(1, 40):
    data = b"\x16\x99" + b"\x00" * n
    c = crc16_msb(data)
    if c in (0xd731, 0x696b, 0xdcc2):
        print(f"len={len(data)}: crc={c:#06x}")
    else:
        print(f"len={len(data)}: crc={c:#06x}")