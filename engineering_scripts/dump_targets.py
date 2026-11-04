import zipfile, struct

src_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
with zipfile.ZipFile(src_apk, 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 0x48)
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 0x50)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 0x58)
class_defs_size, class_defs_off = struct.unpack_from('<II', dex, 0x60)

def uleb128(data, off):
    res, shift = 0, 0
    while True:
        b = data[off]; off += 1
        res |= (b & 0x7f) << shift
        if not (b & 0x80): break
        shift += 7
    return res, off

def get_str(idx):
    off = struct.unpack_from('<I', dex, string_ids_off + idx*4)[0]
    _, p = uleb128(dex, off)
    end = dex.index(0, p)
    return dex[p:end].decode('utf-8', 'replace')

def get_type(idx):
    if idx >= type_ids_size: return f"type_{idx}"
    return get_str(struct.unpack_from('<I', dex, type_ids_off + idx*4)[0])

def get_proto(idx):
    shorty_idx, ret_idx, param_off = struct.unpack_from('<III', dex, proto_ids_off + idx*12)
    ret = get_type(ret_idx)
    params = []
    if param_off:
        sz = struct.unpack_from('<I', dex, param_off)[0]
        for i in range(sz):
            t = struct.unpack_from('<H', dex, param_off + 4 + i*2)[0]
            params.append(get_type(t))
    return f"({''.join(params)}){ret}"

def get_method(idx):
    c, p, n = struct.unpack_from('<HHI', dex, method_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}{get_proto(p)}"

def get_field(idx):
    c, t, n = struct.unpack_from('<HHI', dex, field_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}:{get_type(t)}"

target_classes = {
    'Li9/h;',
    'Lcom/transsion/widgetslib/dialog/ProgressDialog;',
    'Lo7/g0;',
    'Lo7/f0;',
    'Le2/c;',
    'Lf9/n$a;',
    'Lo7/o0;',
}

for i in range(class_defs_size):
    c_idx, access, super_idx, iface_off, src_idx, ann_off, data_off, static_off = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    if cname not in target_classes:
        continue
    print(f"=== CLASS {cname} (type[0x{c_idx:04x}]) ===")
    if not data_off: continue
    sf_sz, p = uleb128(dex, data_off)
    if_sz, p = uleb128(dex, p)
    dm_sz, p = uleb128(dex, p)
    vm_sz, p = uleb128(dex, p)
    f_idx = 0
    for _ in range(sf_sz):
        d, p = uleb128(dex, p); f_idx += d
        acc, p = uleb128(dex, p)
        print(f"  sfield[0x{f_idx:04x}]: {get_field(f_idx)}")
    f_idx = 0
    for _ in range(if_sz):
        d, p = uleb128(dex, p); f_idx += d
        acc, p = uleb128(dex, p)
        print(f"  ifield[0x{f_idx:04x}]: {get_field(f_idx)}")
    for kind, sz in [('direct', dm_sz), ('virtual', vm_sz)]:
        m_idx = 0
        for _ in range(sz):
            d, p = uleb128(dex, p); m_idx += d
            acc, p = uleb128(dex, p)
            coff, p = uleb128(dex, p)
            mname = get_method(m_idx)
            if coff:
                regs, ins, outs, tries, dbg, insns_sz = struct.unpack_from('<HHHHII', dex, coff)
                words = [struct.unpack_from('<H', dex, coff + 16 + 2*k)[0] for k in range(insns_sz)]
                hex_w = ' '.join(f'{w:04x}' for w in words[:40])
                print(f"  {kind} method[0x{m_idx:04x}] @ 0x{coff:06x} (regs={regs},ins={ins},outs={outs},sz={insns_sz}): {mname}")
                if any(x in mname for x in ['<clinit>', 'setProgress', 'Lo7/g0;', 'Lo7/f0;', 'Le2/c;->f', 'Le2/c;->i', 'Lf9/n$a;->s', 'Lo7/o0;']):
                    for k, w in enumerate(words):
                        pass
                    print(f"    words: {' '.join(f'{w:04x}' for w in words)}")
