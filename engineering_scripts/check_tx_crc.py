from elftools.elf.elffile import ELFFile
from capstone import *
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
    text = elf.get_section_by_name('.text').data()
    rodata = elf.get_section_by_name('.rodata').data()
    symtab = elf.get_section_by_name('.symtab')
    funcs = []
    for s in symtab.iter_symbols():
        if s['st_info']['type'] == 'STT_FUNC':
            funcs.append((s['st_value'], s['st_size'], s.name))
    funcs.sort()

tbl = struct.unpack('<256H', rodata[0xfed0:0xfed0+512])
def crc16(data):
    c = 0
    for b in data:
        c = (tbl[((c >> 8) ^ b) & 0xff] ^ ((c << 8) & 0xffff)) & 0xffff
    return c

print("crc16(f0 42 22 01 00):", hex(crc16(bytes.fromhex("f042220100"))))
print("crc16(f0 2a 29 01 00):", hex(crc16(bytes.fromhex("f02a290100"))))
print("tbl[0x40]:", hex(tbl[0x40]), "tbl[0x28]:", hex(tbl[0x28]), "tbl[0xf0]:", hex(tbl[0xf0]))

# Wait! Let's check what cts_edge_restain_store and cts_tcs_set_proximity_mode ACTUALLY compute!
def sim_edge(direction=0):
    # 0x09e24: w10 = 0x00012242
    # txbuf[1..4] = 42 22 01 00
    # 0x09e3c: w12 = tbl[0x80 // 2] = tbl[0x40]
    w12 = tbl[0x40]
    w10 = 0x22
    w14 = 0x00
    x10 = (w10 ^ (w12 >> 8)) ^ 0x20
    w10 = tbl[x10 & 0xff]
    w13 = tbl[direction & 0xff]
    w12 = (w10 ^ ((w12 << 8) & 0xffff)) & 0xffff
    w12 = ((w12 >> 8) & 0xff) ^ 1
    w12 = tbl[w12]
    w10 = (w12 ^ ((w10 << 8) & 0xffff)) & 0xffff
    w10 = ((w10 >> 8) & 0xff) ^ w14
    w10 = tbl[w10]
    crc1 = (w10 ^ ((w12 << 8) & 0xffff)) & 0xffff
    crc2 = w13
    pkt = struct.pack('<BHHHBH', 0xf0, 0x2242, 0x0001, crc1, direction, crc2)
    return pkt, crc1, crc16(pkt[:5]), crc2, crc16(pkt[7:8])

def sim_prox(enable=1):
    # 0x14560: w12 = 0x0001292a
    # 0x14584: w14 = tbl[0x50 // 2] = tbl[0x28]
    w14 = tbl[0x28]
    w8 = 0x29
    w9 = 0x00
    x8 = (w8 ^ (w14 >> 8)) ^ 0x20
    w8 = tbl[x8 & 0xff]
    w12 = tbl[enable & 0xff]
    w14 = (w8 ^ ((w14 << 8) & 0xffff)) & 0xffff
    w14 = ((w14 >> 8) & 0xff) ^ 1
    w14 = tbl[w14]
    w8 = (w14 ^ ((w8 << 8) & 0xffff)) & 0xffff
    w8 = ((w8 >> 8) & 0xff) ^ w9
    w8 = tbl[w8]
    crc1 = (w8 ^ ((w14 << 8) & 0xffff)) & 0xffff
    crc2 = w12
    pkt = struct.pack('<BHHHBH', 0xf0, 0x292a, 0x0001, crc1, enable, crc2)
    return pkt, crc1, crc16(pkt[:5]), crc2, crc16(pkt[7:8])

print("sim_edge:", sim_edge())
print("sim_prox:", sim_prox())
