from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\spi-sprd.ko', 'rb') as f:
    elf = ELFFile(f)
    text_sec = elf.get_section_by_name('.text')
    text = text_sec.data()
    symtab = elf.get_section_by_name('.symtab')

    relocs = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and sec.name == '.rela.text':
            for r in sec.iter_relocations():
                sym = symtab.get_symbol(r['r_info_sym'])
                name = sym.name
                if not name and sym['st_info']['type'] == 'STT_SECTION':
                    tsec = elf.get_section(sym['st_shndx'])
                    name = f"{tsec.name}+0x{r['r_addend']:x}"
                elif r['r_addend']:
                    name += f"+0x{r['r_addend']:x}"
                relocs[r['r_offset']] = name

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
for insn in md.disasm(text[0x09b8:0x1000], 0x09b8):
    rel = relocs.get(insn.address, "")
    print(f"0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str:30s} {('; ' + rel) if rel else ''}")