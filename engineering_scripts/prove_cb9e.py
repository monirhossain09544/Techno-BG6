import struct

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    ko = f.read()

e_shoff = struct.unpack_from('<Q', ko, 40)[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack_from('<HHH', ko, 58)
shoff7 = e_shoff + 7 * e_shentsize
sh_offset7 = struct.unpack_from('<Q', ko, shoff7 + 24)[0]
crc_tab = [struct.unpack_from('<H', ko, sh_offset7 + 65232 + i*2)[0] for i in range(256)]

def crc16_msb(data):
    w2 = 0
    for b in data:
        idx = ((w2 >> 8) ^ b) & 0xff
        w2 = ((w2 << 8) ^ crc_tab[idx]) & 0xffff
    return w2

# Suppose Set charger enable:1 (rxlen=5) wrote a valid 5-byte response [b0, b1, b2, crc_lo, crc_hi] into rxbuf[0..4],
# and rxbuf[5] is STILL 0x03!
# Then for rxlen=6, recv = *(uint16_t*)(rxbuf+4) = 0x030c -> so rxbuf[4] (crc_hi) MUST be 0x0c, and rxbuf[5] = 0x03!
# And calc for rxlen=6 is crc16_msb(rxbuf[0..3]) = crc16_msb([b0, b1, b2, crc_lo]) == 0xcb9e!
for cmd in range(65536):
    b0 = 0x00
    b1 = cmd & 0xff
    b2 = (cmd >> 8) & 0xff
    c3 = crc16_msb(bytes([b0, b1, b2]))
    crc_lo = c3 & 0xff
    crc_hi = (c3 >> 8) & 0xff
    if crc_hi == 0x0c:
        c4 = crc16_msb(bytes([b0, b1, b2, crc_lo]))
        if c4 == 0xcb9e:
            print(f"EUREKA!! cmd=0x{cmd:04x}, pkt5={bytes([b0, b1, b2, crc_lo, crc_hi]).hex(' ')}, c4=0x{c4:04x}!")