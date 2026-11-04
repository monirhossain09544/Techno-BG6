from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name('.symtab')
    sec11 = elf.get_section(11)
    print("Section 11:", sec11.name)
    func_syms = {s['st_value']: s.name for s in symtab.iter_symbols() if s['st_info']['type'] == 'STT_FUNC'}
    ro_syms = {s['st_value']: s.name for s in symtab.iter_symbols() if s['st_shndx'] == 11 and s.name and not s.name.startswith('$')}

    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and sec['sh_info'] == 11:
            for r in sec.iter_relocations():
                off = r['r_offset']
                sym = symtab.get_symbol(r['r_info_sym'])
                name = sym.name or elf.get_section(sym['st_shndx']).name
                add = r['r_addend']
                if 0x9130 <= off < 0x9148 or 0xb248 <= off < 0xb400:
                    extra = func_syms.get(add, ro_syms.get(add, ""))
                    print(f"  0x{off:x}: {name}+0x{add:x} ({extra})")
