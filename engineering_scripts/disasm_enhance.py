from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_enhance.unisoc.so', 'rb') as f:
    elf = ELFFile(f)
    dynsym = elf.get_section_by_name('.dynsym')
    rodata_sec = elf.get_section_by_name('.rodata')
    rodata = rodata_sec.data()
    rodata_vaddr = rodata_sec['sh_addr']
    text_sec = elf.get_section_by_name('.text')
    text = text_sec.data()
    text_vaddr = text_sec['sh_addr']

    for sym in dynsym.iter_symbols():
        if sym['st_value'] != 0:
            print(f"Sym: 0x{sym['st_value']:x} (size 0x{sym['st_size']:x}): {sym.name}")
