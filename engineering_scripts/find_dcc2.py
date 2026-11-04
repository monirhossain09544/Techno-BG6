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

pkt9 = b"\x16\x99\x00\x00\x00\x03\x40\x73\xa4"
for pad in range(256):
    for prefix_len in range(20):
        buf = (bytes([pad])*prefix_len + pkt9 + bytes([pad])*50)[:44]
        if crc16_msb(buf) == 0xdcc2:
            print(f"MATCH pad=0x{pad:02x}, prefix_len={prefix_len}!")
        buf2 = (pkt9 * 10)[:44]
        if crc16_msb(buf2) == 0xdcc2 and pad == 0 and prefix_len == 0:
            print("MATCH repeating pkt9!")