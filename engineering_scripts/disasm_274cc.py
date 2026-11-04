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
                    if not (0x271f0 <= off <= 0x28600):
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

for off in range(0x274cc, 0x28000, 4):
    if off in func_by_addr:
        print(f"\n--- 0x{off:x} <{func_by_addr[off]}> ---")
    insn = struct.unpack_from('<I', text, off)[0]
    rel = relocs.get(off, "")
    desc = f"{insn:08x}"
    if (insn & 0xffc00000) == 0xf9400000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = ((insn >> 10) & 0xfff) * 8
        desc += f"  ldr x{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0xffc00000) == 0xb9400000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = ((insn >> 10) & 0xfff) * 4
        desc += f"  ldr w{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0xffc00000) == 0x79400000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = ((insn >> 10) & 0xfff) * 2
        desc += f"  ldrh w{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0xffc00000) == 0x39400000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = (insn >> 10) & 0xfff
        desc += f"  ldrb w{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0xffc00000) == 0xf9000000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = ((insn >> 10) & 0xfff) * 8
        desc += f"  str x{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0xffc00000) == 0xb9000000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = ((insn >> 10) & 0xfff) * 4
        desc += f"  str w{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0xffc00000) == 0x39000000:
        rt = insn & 0x1f; rn = (insn >> 5) & 0x1f; imm = (insn >> 10) & 0xfff
        desc += f"  strb w{rt}, [x{rn}, #0x{imm:x}]"
    elif (insn & 0x7e000000) == 0x34000000:
        rt = insn & 0x1f; imm19 = (insn >> 5) & 0x7ffff
        if imm19 & (1 << 18): imm19 -= (1 << 19)
        op = "cbnz" if (insn & 0x01000000) else "cbz"
        desc += f"  {op} w{rt}, 0x{off + (imm19 << 2):x}"
    elif (insn & 0xff000010) == 0x54000000:
        imm19 = (insn >> 5) & 0x7ffff
        if imm19 & (1 << 18): imm19 -= (1 << 19)
        cond = ['eq','ne','hs','lo','mi','pl','vs','vc','hi','ls','ge','lt','gt','le','al','nv'][insn & 0xf]
        desc += f"  b.{cond} 0x{off + (imm19 << 2):x}"
    print(f"  {off:05x}: {desc}  {rel}")
