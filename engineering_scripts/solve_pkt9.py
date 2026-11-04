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

# We know:
# rxbuf[0..5] = 16 99 00 00 00 03 (Wait: for rxlen=6, recv = *(uint16_t*)(rxbuf+4) = 0x0300 -> rxbuf[4]=0x00, rxbuf[5]=0x03!)
# And for rxlen=9, recv == calc, so *(uint16_t*)(rxbuf+7) == crc16_msb(rxbuf[:7])!
# That only leaves ONE unknown byte: rxbuf[6]!
for b6 in range(256):
    prefix7 = bytes([0x16, 0x99, 0x00, 0x00, 0x00, 0x03, b6])
    c7 = crc16_msb(prefix7)
    pkt9 = prefix7 + struct.pack('<H', c7)
    pkt44 = pkt9 + b'\x00' * 35
    c44 = crc16_msb(pkt44)
    if c44 == 0xdcc2:
        print(f"MATCH! b6=0x{b6:02x}, pkt9={pkt9.hex(' ')}, c7=0x{c7:04x}, c44=0x{c44:04x}")