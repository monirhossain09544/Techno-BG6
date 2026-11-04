import struct, zipfile

apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
with zipfile.ZipFile(apk, 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 0x48)
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 0x50)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 0x58)
class_defs_size, class_defs_off = struct.unpack_from('<II', dex, 0x60)

def read_uleb128(data, off):
    res = 0; shift = 0
    while True:
        b = data[off]; off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0: break
        shift += 7
    return res, off

def get_str(idx):
    off = struct.unpack_from('<I', dex, string_ids_off + idx*4)[0]
    _, off = read_uleb128(dex, off)
    end = dex.find(b'\x00', off)
    return dex[off:end].decode('utf-8', errors='replace')

def get_type(idx):
    return get_str(struct.unpack_from('<I', dex, type_ids_off + idx*4)[0])

def get_proto(idx):
    shorty_idx, ret_idx, params_off = struct.unpack_from('<III', dex, proto_ids_off + idx*12)
    ret = get_type(ret_idx)
    params = []
    if params_off != 0:
        sz = struct.unpack_from('<I', dex, params_off)[0]
        for i in range(sz):
            t = struct.unpack_from('<H', dex, params_off + 4 + i*2)[0]
            params.append(get_type(t))
    return f"({''.join(params)}){ret}"

def get_field(idx):
    c, t, n = struct.unpack_from('<HHI', dex, field_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}:{get_type(t)}"

def get_method(idx):
    c, p, n = struct.unpack_from('<HHI', dex, method_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}{get_proto(p)}"

def dump_code(code_off):
    if code_off == 0: return
    regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', dex, code_off)
    print(f"    [code_off=0x{code_off:x} regs={regs} ins={ins} outs={outs} tries={tries} sz={insns_size}]")
    off = code_off + 16
    i = 0
    while i < insns_size:
        w = struct.unpack_from('<H', dex, off + i*2)[0]
        op = w & 0xff
        if w in (0x0100, 0x0200, 0x0300):
            if w == 0x0100:
                sz = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
                step = 4 + sz * 2
            elif w == 0x0200:
                sz = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
                step = 2 + sz * 4
            else:
                ew = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
                sz = struct.unpack_from('<I', dex, off + (i+2)*2)[0]
                step = 4 + (sz * ew + 1) // 2
            print(f"      0x{i:04x}: payload 0x{w:04x} (len={step})")
            i += step
            continue
        if op in (0x00, 0x01, 0x04, 0x07, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x1d, 0x1e, 0x27, 0x28):
            print(f"      0x{i:04x}: {w:04x}")
            i += 1
        elif op in (0x1a,):
            idx = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {idx:04x}  # const-string {get_str(idx)!r}")
            i += 2
        elif op in (0x1c, 0x1f, 0x20, 0x22, 0x23):
            idx = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {idx:04x}  # type {get_type(idx)}")
            i += 2
        elif 0x52 <= op <= 0x6d:
            idx = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {idx:04x}  # field[0x{idx:04x}] {get_field(idx)}")
            i += 2
        elif 0x6e <= op <= 0x72:
            idx = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            w2 = struct.unpack_from('<H', dex, off + (i+2)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {idx:04x} {w2:04x}  # method[0x{idx:04x}] {get_method(idx)}")
            i += 3
        elif 0x74 <= op <= 0x78:
            idx = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            w2 = struct.unpack_from('<H', dex, off + (i+2)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {idx:04x} {w2:04x}  # method-range[0x{idx:04x}] {get_method(idx)}")
            i += 3
        elif op in (0x14, 0x17, 0x26, 0x2a, 0x2b, 0x2c):
            w1 = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            w2 = struct.unpack_from('<H', dex, off + (i+2)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {w1:04x} {w2:04x}")
            i += 3
        elif op == 0x18:
            w1, w2, w3, w4 = struct.unpack_from('<HHHH', dex, off + (i+1)*2)
            print(f"      0x{i:04x}: {w:04x} {w1:04x} {w2:04x} {w3:04x} {w4:04x}")
            i += 5
        else:
            w1 = struct.unpack_from('<H', dex, off + (i+1)*2)[0]
            print(f"      0x{i:04x}: {w:04x} {w1:04x}")
            i += 2

targets = {'Lo7/o0;', 'Lp8/k;', 'Lcom/transsion/filemanagerx/ui/storagefile/StorageFileViewModel;'}
for i in range(class_defs_size):
    c_idx, flags, s_idx, int_off, src_idx, ann_off, data_off, val_off = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    if cname in targets and data_off != 0:
        print(f"=== {cname} (super={get_type(s_idx)}) ===")
        sf_sz, off = read_uleb128(dex, data_off)
        if_sz, off = read_uleb128(dex, off)
        dm_sz, off = read_uleb128(dex, off)
        vm_sz, off = read_uleb128(dex, off)
        f_idx = 0
        for _ in range(sf_sz):
            d, off = read_uleb128(dex, off); f_idx += d
            fl, off = read_uleb128(dex, off)
            print(f"  SField[0x{f_idx:04x}] {get_field(f_idx)}")
        f_idx = 0
        for _ in range(if_sz):
            d, off = read_uleb128(dex, off); f_idx += d
            fl, off = read_uleb128(dex, off)
            print(f"  IField[0x{f_idx:04x}] {get_field(f_idx)}")
        m_idx = 0
        for _ in range(dm_sz):
            d, off = read_uleb128(dex, off); m_idx += d
            fl, off = read_uleb128(dex, off)
            co, off = read_uleb128(dex, off)
            mname = get_method(m_idx)
            if cname == 'Lo7/o0;' or '->e3(' in mname or '->Y(' in mname or '->R(' in mname or '->X(' in mname:
                print(f"  DMethod[0x{m_idx:04x}] {mname} (code_off=0x{co:x})")
                dump_code(co)
        m_idx = 0
        for _ in range(vm_sz):
            d, off = read_uleb128(dex, off); m_idx += d
            fl, off = read_uleb128(dex, off)
            co, off = read_uleb128(dex, off)
            mname = get_method(m_idx)
            if cname == 'Lo7/o0;' or '->e3(' in mname or '->Y(' in mname or '->R(' in mname or '->X(' in mname:
                print(f"  VMethod[0x{m_idx:04x}] {mname} (code_off=0x{co:x})")
                dump_code(co)
