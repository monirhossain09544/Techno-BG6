from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    text = elf.get_section_by_name('.text').data()
    rodata = elf.get_section_by_name('.rodata').data()
    symtab = elf.get_section_by_name('.symtab')

    func_syms = {}
    for sym in symtab.iter_symbols():
        if sym['st_info']['type'] == 'STT_FUNC':
            func_syms[sym['st_value']] = (sym.name, sym['st_size'])

    relocs = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and sec.name == '.rela.text':
            for r in sec.iter_relocations():
                sym = symtab.get_symbol(r['r_info_sym'])
                name = sym.name
                addend = r['r_addend']
                if not name:
                    s_sec = elf.get_section(sym['st_shndx'])
                    name = s_sec.name
                s_val = ""
                if name == '.rodata' and 0 <= addend < len(rodata):
                    end = rodata.find(b'\x00', addend)
                    if end != -1:
                        s_val = f' "{rodata[addend:end].decode("latin1", errors="replace").strip()}"'
                elif name == '.text' and addend in func_syms:
                    s_val = f' ({func_syms[addend][0]})'
                relocs[r['r_offset']] = f"{name}+0x{addend:x}{s_val}"

for target in ['dpu_init', 'dpu_fini', 'dpu_run', 'dpu_stop', 'dpu_flip', 'dpu_modeset', 'sprd_dsi_vrr_timing']:
    for addr, (name, size) in sorted(func_syms.items()):
        if name == target or target in name:
            print(f"\n=== 0x{addr:x} (size 0x{size:x}): {name} ===")
            for off in range(addr, addr + size, 4):
                rel = relocs.get(off, "")
                if rel:
                    print(f"  0x{off:x}: {rel}")
