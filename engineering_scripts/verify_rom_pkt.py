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

rom_pkt = b"\x16\x99\x00\x00\x00\x00\x00\xf0\x2f"
print("9-byte ROM pkt CRC over first 7 bytes:", hex(crc16_msb(rom_pkt[:7])))
print("5-byte prefix CRC over first 3 bytes:", hex(crc16_msb(rom_pkt[:3])))
for pad in range(1, 60):
    c = crc16_msb(rom_pkt + b"\x00" * pad)
    if c == 0xdcc2:
        print(f"MATCH 0xdcc2 at pad={pad} (total len={9+pad+2})!")