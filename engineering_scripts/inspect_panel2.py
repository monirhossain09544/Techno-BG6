from elftools.elf.elffile import ELFFile
import subprocess, shutil

for tool in ['llvm-objdump', 'aarch64-linux-android-objdump', 'objdump']:
    p = shutil.which(tool)
    if p:
        print("Found local tool:", p)

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name('.symtab')
    for sym in symtab.iter_symbols():
        shndx = sym['st_shndx']
        if isinstance(shndx, int) and shndx < elf.num_sections():
            sec = elf.get_section(shndx)
            if sec.name in ('.bss', '.data'):
                print(f"{sec.name}+0x{sym['st_value']:x} (size 0x{sym['st_size']:x}): {sym.name}")
        if sym['st_info']['type'] == 'STT_FUNC' and 0xc000 <= sym['st_value'] <= 0xe500:
            print(f"FUNC 0x{sym['st_value']:x} (size 0x{sym['st_size']:x}): {sym.name}")
        if sym['st_info']['type'] == 'STT_FUNC' and 0x34700 <= sym['st_value'] <= 0x34a00:
            print(f"FUNC 0x{sym['st_value']:x} (size 0x{sym['st_size']:x}): {sym.name}")
