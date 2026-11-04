from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko", "rb") as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name(".symtab")
    text_sec = elf.get_section_by_name(".text")
    text_data = text_sec.data()
    
    rodata_map = {}
    for idx, sec in enumerate(elf.iter_sections()):
        if "rodata" in sec.name:
            rodata_map[idx] = sec.data()

    relocs = {}
    for sec in elf.iter_sections():
        if sec.name.startswith(".rela.text"):
            for r in sec.iter_relocations():
                sym = symtab.get_symbol(r["r_info_sym"])
                sname = sym.name
                addend = r["r_addend"]
                shndx = sym["st_shndx"]
                val = sym["st_value"] + addend
                desc = f"{sname}+{hex(addend)}" if addend else sname
                if shndx in rodata_map:
                    rdata = rodata_map[shndx]
                    if 0 <= val < len(rdata):
                        end = rdata.find(b"\x00", val)
                        if end != -1:
                            s = rdata[val:end].decode("utf-8", errors="replace").replace("\n", "\\n")
                            desc = f'"{s}"'
                relocs[r["r_offset"]] = desc

    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    for insn in md.disasm(text_data[0x1dfa8:0x1dfa8+0x23c], 0x1dfa8):
        note = f"  ; {relocs[insn.address]}" if insn.address in relocs else ""
        print(f"  0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}{note}")
