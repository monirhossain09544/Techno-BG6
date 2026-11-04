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

def disasm(coff):
    regs, ins, outs, tries, dbg, insns_sz = struct.unpack_from('<HHHHII', dex, coff)
    print(f"  @ 0x{coff:06x} (regs={regs}, ins={ins}, outs={outs}, sz={insns_sz})")
    k = 0
    while k < insns_sz:
        w = struct.unpack_from('<H', dex, coff + 16 + 2*k)[0]
        op = w & 0xff
        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72, 0x74, 0x75, 0x76, 0x77, 0x78):
            mid = struct.unpack_from('<H', dex, coff + 16 + 2*(k+1))[0]
            arg = struct.unpack_from('<H', dex, coff + 16 + 2*(k+2))[0]
            print(f"    [0x{k:04x}] op=0x{op:02x} {get_method(mid)} (arg=0x{arg:04x})")
            k += 3
        elif op in (0x1a,):
            sid = struct.unpack_from('<H', dex, coff + 16 + 2*(k+1))[0]
            print(f"    [0x{k:04x}] const-string v{w>>8}, {get_str(sid)!r}")
            k += 2
        elif op in (0x1c, 0x1f, 0x22):
            tid = struct.unpack_from('<H', dex, coff + 16 + 2*(k+1))[0]
            print(f"    [0x{k:04x}] op=0x{op:02x} v{w>>8}, {get_type(tid)}")
            k += 2
        elif 0x52 <= op <= 0x6d:
            fid = struct.unpack_from('<H', dex, coff + 16 + 2*(k+1))[0]
            print(f"    [0x{k:04x}] op=0x{op:02x} {get_field(fid)}")
            k += 2
        elif op in (0x20, 0x23, 0x29, 0x2b, 0x2c, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d):
            arg = struct.unpack_from('<h', dex, coff + 16 + 2*(k+1))[0]
            print(f"    [0x{k:04x}] op=0x{op:02x} (w=0x{w:04x}) off={arg} (->0x{k+arg:04x})")
            k += 2
        elif op in (0x14, 0x17, 0x26, 0x2a, 0x31):
            k += 3
        elif op == 0x18:
            k += 5
        else:
            print(f"    [0x{k:04x}] w=0x{w:04x}")
            k += 1

for i in range(class_defs_size):
    c_idx, access, super_idx, iface_off, src_idx, ann_off, data_off, static_off = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    if cname not in ('Lb9/g;', 'Lp8/g;', 'Lb9/c0$b;'):
        continue
    if not data_off: continue
    sf_sz, p = uleb128(dex, data_off)
    if_sz, p = uleb128(dex, p)
    dm_sz, p = uleb128(dex, p)
    vm_sz, p = uleb128(dex, p)
    for _ in range(sf_sz + if_sz):
        _, p = uleb128(dex, p); _, p = uleb128(dex, p)
    print(f"=== {cname} ===")
    for kind, sz in [('direct', dm_sz), ('virtual', vm_sz)]:
        m_idx = 0
        for _ in range(sz):
            d, p = uleb128(dex, p); m_idx += d
            acc, p = uleb128(dex, p)
            coff, p = uleb128(dex, p)
            if not coff: continue
            mname = get_method(m_idx)
            print(f"Method {mname}:")
            disasm(coff)
