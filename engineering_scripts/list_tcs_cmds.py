from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
    text_sec = elf.get_section_by_name('.text')
    text = text_sec.data()
    symtab = elf.get_section_by_name('.symtab')

    funcs = {}
    for s in symtab.iter_symbols():
        if s['st_info']['type'] == 'STT_FUNC':
            funcs[s.name] = (s['st_value'], s['st_size'])

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

for name, (start, size) in sorted(funcs.items(), key=lambda x: x[1][0]):
    if 'tcs' in name or 'edge' in name or 'game' in name or 'esd' in name or 'mnt' in name or 'pwr' in name or 'charger' in name or 'earjack' in name or 'proximity' in name:
        print(f"=== {name} (0x{start:x}, size={size}) ===")
        for insn in md.disasm(text[start:start+min(size, 160)], start):
            if insn.mnemonic in ('mov', 'movk', 'orr', 'bl', 'b'):
                print(f"  0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}")
