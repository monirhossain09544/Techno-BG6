from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
import struct

with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko", "rb") as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name(".symtab")
    text_sec = elf.get_section_by_name(".text")
    text_data = text_sec.data()
    
    for idx, sec in enumerate(elf.iter_sections()):
        print(f"[{idx}] {sec.name}: size=0x{sec.data_size:x}")

    # Find all references to 0x42f8 in .text
    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    for insn in md.disasm(text_data, 0):
        if "0x42f8" in insn.op_str:
            print(f"Ref to 0x42f8 at 0x{insn.address:05x}: {insn.mnemonic} {insn.op_str}")
            for sub in md.disasm(text_data[max(0, insn.address-40):insn.address+60], max(0, insn.address-40)):
                print(f"    0x{sub.address:05x}: {sub.mnemonic:8s} {sub.op_str}")
