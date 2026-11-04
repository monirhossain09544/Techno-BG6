from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    text = elf.get_section_by_name('.text').data()
    rodata = elf.get_section_by_name('.rodata').data()
    symtab = elf.get_section_by_name('.symtab')

    func_syms = {s['st_value']: s.name for s in symtab.iter_symbols() if s['st_info']['type'] == 'STT_FUNC'}
    relocs = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and sec.name == '.rela.text':
            for r in sec.iter_relocations():
                sym = symtab.get_symbol(r['r_info_sym'])
                name = sym.name or elf.get_section(sym['st_shndx']).name
                addend = r['r_addend']
                s_val = ""
                if name == '.rodata' and 0 <= addend < len(rodata):
                    end = rodata.find(b'\x00', addend)
                    if end != -1:
                        s_val = f' "{rodata[addend:end].decode("latin1", errors="replace").strip()}"'
                relocs[r['r_offset']] = f"{name}+0x{addend:x}{s_val}"

for off in range(0x6f60, 0x7700, 4):
    if off in func_syms:
        print(f"\n--- 0x{off:x} <{func_syms[off]}> ---")
    insn = struct.unpack_from('<I', text, off)[0]
    rel = relocs.get(off, "")
    print(f"  {off:05x}: {insn:08x}  {rel}")
