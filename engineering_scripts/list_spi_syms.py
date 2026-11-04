from elftools.elf.elffile import ELFFile
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\spi-sprd.ko', 'rb') as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name('.symtab')
    for s in symtab.iter_symbols():
        if s['st_info']['type'] == 'STT_FUNC':
            print(f"0x{s['st_value']:05x}: {s.name} (size={s['st_size']})")