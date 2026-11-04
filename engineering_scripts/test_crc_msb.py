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

for b0 in [0, 0xe1, 0xf0, 0xf1, 0x16, 0x99, 0xff]:
    for b1 in range(256):
        for b2 in range(256):
            c = crc16_msb(bytes([b0, b1, b2]))
            if c in (0xd731, 0x696b):
                print(f"CRC {c:#06x} from: {b0:02x} {b1:02x} {b2:02x}")