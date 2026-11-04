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

def get_method(idx):
    c, p, n = struct.unpack_from('<HHI', dex, method_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}{get_proto(p)}"

def get_field(idx):
    c, t, n = struct.unpack_from('<HHI', dex, field_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}:{get_type(t)}"

def dump_code(code_off, label):
    registers_size, ins_size, outs_size, tries_size, debug_off, insns_size = struct.unpack_from('<HHHHII', dex, code_off)
    print(f"\n=== {label} (code_off=0x{code_off:x}, regs={registers_size}, ins={ins_size}, insns={insns_size}) ===")
    pos = code_off + 16
    end = pos + insns_size * 2
    while pos < end:
        rel = (pos - (code_off + 16)) // 2
        w = struct.unpack_from('<H', dex, pos)[0]
        op = w & 0xff
        if op in (0x1a,):
            vA = (w >> 8) & 0xff
            sIdx = struct.unpack_from('<H', dex, pos+2)[0]
            print(f"  {rel:04x}: const-string v{vA}, '{get_str(sIdx)}'")
            pos += 4
        elif op in (0x1c, 0x1f, 0x22):
            vA = (w >> 8) & 0xff
            tIdx = struct.unpack_from('<H', dex, pos+2)[0]
            opname = {0x1c:'const-class', 0x1f:'check-cast', 0x22:'new-instance'}[op]
            print(f"  {rel:04x}: {opname} v{vA}, [0x{tIdx:04x}] {get_type(tIdx)}")
            pos += 4
        elif op in (0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x5e,0x5f):
            vA = (w >> 8) & 0xf
            vB = (w >> 12) & 0xf
            fIdx = struct.unpack_from('<H', dex, pos+2)[0]
            opname = 'iget' if op <= 0x58 else 'iput'
            print(f"  {rel:04x}: {opname} (0x{op:02x}) v{vA}, v{vB}, [0x{fIdx:04x}] {get_field(fIdx)}")
            pos += 4
        elif op in (0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d):
            vA = (w >> 8) & 0xff
            fIdx = struct.unpack_from('<H', dex, pos+2)[0]
            opname = 'sget' if op <= 0x66 else 'sput'
            print(f"  {rel:04x}: {opname} (0x{op:02x}) v{vA}, [0x{fIdx:04x}] {get_field(fIdx)}")
            pos += 4
        elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72):
            cnt = (w >> 12) & 0xf
            mIdx = struct.unpack_from('<H', dex, pos+2)[0]
            w2 = struct.unpack_from('<H', dex, pos+4)[0]
            regs = [w2 & 0xf, (w2>>4)&0xf, (w2>>8)&0xf, (w2>>12)&0xf, (w>>8)&0xf][:cnt]
            opname = {0x6e:'invoke-virtual',0x6f:'invoke-super',0x70:'invoke-direct',0x71:'invoke-static',0x72:'invoke-interface'}[op]
            print(f"  {rel:04x}: {opname} {{{','.join('v'+str(r) for r in regs)}}}, [0x{mIdx:04x}] {get_method(mIdx)}")
            pos += 6
        elif op in (0x74, 0x75, 0x76, 0x77, 0x78):
            cnt = (w >> 8) & 0xff
            mIdx = struct.unpack_from('<H', dex, pos+2)[0]
            vC = struct.unpack_from('<H', dex, pos+4)[0]
            print(f"  {rel:04x}: invoke-range v{vC}..v{vC+cnt-1}, [0x{mIdx:04x}] {get_method(mIdx)}")
            pos += 6
        elif op in (0x12,):
            vA = (w >> 8) & 0xf
            lit = (w >> 12) & 0xf
            if lit >= 8: lit -= 16
            print(f"  {rel:04x}: const/4 v{vA}, {lit}")
            pos += 2
        elif op in (0x13,):
            vA = (w >> 8) & 0xff
            lit = struct.unpack_from('<h', dex, pos+2)[0]
            print(f"  {rel:04x}: const/16 v{vA}, {lit}")
            pos += 4
        elif op in (0x14,):
            vA = (w >> 8) & 0xff
            lit = struct.unpack_from('<I', dex, pos+2)[0]
            print(f"  {rel:04x}: const v{vA}, 0x{lit:08x}")
            pos += 6
        elif op in (0x0a, 0x0b, 0x0c):
            vA = (w >> 8) & 0xff
            print(f"  {rel:04x}: move-result(0x{op:02x}) v{vA}")
            pos += 2
        elif op in (0x0e, 0x0f, 0x10, 0x11):
            vA = (w >> 8) & 0xff
            print(f"  {rel:04x}: return(0x{op:02x}) v{vA}")
            pos += 2
        elif op in (0x32,0x33,0x34,0x35,0x36,0x37):
            vA = (w >> 8) & 0xf
            vB = (w >> 12) & 0xf
            off = struct.unpack_from('<h', dex, pos+2)[0]
            print(f"  {rel:04x}: if-cmp(0x{op:02x}) v{vA}, v{vB} -> {rel+off:04x}")
            pos += 4
        elif op in (0x38,0x39,0x3a,0x3b,0x3c,0x3d):
            vA = (w >> 8) & 0xff
            off = struct.unpack_from('<h', dex, pos+2)[0]
            print(f"  {rel:04x}: if-zero(0x{op:02x}) v{vA} -> {rel+off:04x}")
            pos += 4
        elif op == 0x28:
            off = struct.unpack_from('<b', dex, pos+1)[0]
            print(f"  {rel:04x}: goto -> {rel+off:04x}")
            pos += 2
        elif op == 0x29:
            off = struct.unpack_from('<h', dex, pos+2)[0]
            print(f"  {rel:04x}: goto/16 -> {rel+off:04x}")
            pos += 4
        else:
            sz = 2
            if op in (0x13,0x15,0x16,0x19,0x1a,0x1c,0x1f,0x20,0x22,0x23,0x29,0x2d,0x2e,0x2f,0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d) or (0x44<=op<=0x6d) or (0x90<=op<=0xaf) or (0xd0<=op<=0xe2):
                sz = 4
            elif op in (0x14,0x17,0x1b,0x24,0x25,0x26,0x2a,0x2b,0x2c) or (0x6e<=op<=0x78):
                sz = 6
            elif op == 0x18:
                sz = 10
            print(f"  {rel:04x}: op=0x{op:02x} (w=0x{w:04x})")
            pos += sz

targets = {'Lcom/transsion/filemanagerx/ui/storagefile/StorageFileViewModel$b;', 'Lf9/l$m;', 'Lf9/l$k;', 'Lf9/l$l;'}
for i in range(class_defs_size):
    c_idx, _, _, _, _, _, class_data_off, _ = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    if cname not in targets or not class_data_off:
        continue
    off = class_data_off
    sf, off = read_uleb128(dex, off)
    if_, off = read_uleb128(dex, off)
    dm, off = read_uleb128(dex, off)
    vm, off = read_uleb128(dex, off)
    for _ in range(sf + if_):
        _, off = read_uleb128(dex, off)
        _, off = read_uleb128(dex, off)
    m_idx = 0
    for _ in range(dm):
        d, off = read_uleb128(dex, off); m_idx += d
        _, off = read_uleb128(dex, off)
        c_off, off = read_uleb128(dex, off)
        if c_off: dump_code(c_off, f"[0x{m_idx:04x}] {get_method(m_idx)}")
    m_idx = 0
    for _ in range(vm):
        d, off = read_uleb128(dex, off); m_idx += d
        _, off = read_uleb128(dex, off)
        c_off, off = read_uleb128(dex, off)
        if c_off: dump_code(c_off, f"[0x{m_idx:04x}] {get_method(m_idx)}")
