import struct

path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko"
data = open(path, "rb").read()
e_shoff = struct.unpack_from("<Q", data, 40)[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack_from("<HHH", data, 58)
sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsize
    sh_name, sh_type, sh_flags, sh_addr, sh_offset, sh_size, sh_link, sh_info, sh_addralign, sh_entsize = struct.unpack_from("<IIQQQQIIQQ", data, off)
    sections.append((sh_name, sh_type, sh_offset, sh_size, sh_link, sh_info, sh_entsize))
shstr_off = sections[e_shstrndx][2]
def get_str(strtab_off, idx):
    end = data.find(b"\x00", strtab_off + idx)
    return data[strtab_off + idx:end].decode("ascii", errors="ignore")
for idx, s in enumerate(sections):
    print(f"[{idx:2d}] {get_str(shstr_off, s[0]):35s} off=0x{s[2]:06x} size=0x{s[3]:06x} ({s[3]})")

# Also check rodata at 0x104d0 and 0x104f8
rodata_idx, rodata_s = [(i, s) for i, s in enumerate(sections) if get_str(shstr_off, s[0]) == ".rodata"][0]
print("\nrodata 0x104d0..0x10530:", data[rodata_s[2]+0x104d0:rodata_s[2]+0x10530].hex())
