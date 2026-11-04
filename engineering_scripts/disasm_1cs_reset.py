from elftools.elf.elffile import ELFFile
from capstone import *

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko', 'rb') as f:
    elf = ELFFile(f)
    text_sec = elf.get_section_by_name('.text')
    text = text_sec.data()

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
print("=== cts_tcs_spi_read_1_cs (0x12414) ===")
for insn in md.disasm(text[0x12414:0x12580], 0x12414):
    print(f"0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}")

print("=== cts_test_reset_pin (0x2dd8) ===")
for insn in md.disasm(text[0x2dd8:0x3080], 0x2dd8):
    print(f"0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}")