from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

path = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko"
with open(path, "rb") as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name(".symtab")
    targets = []
    for s in symtab.iter_symbols():
        if s['st_shndx'] != 'SHN_UNDEF' and s['st_size'] > 0:
            if "store" in s.name or (0x24b00 <= s['st_value'] <= 0x28500):
                targets.append((s.name, s['st_value'], s['st_size']))
    for name, start, size in sorted(targets, key=lambda x: x[1]):
        print(f"0x{start:05x} (0x{size:04x}): {name}")
