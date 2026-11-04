import struct
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    ko = f.read()

e_shoff = struct.unpack_from('<Q', ko, 40)[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack_from('<HHH', ko, 58)
shoff2 = e_shoff + 2 * e_shentsize
sh_offset2 = struct.unpack_from('<Q', ko, shoff2 + 24)[0]
text = ko[sh_offset2:]

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
for insn in md.disasm(text[0x12414:0x125a0], 0x12414):
    print(f"0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}")