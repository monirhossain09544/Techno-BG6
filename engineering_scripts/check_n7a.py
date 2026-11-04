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

for i in range(method_ids_size):
    m = get_method(i)
    if m.startswith('Ln7/a'):
        print(f"Method[0x{i:04x}] {m}")

print("\nClasses implementing Ln7/a or extending Lb7/a:")
for i in range(class_defs_size):
    c_idx, acc, sup_idx, intf_off, _, _, class_data_off, _ = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    sup = get_type(sup_idx) if sup_idx != 0xffffffff else ''
    intfs = []
    if intf_off != 0:
        sz = struct.unpack_from('<I', dex, intf_off)[0]
        for j in range(sz):
            t = struct.unpack_from('<H', dex, intf_off + 4 + j*2)[0]
            intfs.append(get_type(t))
    if 'Ln7/a;' in intfs or sup == 'Lb7/a;' or cname in ('Lb7/a;', 'Lf9/l;', 'Lm8/f;', 'Lw8/m;'):
        print(f"  {cname} extends {sup} implements {intfs}")
