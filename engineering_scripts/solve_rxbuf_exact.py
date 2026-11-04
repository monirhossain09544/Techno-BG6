import struct
from elftools.elf.elffile import ELFFile

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    rodata = ELFFile(f).get_section_by_name('.rodata').data()
tbl = struct.unpack('<256H', rodata[0xfed0:0xfed0+512])
def crc_step(c, data):
    for b in data:
        c = (tbl[((c >> 8) ^ b) & 0xff] ^ ((c << 8) & 0xffff)) & 0xffff
    return c

# Suppose after 4 bytes, crc is c4 = 0x00b2 ^ tbl[diff] (if only rxbuf[3] changed!)
for diff in range(256):
    c4 = 0x00b2 ^ tbl[diff]
    for b6 in range(256):
        if crc_step(c4, bytes([0x00, 0x8f, b6])) == 0x4a09:
            print(f"FOUND! diff={hex(diff)}, c4={hex(c4)}, b6={hex(b6)}")
