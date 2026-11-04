from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    text = elf.get_section_by_name('.text').data()
    rodata = elf.get_section_by_name('.rodata').data()
    symtab = elf.get_section_by_name('.symtab')

    func_by_addr = {fs['st_value']: fs.name for fs in symtab.iter_symbols() if fs['st_info']['type'] == 'STT_FUNC'}
    relocs = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection):
            target_sec = elf.get_section(sec['sh_info'])
            if target_sec.name == '.text':
                for r in sec.iter_relocations():
                    off = r['r_offset']
                    if not (0x6dc0 <= off <= 0x6f80 or 0x25b24 <= off <= 0x25fe0):
                        continue
                    sym = symtab.get_symbol(r['r_info_sym'])
                    name = sym.name or elf.get_section(sym['st_shndx']).name
                    addend = r['r_addend']
                    s_val = ""
                    if name == '.rodata' and 0 <= addend < len(rodata):
                        end = rodata.find(b'\x00', addend)
                        if end != -1:
                            s_val = f' "{rodata[addend:end].decode("ascii", errors="ignore").strip()}"'
                    elif name == '.text' and addend in func_by_addr:
                        s_val = f" <{func_by_addr[addend]}>"
                    relocs[off] = f"{name}+0x{addend:x}{s_val}"

print("=== 0x6dc0..0x6f80 ===")
for off in range(0x6dc0, 0x6f80, 4):
    insn = struct.unpack_from('<I', text, off)[0]
    rel = relocs.get(off, "")
    if rel:
        print(f"  0x{off:05x}: {insn:08x}  [{rel}]")

print("=== 0x25b24..0x25fe0 ===")
for off in range(0x25b24, 0x25fe0, 4):
    insn = struct.unpack_from('<I', text, off)[0]
    rel = relocs.get(off, "")
    if rel:
        print(f"  0x{off:05x}: {insn:08x}  [{rel}]")
