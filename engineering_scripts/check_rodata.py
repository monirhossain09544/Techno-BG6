from elftools.elf.elffile import ELFFile

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\mod_sprd-drm.ko', 'rb') as f:
    elf = ELFFile(f)
    rodata = elf.get_section_by_name('.rodata').data()

def s(off):
    end = rodata.find(b'\x00', off)
    return rodata[off:end].decode('latin1', errors='replace')

print("sprd_tp_rst_seq_before strings:")
for off in [0x17cd, 0x75ff, 0x6aa1, 0x1efa, 0x2a46, 0x7ad1, 0x40af, 0x47fb]:
    print(f"  0x{off:x}: {s(off)}")

print("sprd_panel_prepare strings:")
for off in [0x474, 0x603e, 0xcd, 0xea, 0x5812, 0x5c19]:
    print(f"  0x{off:x}: {s(off)}")
