from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    text = elf.get_section_by_name('.text').data()
    rodata = elf.get_section_by_name('.rodata').data()
    symtab = elf.get_section_by_name('.symtab')
    
    relocs = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and 'text' in sec.name:
            print("Reloc section:", sec.name)
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
                        s_val = f' -> "{rodata[addend:end].decode("latin1", errors="replace").strip()}"'
                relocs[r['r_offset']] = f"{name}+0x{addend:x}{s_val}"

    funcs = []
    for sym in symtab.iter_symbols():
        if sym['st_info']['type'] == 'STT_FUNC' and 0xc500 <= sym['st_value'] <= 0xe500:
            funcs.append((sym['st_value'], sym['st_size'], sym.name))
    funcs.sort()
    for addr, size, name in funcs:
        print(f"\n=== 0x{addr:x} (size 0x{size:x}): {name} ===")
        for off in range(addr, addr + size, 4):
            insn = struct.unpack_from('<I', text, off)[0]
            rel = relocs.get(off, "")
            if rel:
                print(f"  0x{off:x}: {insn:08x}  [{rel}]")
