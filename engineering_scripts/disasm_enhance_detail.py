from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

path = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_enhance.unisoc.so"
with open(path, "rb") as f:
    elf = ELFFile(f)
    dynsym = elf.get_section_by_name(".dynsym")
    func_by_addr = {}
    for s in dynsym.iter_symbols():
        if s['st_value'] != 0:
            func_by_addr[s['st_value']] = s.name
    rela_plt = elf.get_section_by_name(".rela.plt")
    plt_map = {}
    if rela_plt and dynsym:
        plt_sec = elf.get_section_by_name(".plt")
        plt_base = plt_sec['sh_addr']
        for idx, rel in enumerate(rela_plt.iter_relocations()):
            sym = dynsym.get_symbol(rel['r_info_sym'])
            plt_addr = plt_base + 32 + idx * 16
            plt_map[plt_addr] = sym.name

    text = elf.get_section_by_name(".text")
    text_addr = text['sh_addr']
    text_data = text.data()

    rodata = elf.get_section_by_name(".rodata")
    ro_addr = rodata['sh_addr']
    ro_data = rodata.data()

    def get_str(addr):
        if ro_addr <= addr < ro_addr + len(ro_data):
            off = addr - ro_addr
            end = ro_data.find(b'\x00', off)
            if end != -1 and end - off < 140:
                s = ro_data[off:end]
                if all(32 <= b < 127 or b in (9, 10, 13) for b in s) and len(s) > 0:
                    return repr(s.decode('ascii', 'ignore'))
        return None

    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    for start, end, label in [
        (0xcf60, 0xdab0, "get_enhance_param_from_xml + enhance_device_open"),
    ]:
        print(f"=== {label} (0x{start:x}..0x{end:x}) ===")
        chunk = text_data[start - text_addr : end - text_addr]
        reg_page = {}
        for insn in md.disasm(chunk, start):
            comment = ""
            if insn.mnemonic == "adrp":
                parts = insn.op_str.split(", ")
                reg = parts[0]
                page = int(parts[1].replace("#", ""), 16)
                reg_page[reg] = page
            elif insn.mnemonic == "add":
                parts = insn.op_str.split(", ")
                if len(parts) == 3 and parts[1] in reg_page and parts[2].startswith("#0x"):
                    addr = reg_page[parts[1]] + int(parts[2].replace("#", ""), 16)
                    s = get_str(addr)
                    if s:
                        comment = f" ; {s}"
            elif insn.mnemonic in ("bl", "b"):
                if insn.op_str.startswith("#0x"):
                    t = int(insn.op_str.replace("#", ""), 16)
                    if t in plt_map:
                        comment = f" ; PLT:{plt_map[t]}"
                    elif t in func_by_addr:
                        comment = f" ; {func_by_addr[t]}"
            print(f"  0x{insn.address:05x}: {insn.mnemonic:8s} {insn.op_str}{comment}")
