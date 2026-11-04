import struct
from elftools.elf.elffile import ELFFile

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    rodata = ELFFile(f).get_section_by_name('.rodata').data()
tbl = struct.unpack('<256H', rodata[0xfed0:0xfed0+512])
def crc_step(c, data):
    for b in data:
        c = (tbl[((c >> 8) ^ b) & 0xff] ^ ((c << 8) & 0xffff)) & 0xffff
    return c

# Look at sz=4..10:
# sz=4 (rxbuf[0..6], recv=0b 01): calc=0xf83c
# sz=5 (rxbuf[0..7], recv=01 01): calc=0xbf55
# sz=6 (rxbuf[0..8], recv=01 b9): calc=0xa487
# sz=7 (rxbuf[0..9], recv=b9 01): calc=0x0765
# sz=8 (rxbuf[0..10], recv=01 7d): calc=0xb281
# sz=9 (rxbuf[0..11], recv=7d 04): calc=0x825a
# sz=10 (rxbuf[0..12], recv=04 02): calc=0xc807
# Wait! If rxbuf[0..3] changes on each call (because rxbuf[0..4] is a 5-byte response or echo!),
# what if we find c4 for each sz by working BACKWARDS from calc[sz] using the known bytes rxbuf[4..sz+2]?!
inv_tbl = {}
for i, v in enumerate(tbl):
    inv_tbl[v >> 8] = (i, v)

def crc_inv_byte(c, b):
    # c = tbl[idx] ^ ((prev_c & 0xff) << 8)
    # Wait: the low byte of c comes ONLY from tbl[idx] & 0xff!
    # Let's check if tbl[idx] & 0xff is a bijection!
    matches = []
    for idx, v in enumerate(tbl):
        if (v & 0xff) == (c & 0xff):
            prev_lo = ((c ^ v) >> 8) & 0xff
            prev_hi = idx ^ b
            matches.append((prev_hi << 8) | prev_lo)
    return matches

def crc_inv(c, data):
    states = [c]
    for b in reversed(data):
        nxt = []
        for s in states:
            nxt.extend(crc_inv_byte(s, b))
        states = nxt
    return states

# Known bytes from recv:
# rxbuf[4] = 0x01
# rxbuf[5] = 0x0a
# rxbuf[6] = 0x04
# rxbuf[7] = 0x09 (or 0x0b in sz=4!)
# rxbuf[8] = 0x01
# rxbuf[9] = 0x01
# rxbuf[10] = 0xb9
# rxbuf[11] = 0x01
# rxbuf[12] = 0x7d
bytes_from_4 = [0x01, 0x0a, 0x04, 0x0b, 0x01, 0x01, 0xb9, 0x01, 0x7d]
calcs = [
    (1, 0x83d7, []),
    (2, 0x580f, [0x01]),
    (3, 0x0ef8, [0x01, 0x0a]),
    (4, 0xf83c, [0x01, 0x0a, 0x04]),
    (5, 0xbf55, [0x01, 0x0a, 0x04, 0x0b]),
    (6, 0xa487, [0x01, 0x0a, 0x04, 0x0b, 0x01]),
    (7, 0x0765, [0x01, 0x0a, 0x04, 0x0b, 0x01, 0x01]),
    (8, 0xb281, [0x01, 0x0a, 0x04, 0x0b, 0x01, 0x01, 0xb9]),
    (9, 0x825a, [0x01, 0x0a, 0x04, 0x0b, 0x01, 0x01, 0xb9, 0x01]),
    (10, 0xc807, [0x01, 0x0a, 0x04, 0x0b, 0x01, 0x01, 0xb9, 0x01, 0x7d]),
]
rev = {v: i for i, v in enumerate(tbl)}
c4s = []
for sz, calc, tail in calcs:
    c4 = crc_inv(calc, tail)[0]
    c4s.append((sz, c4))
for sz, c4 in c4s:
    diff = rev.get(c4 ^ c4s[0][1], -1)
    print(f"sz={sz:2d}: c4 = {hex(c4):6s}, b3 ^ b3_1 = {diff}")
