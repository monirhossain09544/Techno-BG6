import zipfile, struct, sys

sys.stdout.reconfigure(encoding='utf-8')

def read_uleb(buf, pos):
    res, shift = 0, 0
    while True:
        b = buf[pos]; pos += 1
        res |= (b & 0x7f) << shift
        if not (b & 0x80): break
        shift += 7
    return res, pos

def parse_dex(dex):
    str_cnt, str_off = struct.unpack_from('<II', dex, 0x38)
    type_cnt, type_off = struct.unpack_from('<II', dex, 0x40)
    proto_cnt, proto_off = struct.unpack_from('<II', dex, 0x48)
    field_cnt, field_off = struct.unpack_from('<II', dex, 0x50)
    meth_cnt, meth_off = struct.unpack_from('<II', dex, 0x58)
    cls_cnt, cls_off = struct.unpack_from('<II', dex, 0x60)

    def get_str(idx):
        if idx >= str_cnt: return f'str#{idx}'
        off = struct.unpack_from('<I', dex, str_off + idx * 4)[0]
        _, p = read_uleb(dex, off)
        end = dex.find(b'\x00', p)
        return dex[p:end].decode('utf-8', 'replace')

    def get_type(idx):
        if idx >= type_cnt: return f'type#{idx}'
        return get_str(struct.unpack_from('<I', dex, type_off + idx * 4)[0])

    def get_field(idx):
        if idx >= field_cnt: return f'field#{idx}'
        c, t, n = struct.unpack_from('<HHI', dex, field_off + idx * 8)
        return f'{get_type(c)}->{get_str(n)}:{get_type(t)}'

    def get_meth(idx):
        if idx >= meth_cnt: return f'meth#{idx}'
        c, p, n = struct.unpack_from('<HHI', dex, meth_off + idx * 8)
        ret_idx = struct.unpack_from('<I', dex, proto_off + p * 12 + 4)[0]
        return f'{get_type(c)}->{get_str(n)}():{get_type(ret_idx)}'

    classes = {}
    for i in range(cls_cnt):
        c_idx, acc, sup_idx, int_off, src_idx, ann_off, data_off, stat_off = struct.unpack_from('<IIIIIIII', dex, cls_off + i * 32)
        cname = get_type(c_idx)
        classes[cname] = (i, data_off)

    return get_str, get_type, get_field, get_meth, classes

def dump_class_methods(dex, target_cls, target_meths=None):
    get_str, get_type, get_field, get_meth, classes = parse_dex(dex)
    if target_cls not in classes:
        return
    _, data_off = classes[target_cls]
    if data_off == 0: return
    pos = data_off
    sf_cnt, pos = read_uleb(dex, pos)
    if_cnt, pos = read_uleb(dex, pos)
    dm_cnt, pos = read_uleb(dex, pos)
    vm_cnt, pos = read_uleb(dex, pos)
    for _ in range(sf_cnt + if_cnt):
        _, pos = read_uleb(dex, pos)
        _, pos = read_uleb(dex, pos)
    for kind, cnt in [('direct', dm_cnt), ('virtual', vm_cnt)]:
        m_idx = 0
        for _ in range(cnt):
            diff, pos = read_uleb(dex, pos)
            acc, pos = read_uleb(dex, pos)
            code_off, pos = read_uleb(dex, pos)
            m_idx += diff
            m_desc = get_meth(m_idx)
            m_name = m_desc.split('->')[1].split('(')[0]
            if target_meths is None or m_name in target_meths:
                print(f"\n=== {kind} {m_desc} code_off={hex(code_off)} ===")
                if code_off:
                    regs, ins, outs, tries, dbg, insns_cnt = struct.unpack_from('<HHHHII', dex, code_off)
                    insns = dex[code_off + 16 : code_off + 16 + insns_cnt * 2]
                    print(f"regs={regs} ins={ins} outs={outs} insns_cnt={insns_cnt}")
                    print("HEX:", insns.hex())
                    p = 0
                    while p < len(insns):
                        op = insns[p]
                        b1 = insns[p+1]
                        if op in (0x1a,):
                            sidx = struct.unpack_from('<H', insns, p+2)[0]
                            print(f"  {p//2:03x}: const-string v{b1}, {get_str(sidx)!r}")
                            p += 4
                        elif op in (0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f):
                            fidx = struct.unpack_from('<H', insns, p+2)[0]
                            print(f"  {p//2:03x}: iop(0x{op:02x}) v{b1&0xf}, v{b1>>4}, {get_field(fidx)} (0x{fidx:x})")
                            p += 4
                        elif op in (0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d):
                            fidx = struct.unpack_from('<H', insns, p+2)[0]
                            print(f"  {p//2:03x}: sop(0x{op:02x}) v{b1}, {get_field(fidx)} (0x{fidx:x})")
                            p += 4
                        elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72):
                            midx = struct.unpack_from('<H', insns, p+2)[0]
                            w2 = struct.unpack_from('<H', insns, p+4)[0]
                            print(f"  {p//2:03x}: invoke(0x{op:02x}) args={b1:02x} regs={w2:04x} {get_meth(midx)} (0x{midx:x})")
                            p += 6
                        elif op in (0x1c, 0x1f, 0x22):
                            tidx = struct.unpack_from('<H', insns, p+2)[0]
                            print(f"  {p//2:03x}: type-op(0x{op:02x}) b1={b1:02x} {get_type(tidx)} (0x{tidx:x})")
                            p += 4
                        elif op in (0x20,):
                            tidx = struct.unpack_from('<H', insns, p+2)[0]
                            print(f"  {p//2:03x}: instance-of v{b1&0xf}, v{b1>>4}, {get_type(tidx)} (0x{tidx:x})")
                            p += 4
                        else:
                            print(f"  {p//2:03x}: raw {insns[p:p+2].hex()}")
                            p += 2

z_sp = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SmartPanel.apk')
for name in z_sp.namelist():
    if name.endswith('.dex'):
        dex = z_sp.read(name)
        dump_class_methods(dex, 'Lcom/transsion/smartpanel/main/panel/SmartPanel;', {'r1', 'P1'})
        dump_class_methods(dex, 'Lgc/q;', {'c'})

z_ts = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')
for name in z_ts.namelist():
    if name.endswith('.dex'):
        dex = z_ts.read(name)
        dump_class_methods(dex, 'Ld/a/c/n1/x$a;', {'filterApp'})
