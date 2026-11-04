import struct, zipfile, sys

sys.stdout.reconfigure(encoding='utf-8')

def uleb128(data, pos):
    result = 0
    shift = 0
    while True:
        b = data[pos]
        pos += 1
        result |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, pos

def parse_dex(dex):
    str_size, str_off = struct.unpack_from('<II', dex, 0x38)
    type_size, type_off = struct.unpack_from('<II', dex, 0x40)
    field_size, field_off = struct.unpack_from('<II', dex, 0x50)
    meth_size, meth_off = struct.unpack_from('<II', dex, 0x58)
    cls_size, cls_off = struct.unpack_from('<II', dex, 0x60)

    def get_str(idx):
        if idx >= str_size: return f"str#{idx}"
        off = struct.unpack_from('<I', dex, str_off + idx*4)[0]
        _, pos = uleb128(dex, off)
        end = dex.find(b'\x00', pos)
        return dex[pos:end].decode('utf-8', 'replace')

    def get_type(idx):
        if idx >= type_size: return f"type#{idx}"
        s_idx = struct.unpack_from('<I', dex, type_off + idx*4)[0]
        return get_str(s_idx)

    def get_field(idx):
        if idx >= field_size: return f"field#{idx}"
        c_idx, t_idx, n_idx = struct.unpack_from('<HHI', dex, field_off + idx*8)
        return f"{get_type(c_idx)}->{get_str(n_idx)}:{get_type(t_idx)}"

    def get_meth(idx):
        if idx >= meth_size: return f"meth#{idx}"
        c_idx, p_idx, n_idx = struct.unpack_from('<HHI', dex, meth_off + idx*8)
        return f"{get_type(c_idx)}->{get_str(n_idx)}"

    classes = {}
    for i in range(cls_size):
        c_idx, acc, sup_idx, int_off, src_idx, ann_off, data_off, stat_off = struct.unpack_from('<IIIIIIII', dex, cls_off + i*32)
        cname = get_type(c_idx)
        classes[cname] = data_off

    def dump_cls(cname):
        data_off = classes.get(cname, 0)
        if not data_off:
            print(f"Class {cname} not found")
            return
        pos = data_off
        sf_size, pos = uleb128(dex, pos)
        if_size, pos = uleb128(dex, pos)
        dm_size, pos = uleb128(dex, pos)
        vm_size, pos = uleb128(dex, pos)
        f_idx = 0
        for _ in range(sf_size):
            d, pos = uleb128(dex, pos)
            acc, pos = uleb128(dex, pos)
            f_idx += d
            print(f"  sfield 0x{f_idx:x}: {get_field(f_idx)}")
        f_idx = 0
        for _ in range(if_size):
            d, pos = uleb128(dex, pos)
            acc, pos = uleb128(dex, pos)
            f_idx += d
            print(f"  ifield 0x{f_idx:x}: {get_field(f_idx)}")
        for kind, cnt in [("direct", dm_size), ("virtual", vm_size)]:
            m_idx = 0
            for _ in range(cnt):
                d, pos = uleb128(dex, pos)
                acc, pos = uleb128(dex, pos)
                code_off, pos = uleb128(dex, pos)
                m_idx += d
                mname = get_meth(m_idx)
                print(f"\n=== {kind} {mname} (0x{m_idx:x}) code_off=0x{code_off:x} ===")
                if code_off:
                    regs, ins, outs, tries, dbg, insns_cnt = struct.unpack_from('<HHHHII', dex, code_off)
                    bytecode = dex[code_off+16 : code_off+16+insns_cnt*2]
                    print(f"regs={regs} ins={ins} outs={outs} insns_cnt={insns_cnt} HEX={bytecode.hex()}")
                    w = 0
                    while w < insns_cnt:
                        word = struct.unpack_from('<H', bytecode, w*2)[0]
                        op = word & 0xff
                        b1 = (word >> 8) & 0xff
                        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and w+2 < insns_cnt:
                            idx = struct.unpack_from('<H', bytecode, (w+1)*2)[0]
                            w2 = struct.unpack_from('<H', bytecode, (w+2)*2)[0]
                            print(f"  {w:03x}: invoke(0x{op:02x}) b1={b1:02x} regs={w2:04x} {get_meth(idx)} (0x{idx:x})")
                            w += 3
                        elif op in (0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x5e,0x5f) and w+1 < insns_cnt:
                            idx = struct.unpack_from('<H', bytecode, (w+1)*2)[0]
                            print(f"  {w:03x}: iop(0x{op:02x}) b1={b1:02x} {get_field(idx)} (0x{idx:x})")
                            w += 2
                        elif op in (0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d) and w+1 < insns_cnt:
                            idx = struct.unpack_from('<H', bytecode, (w+1)*2)[0]
                            print(f"  {w:03x}: sop(0x{op:02x}) b1={b1:02x} {get_field(idx)} (0x{idx:x})")
                            w += 2
                        elif op == 0x1a and w+1 < insns_cnt:
                            idx = struct.unpack_from('<H', bytecode, (w+1)*2)[0]
                            print(f"  {w:03x}: const-string v{b1}, {get_str(idx)!r} (0x{idx:x})")
                            w += 2
                        elif op in (0x1c, 0x1f, 0x20, 0x22) and w+1 < insns_cnt:
                            idx = struct.unpack_from('<H', bytecode, (w+1)*2)[0]
                            print(f"  {w:03x}: type-op(0x{op:02x}) b1={b1:02x} {get_type(idx)} (0x{idx:x})")
                            w += 2
                        elif op in (0x14, 0x17) and w+2 < insns_cnt:
                            val = struct.unpack_from('<I', bytecode, (w+1)*2)[0]
                            print(f"  {w:03x}: const32(0x{op:02x}) v{b1}, 0x{val:08x}")
                            w += 3
                        else:
                            print(f"  {w:03x}: raw {word:04x}")
                            w += 1
    return dump_cls, get_str, get_type, get_field, get_meth, classes

z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')

print("================ CLASSES.DEX ================")
dump1, _, _, _, _, _ = parse_dex(z.read('classes.dex'))
dump1('Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;')
dump1('Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetailPreferenceController;')
dump1('Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;')

print("\n================ CLASSES3.DEX ================")
dump3, _, _, _, _, _ = parse_dex(z.read('classes3.dex'))
dump3('Lcom/transsion/settings/applications/HighPowerAppsController;')
dump3('Lcom/transsion/settings/applications/appinfo/AppInfoDashboardFragment;')
