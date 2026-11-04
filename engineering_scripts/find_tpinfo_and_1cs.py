from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

for name in ["chipone_icnl99xx.ko", "adaptive-ts.ko"]:
    path = rf"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\{name}"
    with open(path, "rb") as f:
        data = f.read()
    for s in [b"touch_firmware", b"0xf1", b"tpinfo", b"1cs crc error", b"tcs_spi_read_1_cs"]:
        idx = data.find(s)
        print(f"{name}: {s} -> {hex(idx) if idx != -1 else 'not found'}")

# Disassemble cts_tcs_spi_read_1_cs and wherever touch_firmware_version is set in chipone_icnl99xx.ko
with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko", "rb") as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name(".symtab")
    text_sec = elf.get_section_by_name(".text")
    text_data = text_sec.data()
    text_idx = elf.get_section_index(".text")
    for sym in symtab.iter_symbols():
        if sym["st_shndx"] == text_idx and sym["st_info"]["type"] == "STT_FUNC":
            if any(k in sym.name for k in ["1_cs", "tpinfo", "hwinfo", "probe", "update", "normal"]):
                print(f"sym: {sym.name} @ 0x{sym['st_value']:x} (size 0x{sym['st_size']:x})")
