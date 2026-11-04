import zipfile
import struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\DocumentsUIGo.apk'

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
    for dname in [n for n in z.namelist() if n.endswith('.dex')]:
        data = z.read(dname)
        string_ids_size = struct.unpack_from('<I', data, 0x38)[0]
        string_ids_off = struct.unpack_from('<I', data, 0x3C)[0]
        type_ids_size = struct.unpack_from('<I', data, 0x40)[0]
        type_ids_off = struct.unpack_from('<I', data, 0x44)[0]
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
        methods = []
        for i in range(method_ids_size):
            c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
            methods.append((types[c_idx], strings[n_idx]))

        for idx, (c, n) in enumerate(methods):
            if 'Archive' in c or 'FilesActivity' in c or 'Archive' in n:
                print(f"[{dname}] method #{idx}: {c}->{n}")
