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

def decode_arm64(addr, insn):
    if (insn & 0xfc000000) == 0x94000000:
        imm26 = insn & 0x3ffffff
        if imm26 & 0x2000000: imm26 -= 0x4000000
        return f"bl 0x{addr + imm26*4:x}"
    if (insn & 0xfc000000) == 0x14000000:
        imm26 = insn & 0x3ffffff
        if imm26 & 0x2000000: imm26 -= 0x4000000
        return f"b 0x{addr + imm26*4:x}"
    if (insn & 0xff000010) == 0x54000000:
        imm19 = (insn >> 5) & 0x7ffff
        if imm19 & 0x40000: imm19 -= 0x80000
        cond = ['eq','ne','hs','lo','mi','pl','vs','vc','hi','ls','ge','lt','gt','le','al','nv'][insn & 0xf]
        return f"b.{cond} 0x{addr + imm19*4:x}"
    if (insn & 0x7e000000) == 0x34000000:
        op = "cbnz" if (insn & 0x01000000) else "cbz"
        sf = "x" if (insn & 0x80000000) else "w"
        imm19 = (insn >> 5) & 0x7ffff
        if imm19 & 0x40000: imm19 -= 0x80000
        rt = insn & 0x1f
        return f"{op} {sf}{rt}, 0x{addr + imm19*4:x}"
    if (insn & 0xffc00000) == 0xf9400000:
        imm12 = ((insn >> 10) & 0xfff) * 8
        rn = (insn >> 5) & 0x1f
        rt = insn & 0x1f
        return f"ldr x{rt}, [x{rn}, #0x{imm12:x}]"
    if (insn & 0xffc00000) == 0xb9400000:
        imm12 = ((insn >> 10) & 0xfff) * 4
        rn = (insn >> 5) & 0x1f
        rt = insn & 0x1f
        return f"ldr w{rt}, [x{rn}, #0x{imm12:x}]"
    if (insn & 0xffc00000) == 0x39400000:
        imm12 = (insn >> 10) & 0xfff
        rn = (insn >> 5) & 0x1f
        rt = insn & 0x1f
        return f"ldrb w{rt}, [x{rn}, #0x{imm12:x}]"
    if (insn & 0xffc00000) == 0x39000000:
        imm12 = (insn >> 10) & 0xfff
        rn = (insn >> 5) & 0x1f
        rt = insn & 0x1f
        return f"strb w{rt}, [x{rn}, #0x{imm12:x}]"
    if insn == 0xd65f03c0:
        return "ret"
    return f"raw 0x{insn:08x}"

for start, end, label in [
    (0x2850, 0x2b00, "0x2850..0x2b00"),
    (0x9c80, 0xa350, "0x9c80..0xa350"),
]:
    print(f"\n================ {label} ================")
    for off in range(start, end, 4):
        if off in func_syms:
            print(f"\n--- 0x{off:x} <{func_syms[off]}> ---")
        insn = struct.unpack_from('<I', text, off)[0]
        dec = decode_arm64(off, insn)
        rel = relocs.get(off, "")
        print(f"  {off:05x}: {insn:08x}  {dec:28s} {rel}")
