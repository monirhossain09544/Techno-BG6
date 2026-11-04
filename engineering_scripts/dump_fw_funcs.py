import struct
from elftools.elf.elffile import ElfFile

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ElfFile(f)
    symtab = elf.get_section_by_name('.symtab')
    strtab = elf.get_section_by_name('.strtab')
    text = elf.get_section_by_name('.text')
    text_data = text.data()
    rodata_str = elf.get_section_by_name('.rodata.str1.1')
    rodata_str_sec = elf.get_section_index('.rodata.str1.1')
    rodata_data = rodata_str.data()

    rela_text = elf.get_section(22)
    relocs = {}
    for rel in rela_text.iter_relocations():
        off = rel['r_offset']
        sym_idx = rel['r_info_sym']
        sym = symtab.get_symbol(sym_idx)
        addend = rel['r_addend']
        if sym.name:
            relocs[off] = f"{sym.name}+{hex(addend)}"
        elif sym['st_shndx'] == rodata_str_sec:
            end = rodata_data.find(b'\x00', addend)
            s = rodata_data[addend:end].decode('latin1', errors='replace')
            relocs[off] = f"+{hex(addend)} {repr(s)}"
        else:
            relocs[off] = f"sec_{sym['st_shndx']}+{hex(addend)}"

    def dump_func(name, start, size):
        print(f"\n=== {name} ({hex(start)}, size={hex(size)}) ===")
        for off in range(start, start + size, 4):
            insn = struct.unpack_from('<I', text_data, off)[0]
            rel_str = f"  <-- {relocs[off]}" if off in relocs else ""
            print(f"  +{off-start:03x} ({off:05x}): {insn:08x}{rel_str}")

    for s in symtab.iter_symbols():
        if s.name in ('cts_request_firmware', 'cts_update_firmware', 'cts_enter_program_mode', 'cts_enter_normal_mode', 'cts_plat_is_normal_mode'):
            dump_func(s.name, s['st_value'], s['st_size'])
