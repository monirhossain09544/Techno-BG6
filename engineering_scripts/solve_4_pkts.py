import struct
from elftools.elf.elffile import ELFFile

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    rodata = ELFFile(f).get_section_by_name('.rodata').data()
tbl = struct.unpack('<256H', rodata[0xfed0:0xfed0+512])
def crc16(data):
    c = 0
    for b in data:
        c = (tbl[((c >> 8) ^ b) & 0xff] ^ ((c << 8) & 0xffff)) & 0xffff
    return c

# Wait! In 0x4005 (get_fw_ver + get_lib_ver):
# Expected payload is fw_ver (08 01) + lib_ver (?? ??) + echo cmd (05 40) + crc (2 bytes)!
# Wait: why would rxbuf[7..8] be 03 01?!
# What if the response in rxbuf is SHIFTED or what if the chip returned something specific?
# Let's check 4-byte sequences for 0x00b2 (from 0x4206 1) and 0x80f9 (from 0x4242 1)!
# Notice in 0x4206, cmd echo is 06 42 or 06 02! In 0x4242, cmd echo is 42 42 or 42 02!
for b0 in range(256):
    for b1 in range(256):
        for cmd in [b'\x06\x42', b'\x06\x02', b'\x42\x42', b'\x42\x02']:
            p = bytes([b0, b1]) + cmd
            c = crc16(p)
            if c in (0x00b2, 0x80f9):
                print(f"Match {hex(c)}: {p.hex()}")

# What if the last 2 bytes of the 4-byte prefix are something else? Let's brute force 2 bytes + known bytes, or inverse CRC!
# Wait: we can invert CRC-16 by 2 bytes easily!
# Suppose for 0x00b2 (0x4206) and 0x80f9 (0x4242), they only differ in 1 or 2 bytes!
# Look: 0x00b2 ^ 0x80f9 = 0x804b!
# Look at tbl: which entry in tbl is 0x804b?!
for i, v in enumerate(tbl):
    if v == (0x00b2 ^ 0x80f9):
        print(f"tbl[{hex(i)}] == 0x00b2 ^ 0x80f9 == {hex(v)}! (i = {hex(i)}, 0x06 ^ 0x42 = {hex(0x06 ^ 0x42)})")
