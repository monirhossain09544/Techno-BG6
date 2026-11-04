from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
    for i, sec in enumerate(elf.iter_sections()):
        if isinstance(sec, RelocationSection):
            print(f"Reloc sec {i}: {sec.name} (info={sec['sh_info']})")
    text_sec = elf.get_section_by_name('.text')
    text = text_sec.data()
    symtab = elf.get_section_by_name('.symtab')

    relocs = {}
    for sec in elf.iter_sections():
        if isinstance(sec, RelocationSection) and elf.get_section(sec['sh_info']).name == '.text':
            for r in sec.iter_relocations():
                sym = symtab.get_symbol(r['r_info_sym'])
                name = sym.name
                if not name:
                    tsec = elf.get_section(sym['st_shndx'])
                    name = f"{tsec.name}+0x{r['r_addend']:x}"
                    if 'rodata' in tsec.name:
                        s = tsec.data()[r['r_addend']:r['r_addend']+80].split(b'\x00')[0].decode('latin1', errors='replace')
                        name += f" ({repr(s)})"
                elif r['r_addend']:
                    name += f"+0x{r['r_addend']:x}"
                relocs[r['r_offset']] = name

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
def dis(start, size, title):
    print(f"=== {title} (0x{start:x}, size={size}) ===")
    for insn in md.disasm(text[start:start+size], start):
        rel = relocs.get(insn.address, "")
        if rel or insn.mnemonic in ('bl', 'b'):
            print(f"0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str:30s} {('; ' + rel) if rel else ''}")

dis(0x167d4, 548, "cts_request_firmware")
dis(0x1fba0, 464, "cts_firmware_upgrade_work")
dis(0x1dfa8, 572, "cts_resume_device")
dis(0x16dcc, 1540, "cts_driver_probe")