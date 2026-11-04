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
sec_by_name = {get_str(shstr_off, s[0]): (idx, s) for idx, s in enumerate(sections)}
symtab_s = sec_by_name[".symtab"][1]
strtab_s = sec_by_name[".strtab"][1]
text_idx, text_s = sec_by_name[".text"]
syms = []
for i in range(symtab_s[3] // symtab_s[6]):
    off = symtab_s[2] + i * symtab_s[6]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack_from("<IBBHQQ", data, off)
    syms.append((get_str(strtab_s[2], st_name), st_shndx, st_value, st_size))

for name, shndx, val, size in syms:
    if shndx == text_idx and size > 0 and any(k in name for k in ["probe", "init", "start", "panel", "boot", "reset"]):
        print(f"  {name}: 0x{val:x} size=0x{size:x}")
