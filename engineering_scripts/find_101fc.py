import struct
path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko"
data = open(path, "rb").read()
e_shoff = struct.unpack_from("<Q", data, 40)[0]
e_shentsize, e_shnum, e_shstrndx = struct.unpack_from("<HHH", data, 58)
sections = [struct.unpack_from("<IIQQQQIIQQ", data, e_shoff + i * e_shentsize) for i in range(e_shnum)]
shstr_off = sections[e_shstrndx][4]
def get_str(strtab_off, idx):
    end = data.find(b"\x00", strtab_off + idx)
    return data[strtab_off + idx:end].decode("ascii", errors="ignore")
sec_by_name = {get_str(shstr_off, s[0]): (idx, s) for idx, s in enumerate(sections)}
symtab_s = sec_by_name[".symtab"][1]
strtab_s = sec_by_name[".strtab"][1]
text_idx, text_s = sec_by_name[".text"]
for i in range(symtab_s[5] // symtab_s[9]):
    off = symtab_s[4] + i * symtab_s[9]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack_from("<IBBHQQ", data, off)
    if st_shndx == text_idx and 0x10000 <= st_value <= 0x10500 and st_size > 0:
        print(f"0x{st_value:x} (size=0x{st_size:x}): {get_str(strtab_s[4], st_name)}")
