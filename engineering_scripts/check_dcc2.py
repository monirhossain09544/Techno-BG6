from elftools.elf.elffile import ELFFile
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
    rodata = elf.get_section_by_name('.rodata').data()
    tbl = struct.unpack('<256H', rodata[0xfed0:0xfed0+512])

def crc16(data):
    c = 0
    for b in data:
        c = ((tbl[b ^ ((c >> 8) & 0xff)] ^ (c << 8)) & 0xffff)
    return c

for n in range(1, 150):
    buf = b'\x16\x99' + b'\x00' * (n - 2)
    c = crc16(buf)
    if c in (0xd731, 0xdcc2):
        print(f"len={n} (rxlen={n+2}): crc=0x{c:04x}")
