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

old5 = b"\x16\x99\x00\x00\x00"
new5 = b"\x00\x42\x22\xc9\x0c"
diff = bytes([a ^ b for a, b in zip(old5, new5)]) + b"\x00" * 39
c_diff = crc16_msb(diff)
print(f"0xdcc2 ^ c_diff = 0x{0xdcc2 ^ c_diff:04x} (target: 0xc0cb)")