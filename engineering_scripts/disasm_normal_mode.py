from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko", "rb") as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name(".symtab")
    text_sec = elf.get_section_by_name(".text")
    text_data = text_sec.data()
    text_idx = elf.get_section_index(".text")
    
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

    funcs = {}
    for sym in symtab.iter_symbols():
        if sym["st_shndx"] == text_idx and sym["st_info"]["type"] == "STT_FUNC":
            funcs[sym.name] = (sym["st_value"], sym["st_size"])

    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    for fname in ["cts_plat_is_normal_mode", "cts_request_firmware", "cts_update_firmware", "cts_init_fw_data"]:
        if fname not in funcs:
            print(f"Not found: {fname}")
            continue
        off, sz = funcs[fname]
        print(f"\n=== {fname} (0x{off:x}, size=0x{sz:x}) ===")
        for insn in md.disasm(text_data[off:off+sz], off):
            note = f"  ; {relocs[insn.address]}" if insn.address in relocs else ""
            print(f"  0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}{note}")
