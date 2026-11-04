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

for i in range(class_defs_size):
    c_idx, _, _, _, _, _, class_data_off, _ = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    if class_data_off == 0: continue
    off = class_data_off
    sf, off = read_uleb128(dex, off)
    if_, off = read_uleb128(dex, off)
    dm, off = read_uleb128(dex, off)
    vm, off = read_uleb128(dex, off)
    for _ in range(sf + if_):
        _, off = read_uleb128(dex, off)
        _, off = read_uleb128(dex, off)
    for cnt in (dm, vm):
        m_idx = 0
        for _ in range(cnt):
            d, off = read_uleb128(dex, off); m_idx += d
            _, off = read_uleb128(dex, off)
            c_off, off = read_uleb128(dex, off)
            if c_off == 0: continue
            mname = get_method(m_idx)
            insns_size = struct.unpack_from('<I', dex, c_off + 12)[0]
            pos = c_off + 16
            end = pos + insns_size * 2
            while pos < end:
                w = struct.unpack_from('<H', dex, pos)[0]
                if w == 0x0100:
                    ps_sz = struct.unpack_from('<H', dex, pos+2)[0]
                    pos += (ps_sz * 2 + 4) * 2
                    continue
                elif w == 0x0200:
                    ss_sz = struct.unpack_from('<H', dex, pos+2)[0]
                    pos += (ss_sz * 4 + 2) * 2
                    continue
                elif w == 0x0300:
                    ew = struct.unpack_from('<H', dex, pos+2)[0]
                    esz = struct.unpack_from('<I', dex, pos+4)[0]
                    pos += ((esz * ew + 1) // 2 + 4) * 2
                    continue
                op = w & 0xff
                if op == 0x1a:
                    sIdx = struct.unpack_from('<H', dex, pos+2)[0]
                    if sIdx < string_ids_size:
                        s = get_str(sIdx)
                        if 'state_change' in s or 'refresh' in s:
                            print(f"String '{s}' in {mname} (0x{c_off:x})")
                elif op in (0x6e,0x6f,0x70,0x71,0x72,0x74,0x75,0x76,0x77,0x78):
                    mid = struct.unpack_from('<H', dex, pos+2)[0]
                    if mid < method_ids_size:
                        cm = get_method(mid)
                        if cm.startswith('Li9/h;->') or cm.startswith('Lu7/c;->K') or cm.startswith('Lo7/q;->'):
                            print(f"Call {cm} in {mname} (0x{c_off:x})")
                sz = 2
                if op in (0x13,0x15,0x16,0x19,0x1a,0x1c,0x1f,0x20,0x22,0x23,0x29,0x2d,0x2e,0x2f,0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d) or (0x44<=op<=0x6d) or (0x90<=op<=0xaf) or (0xd0<=op<=0xe2):
                    sz = 4
                elif op in (0x14,0x17,0x1b,0x24,0x25,0x26,0x2a,0x2b,0x2c) or (0x6e<=op<=0x78):
                    sz = 6
                elif op == 0x18:
                    sz = 10
                pos += sz
