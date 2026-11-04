import zipfile
import struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk'

def read_uleb128(data, pos):
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

with zipfile.ZipFile(apk_path, 'r') as z:
    data = z.read('classes.dex')
    string_ids_size = struct.unpack_from('<I', data, 0x38)[0]
    string_ids_off = struct.unpack_from('<I', data, 0x3C)[0]
    type_ids_size = struct.unpack_from('<I', data, 0x40)[0]
    type_ids_off = struct.unpack_from('<I', data, 0x44)[0]
    proto_ids_size = struct.unpack_from('<I', data, 0x48)[0]
    proto_ids_off = struct.unpack_from('<I', data, 0x4C)[0]
    field_ids_size = struct.unpack_from('<I', data, 0x50)[0]
    field_ids_off = struct.unpack_from('<I', data, 0x54)[0]
    method_ids_size = struct.unpack_from('<I', data, 0x58)[0]
    method_ids_off = struct.unpack_from('<I', data, 0x5C)[0]
    class_defs_size = struct.unpack_from('<I', data, 0x60)[0]
    class_defs_off = struct.unpack_from('<I', data, 0x64)[0]

    strings = []
    for i in range(string_ids_size):
        off = struct.unpack_from('<I', data, string_ids_off + i * 4)[0]
        _, pos = read_uleb128(data, off)
        end = data.find(b'\x00', pos)
        strings.append(data[pos:end].decode('utf-8', errors='replace'))

    types = [strings[struct.unpack_from('<I', data, type_ids_off + i * 4)[0]] for i in range(type_ids_size)]
    protos = []
    for i in range(proto_ids_size):
        shorty_idx, ret_idx, param_off = struct.unpack_from('<III', data, proto_ids_off + i * 12)
        params = []
        if param_off != 0:
            pcount = struct.unpack_from('<I', data, param_off)[0]
            params = [types[struct.unpack_from('<H', data, param_off + 4 + j * 2)[0]] for j in range(pcount)]
        protos.append((types[ret_idx], params))

    fields = [(types[struct.unpack_from('<H', data, field_ids_off + i * 8)[0]], strings[struct.unpack_from('<I', data, field_ids_off + i * 8 + 4)[0]], types[struct.unpack_from('<H', data, field_ids_off + i * 8 + 2)[0]]) for i in range(field_ids_size)]
    methods = []
    for i in range(method_ids_size):
        c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
        methods.append((types[c_idx], strings[n_idx], protos[p_idx]))

    for f in fields:
        if f[2] == 'Ln7/a;' or f[0] in ('Lb7/a;', 'Lz6/c;', 'Lz6/d;', 'Ld9/p;'):
            print(f"Field: {f[0]}->{f[1]}:{f[2]}")

    for idx, (c, n, p) in enumerate(methods):
        if c in ('Lb7/a;', 'Lz6/c;', 'Lz6/d;', 'Ld9/p;') or p[0] == 'Ln7/a;':
            print(f"Method #{idx}: {c}->{n}({', '.join(p[1])}){p[0]}")
