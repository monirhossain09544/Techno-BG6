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

pkt9 = b"\x16\x99\x00\x00\x00\x03\x40\x27\x0d"
print(f"crc16_msb(pkt9[:7]) = 0x{crc16_msb(pkt9[:7]):04x} (recv = 0x{struct.unpack_from('<H', pkt9, 7)[0]:04x})")
pkt46 = pkt9 + b"\x00" * 37
print(f"crc16_msb(pkt46[:44]) = 0x{crc16_msb(pkt46[:44]):04x} (recv = 0x{struct.unpack_from('<H', pkt46, 44)[0]:04x})")