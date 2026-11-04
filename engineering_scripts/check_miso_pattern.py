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

# Wait: what if the chip echoes a fixed byte or status on MISO when in ROM/Bootloader mode?!
# For example, what if MISO sends a constant byte or pattern?
for b in range(256):
    c3 = crc16_msb(bytes([b]*3))
    c7 = crc16_msb(bytes([b]*7))
    if c3 in (0xd731, 0x696b) or c7 == 0xdcc2:
        print(f"Constant byte {b:#04x}: c3={c3:#06x}, c7={c7:#06x}")

# What if byte 0 is something and bytes 1..N are 0x00 or 0xff?
for b0 in range(256):
    for b1 in range(256):
        c3 = crc16_msb(bytes([b0, b1, 0]))
        if c3 in (0xd731, 0x696b):
            print(f"[b0, b1, 00]: {b0:02x} {b1:02x} 00 -> {c3:#06x}")
        c3_ff = crc16_msb(bytes([b0, b1, 0xff]))
        if c3_ff in (0xd731, 0x696b):
            print(f"[b0, b1, ff]: {b0:02x} {b1:02x} ff -> {c3_ff:#06x}")