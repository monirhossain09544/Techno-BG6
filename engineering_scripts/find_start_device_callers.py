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
funcs = [(val, val+size, name) for (name, shndx, val, size) in syms if shndx == text_idx and size > 0]
rela_s = sections[22]
for i in range(rela_s[3] // rela_s[6]):
    off = rela_s[2] + i * rela_s[6]
    r_offset, r_info, r_addend = struct.unpack_from("<QQq", data, off)
    sname, sshndx, sval, ssize = syms[r_info >> 32]
    if sname in ("cts_start_device", "enable_irq", "cts_plat_enable_irq"):
        caller = [name for (s, e, name) in funcs if s <= r_offset < e]
        print(f"0x{r_offset:05x} in {caller}: calls {sname}")
