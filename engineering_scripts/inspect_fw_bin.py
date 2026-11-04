import struct

fw = open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_ts_fw_01.bin", "rb").read()
print(f"Size: {len(fw)} (0x{len(fw):x})")
print("First 64 bytes:", fw[:64].hex())
print("At 0x100..0x140:", fw[0x100:0x140].hex())

# Also dump 0x15f50 in chipone_icnl99xx.ko and cts_enter_program_mode (0x1e22c)
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
rela_s = sections[22]
relocs = {}
for i in range(rela_s[3] // rela_s[6]):
    off = rela_s[2] + i * rela_s[6]
    r_offset, r_info, r_addend = struct.unpack_from("<QQq", data, off)
    relocs[r_offset] = (syms[r_info >> 32], r_addend, r_info & 0xffffffff)

for name, shndx, val, size in syms:
    if shndx == text_idx and size > 0 and name in ("cts_enter_program_mode", "cts_enter_normal_mode", "cts_spi_send_recv", "cts_sram_writesb_check_crc_retry"):
        print(f"\n=== {name} (0x{val:x}, size=0x{size:x}) ===")
        for off in range(val, val + size, 4):
            insn = struct.unpack_from("<I", data, text_s[2] + off)[0]
            rel_str = ""
            if off in relocs:
                (sname, sshndx, sval, ssize), radd, rtype = relocs[off]
                sec_name = get_str(shstr_off, sections[sshndx][0]) if sshndx < len(sections) else "?"
                extra = ""
                if ".rodata" in sec_name:
                    str_pos = sections[sshndx][2] + sval + radd
                    end = data.find(b"\x00", str_pos)
                    s_lit = data[str_pos:end].decode("ascii", errors="ignore").replace("\n", "\\n")
                    if s_lit:
                        extra = f' "{s_lit}"'
                rel_str = f"  <-- {sname}+0x{radd:x}{extra}"
            print(f"  +0x{off-val:03x} (0x{off:05x}): {insn:08x}{rel_str}")
