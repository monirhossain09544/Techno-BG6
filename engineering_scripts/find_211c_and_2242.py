from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
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

    funcs = []
    for s in symtab.iter_symbols():
        if s['st_info']['type'] == 'STT_FUNC':
            funcs.append((s['st_value'], s['st_size'], s.name))
    funcs.sort()

def func_at(addr):
    for start, size, name in funcs:
        if start <= addr < start + size:
            return f"{name}+0x{addr-start:x}"
    return f"0x{addr:x}"

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
for insn in md.disasm(text, 0):
    rel = relocs.get(insn.address, "")
    if "4003" in insn.op_str or "is_normal_mode" in rel or "get_fw_id" in rel or "esd" in rel:
        print(f"{func_at(insn.address)} (0x{insn.address:05x}): {insn.mnemonic} {insn.op_str} ; {rel}")
