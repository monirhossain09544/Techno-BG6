import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_hwcomposer.unisoc.so', 'rb') as f:
    data = f.read()

# Parse dynsym and dynstr and plt relocations to name functions
dynsym_off = 0x2a8
dynsym_size = 0x6f30
dynstr_off = 0x95c4

syms = []
for i in range(dynsym_size // 24):
    st_name, st_info, st_other, st_shndx, st_value, st_size = struct.unpack_from('<IBBHQQ', data, dynsym_off + i * 24)
    end = data.find(b'\x00', dynstr_off + st_name)
    name = data[dynstr_off + st_name:end].decode('utf-8', errors='replace')
    syms.append((name, st_value, st_size))

addr_to_sym = {v: name for name, v, s in syms if v != 0}

# Parse .rela.plt (0x16d70, size 0x3fc0) -> .plt starts at 0x7a8e0 (header 32 bytes, then 16 bytes per entry)
rela_plt_off = 0x16d70
rela_plt_size = 0x3fc0
plt_start = 0x7a8e0 + 32
for i in range(rela_plt_size // 24):
    r_offset, r_info, r_addend = struct.unpack_from('<QQq', data, rela_plt_off + i * 24)
    sym_idx = r_info >> 32
    plt_addr = plt_start + i * 16
    addr_to_sym[plt_addr] = f"plt:{syms[sym_idx][0]}"

def get_rodata_str(addr):
    if 0x1ad30 <= addr < 0x35d0c:
        end = data.find(b'\x00', addr)
        if end != -1 and end - addr < 160:
            s = data[addr:end]
            return repr(s.decode('ascii', errors='replace'))
    return None

def disasm_range(start_addr, end_addr, title):
    print(f"=== {title} (0x{start_addr:x} .. 0x{end_addr:x}) ===")
    adrp_pages = {}
    for off in range(start_addr, end_addr, 4):
        if off in addr_to_sym:
            print(f"\n<{addr_to_sym[off]}>:")
        insn = struct.unpack_from('<I', data, off)[0]
        desc = f"0x{insn:08x}"
        if (insn & 0xfc000000) == 0x94000000:
            imm26 = insn & 0x3ffffff
            if imm26 & (1 << 25):
                imm26 -= (1 << 26)
            target = off + (imm26 << 2)
            tname = addr_to_sym.get(target, f"0x{target:x}")
            desc = f"bl {tname}"
        elif (insn & 0xfc000000) == 0x14000000:
            imm26 = insn & 0x3ffffff
            if imm26 & (1 << 25):
                imm26 -= (1 << 26)
            target = off + (imm26 << 2)
            desc = f"b 0x{target:x}"
        elif (insn & 0x9f000000) == 0x90000000:
            rd = insn & 0x1f
            immlo = (insn >> 29) & 0x3
            immhi = (insn >> 5) & 0x7ffff
            imm = (immhi << 2) | immlo
            if imm & (1 << 20):
                imm -= (1 << 21)
            page = (off & ~0xfff) + (imm << 12)
            adrp_pages[rd] = page
            desc = f"adrp x{rd}, 0x{page:x}"
        elif (insn & 0xff800000) == 0x91000000:
            rd = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = (insn >> 10) & 0xfff
            sh = (insn >> 22) & 0x1
            val = imm12 << (12 if sh else 0)
            extra = ""
            if rn in adrp_pages and not sh:
                full = adrp_pages[rn] + val
                rstr = get_rodata_str(full)
                if rstr:
                    extra = f" ; {rstr}"
                else:
                    extra = f" ; 0x{full:x}"
            desc = f"add x{rd}, x{rn}, #0x{val:x}{extra}"
        elif (insn & 0x7f800000) == 0x52800000:
            rd = insn & 0x1f
            imm16 = (insn >> 5) & 0xffff
            hw = (insn >> 21) & 0x3
            val = imm16 << (hw * 16)
            is64 = (insn >> 31) & 1
            rname = f"x{rd}" if is64 else f"w{rd}"
            desc = f"movz {rname}, #0x{val:x}"
        elif (insn & 0xff000010) == 0x54000000:
            imm19 = (insn >> 5) & 0x7ffff
            if imm19 & (1 << 18):
                imm19 -= (1 << 19)
            target = off + (imm19 << 2)
            cond = insn & 0xf
            conds = ['eq','ne','cs','cc','mi','pl','vs','vc','hi','ls','ge','lt','gt','le','al','nv']
            desc = f"b.{conds[cond]} 0x{target:x}"
        elif (insn & 0x7e000000) == 0x34000000:
            rt = insn & 0x1f
            imm19 = (insn >> 5) & 0x7ffff
            if imm19 & (1 << 18):
                imm19 -= (1 << 19)
            target = off + (imm19 << 2)
            op = "cbnz" if (insn & 0x01000000) else "cbz"
            is64 = (insn >> 31) & 1
            rname = f"x{rt}" if is64 else f"w{rt}"
            desc = f"{op} {rname}, 0x{target:x}"
        elif (insn & 0x7e000000) == 0x36000000:
            rt = insn & 0x1f
            imm14 = (insn >> 5) & 0x3fff
            if imm14 & (1 << 13):
                imm14 -= (1 << 14)
            target = off + (imm14 << 2)
            b5 = (insn >> 31) & 1
            b40 = (insn >> 19) & 0x1f
            bit = (b5 << 5) | b40
            op = "tbnz" if (insn & 0x01000000) else "tbz"
            desc = f"{op} w{rt}, #{bit}, 0x{target:x}"
        elif (insn & 0xffc00000) == 0xf9400000:
            rt = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = ((insn >> 10) & 0xfff) * 8
            desc = f"ldr x{rt}, [x{rn}, #0x{imm12:x}]"
        elif (insn & 0xffc00000) == 0xb9400000:
            rt = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = ((insn >> 10) & 0xfff) * 4
            desc = f"ldr w{rt}, [x{rn}, #0x{imm12:x}]"
        elif (insn & 0xffc00000) == 0x39400000:
            rt = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = (insn >> 10) & 0xfff
            desc = f"ldrb w{rt}, [x{rn}, #0x{imm12:x}]"
        elif (insn & 0xffc00000) == 0xf9000000:
            rt = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = ((insn >> 10) & 0xfff) * 8
            desc = f"str x{rt}, [x{rn}, #0x{imm12:x}]"
        elif (insn & 0xffc00000) == 0xb9000000:
            rt = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = ((insn >> 10) & 0xfff) * 4
            desc = f"str w{rt}, [x{rn}, #0x{imm12:x}]"
        elif (insn & 0xffc00000) == 0x39000000:
            rt = insn & 0x1f
            rn = (insn >> 5) & 0x1f
            imm12 = (insn >> 10) & 0xfff
            desc = f"strb w{rt}, [x{rn}, #0x{imm12:x}]"
        elif insn == 0xd65f03c0:
            desc = "ret"
        print(f"  0x{off:05x}: {desc}")

disasm_range(0x5e100, 0x5eb00, "SprdDrm SetActiveConfig / CommitFrame area 1")
disasm_range(0x60100, 0x60600, "SprdDrm CommitFrame area 2")
