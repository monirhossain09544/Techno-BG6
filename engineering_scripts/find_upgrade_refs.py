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

syms = []
for i in range(symtab_s[5] // symtab_s[9]):
    off = symtab_s[4] + i * symtab_s[9]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack_from("<IBBHQQ", data, off)
    syms.append((get_str(strtab_s[4], st_name), st_shndx, st_value, st_size))

rela_s = sections[22]
for i in range(rela_s[5] // rela_s[9]):
    off = rela_s[4] + i * rela_s[9]
    r_offset, r_info, r_addend = struct.unpack_from("<QQq", data, off)
    sname, sshndx, sval, ssize = syms[r_info >> 32]
    if any(k in sname for k in ["upgrade", "update_firmware", "request_firmware", "builtin", "force_update", "reset_pin_store", "program_mode_store"]) or (sval + r_addend) in [0x1fba0, 0x273e4]:
        print(f"0x{r_offset:05x} -> {sname}+0x{r_addend:x} (target=0x{sval+r_addend:x})")

for name, shndx, val, size in syms:
    if shndx == text_idx and (0x27300 <= val <= 0x27670 or "store" in name or "show" in name or "upgrade" in name):
        print(f"SYM {name}: 0x{val:x} (size=0x{size:x})")
