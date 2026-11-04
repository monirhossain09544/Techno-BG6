import zipfile, struct

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from('<III', dex, 0x48)[:2]
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 0x58)

def read_uleb128(data, off):
    res, shift = 0, 0
    while True:
        b = data[off]
        off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return res, off

strings = []
for i in range(string_ids_size):
    off = struct.unpack_from('<I', dex, string_ids_off + i*4)[0]
    _, off = read_uleb128(dex, off)
    end = dex.find(b'\x00', off)
    strings.append(dex[off:end].decode('utf-8', 'replace'))

types = [strings[struct.unpack_from('<I', dex, type_ids_off + i*4)[0]] for i in range(type_ids_size)]
protos = []
for i in range(proto_ids_size):
    shorty_idx, return_type_idx, params_off = struct.unpack_from('<III', dex, proto_ids_off + i*12)
    ret = types[return_type_idx]
    params = []
    if params_off != 0:
        sz = struct.unpack_from('<I', dex, params_off)[0]
        for j in range(sz):
            t_idx = struct.unpack_from('<H', dex, params_off + 4 + j*2)[0]
            params.append(types[t_idx])
    protos.append(f"({''.join(params)}){ret}")

for i in range(method_ids_size):
    c_idx, p_idx, n_idx = struct.unpack_from('<HHI', dex, method_ids_off + i*8)
    if (strings[n_idx] == 'b' and protos[p_idx] == '()Lb7/a;') or (strings[n_idx] == 'i' and protos[p_idx] == '(I)V'):
        print(f"Method 0x{i:04x}: {types[c_idx]}->{strings[n_idx]}{protos[p_idx]}")
