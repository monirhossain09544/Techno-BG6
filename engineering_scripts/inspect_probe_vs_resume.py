from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
import struct

def disasm_funcs(ko_path, target_funcs):
    with open(ko_path, "rb") as f:
        elf = ELFFile(f)
        symtab = elf.get_section_by_name(".symtab")
        strtab = elf.get_section_by_name(".strtab")
        text_sec = elf.get_section_by_name(".text")
        text_idx = elf.get_section_index(".text")
        text_data = text_sec.data()

        # Map rodata strings
        rodata_strings = {}
        for sec in elf.iter_sections():
            if sec.name.startswith(".rodata"):
                sidx = elf.get_section_index(sec.name)
                rodata_strings[sidx] = sec.data()

        # Map relocations for .text
        relocs = {}
        rela_text = elf.get_section_by_name(".rela.text")
        if rela_text:
            for r in rela_text.iter_relocations():
                sym = symtab.get_symbol(r["r_info_sym"])
                sname = sym.name
                addend = r["r_addend"]
                shndx = sym["st_shndx"]
                val = sym["st_value"] + addend
                desc = f"{sname}+{hex(addend)}" if addend else sname
                if shndx in rodata_strings:
                    rdata = rodata_strings[shndx]
                    if 0 <= val < len(rdata):
                        end = rdata.find(b"\x00", val)
                        if end != -1:
                            s = rdata[val:end].decode("utf-8", errors="replace")
                            if s.isprintable() or "\n" in s:
                                desc = f'"{s.strip()}"'
                relocs[r["r_offset"]] = desc

        funcs = {}
        for sym in symtab.iter_symbols():
            if sym["st_shndx"] == text_idx and sym["st_info"]["type"] == "STT_FUNC":
                funcs[sym.name] = (sym["st_value"], sym["st_size"])

        md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
        for fname in target_funcs:
            if fname not in funcs:
                print(f"Function {fname} not found")
                continue
            off, size = funcs[fname]
            print(f"\n=== {fname} (0x{off:x}, size=0x{size:x}) ===")
            code = text_data[off:off+size]
            for insn in md.disasm(code, off):
                note = f"  ; {relocs[insn.address]}" if insn.address in relocs else ""
                print(f"  0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}{note}")

disasm_funcs(
    r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko",
    ["cts_driver_probe", "cts_init_touch_device", "cts_resume_device", "cts_suspend_device", "cts_plat_reset_device", "cts_reset_device"]
)
