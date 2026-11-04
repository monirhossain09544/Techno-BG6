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

for i in range(class_defs_size):
    c_idx, flags, s_idx, int_off, src_idx, ann_off, data_off, val_off = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    sname = get_type(s_idx) if s_idx != 0xffffffff else None
    ifaces = []
    if int_off != 0:
        sz = struct.unpack_from('<I', dex, int_off)[0]
        for j in range(sz):
            t = struct.unpack_from('<H', dex, int_off + 4 + j*2)[0]
            ifaces.append(get_type(t))
    if 'La7/b;' in ifaces or 'Ln7/a;' in ifaces or cname in ('La7/b;', 'Ln7/a;', 'Lb7/a;', 'Lb7/b;', 'Lk8/a;', 'Lk8/c;', 'Lf9/l;', 'Lp8/k;', 'Lh9/o;'):
        print(f"{cname} extends {sname} implements {ifaces}")
