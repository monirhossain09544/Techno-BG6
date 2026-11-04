from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
    text_sec = elf.get_section_by_name('.text')
    text = text_sec.data()
    symtab = elf.get_section_by_name('.symtab')

    for s in symtab.iter_symbols():
        if s['st_info']['type'] == 'STT_FUNC' and any(k in s.name for k in ['init', 'probe', 'resume', 'suspend', 'fw', 'firmware', 'boot', 'reset']):
            print(f"0x{s['st_value']:05x}: {s.name} (size={s['st_size']})")