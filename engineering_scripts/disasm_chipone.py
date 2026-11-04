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

sec_by_name = {}
for idx, s in enumerate(sections):
    name = get_str(shstr_off, s[0])
    sec_by_name[name] = (idx, s)

symtab_s = sec_by_name[".symtab"][1]
strtab_s = sec_by_name[".strtab"][1]
text_idx, text_s = sec_by_name[".text"]

syms = []
for i in range(symtab_s[3] // symtab_s[6]):
    off = symtab_s[2] + i * symtab_s[6]
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack_from("<IBBHQQ", data, off)
    name = get_str(strtab_s[2], st_name)
    syms.append((name, st_shndx, st_value, st_size))

rela_s = sections[22]
relocs = {}
for i in range(rela_s[3] // rela_s[6]):
    off = rela_s[2] + i * rela_s[6]
    r_offset, r_info, r_addend = struct.unpack_from("<QQq", data, off)
    sym_idx = r_info >> 32
    r_type = r_info & 0xffffffff
    relocs[r_offset] = (syms[sym_idx], r_addend, r_type)

funcs = [(name, val, size) for (name, shndx, val, size) in syms if shndx == text_idx and size > 0 and not name.startswith("$")]
funcs.sort(key=lambda x: x[1])

for fname, fval, fsize in funcs:
    if fname in ["cts_resume", "cts_suspend", "cts_resume_device", "cts_suspend_device", "cts_reset_device", "cts_plat_reset_device", "cts_update_firmware", "cts_enter_program_mode", "cts_firmware_upgrade_work", "cts_start_device", "cts_esd_protection_work"]:
        print(f"\n=== {fname} (0x{fval:x}, size=0x{fsize:x}) ===")
        for roff in sorted(relocs.keys()):
            if fval <= roff < fval + fsize:
                (sname, sshndx, sval, ssize), radd, rtype = relocs[roff]
                sec_name = get_str(shstr_off, sections[sshndx][0]) if sshndx < len(sections) else "?"
                extra = ""
                if ".rodata" in sec_name:
                    str_pos = sections[sshndx][2] + sval + radd
                    end = data.find(b"\x00", str_pos)
                    s_lit = data[str_pos:end].decode("ascii", errors="ignore").replace("\n", "\\n")
                    if s_lit:
                        extra = f' -> "{s_lit}"'
                print(f"  +0x{roff-fval:03x} (0x{roff:04x}): {sname}+0x{radd:x} ({sec_name}){extra}")
