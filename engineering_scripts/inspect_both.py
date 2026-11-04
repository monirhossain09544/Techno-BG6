import zipfile
import struct

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

# 1. Check La7/b; and Ln7/a; in OSFileManager.apk
with zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk', 'r') as z:
    data = z.read('classes.dex')
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
    methods = [(types[struct.unpack_from('<H', data, method_ids_off + i * 8)[0]], strings[struct.unpack_from('<I', data, method_ids_off + i * 8 + 4)[0]]) for i in range(method_ids_size)]

    for i in range(class_defs_size):
        c_off = class_defs_off + i * 32
        c_type_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', data, c_off)
        cname = types[c_type_idx]
        if cname in ('La7/b;', 'Ln7/a;', 'Lz6/c;'):
            ifaces = []
            if interfaces_off != 0:
                icount = struct.unpack_from('<I', data, interfaces_off)[0]
                ifaces = [types[struct.unpack_from('<H', data, interfaces_off + 4 + j * 2)[0]] for j in range(icount)]
            print(f"OSFM {cname} super={types[super_idx]} interfaces={ifaces}")

# 2. Check FilesActivity and BaseActivity in DocumentsUIGo.apk
with zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\DocumentsUIGo.apk', 'r') as z:
    data = z.read('classes.dex')
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
    methods = [(types[struct.unpack_from('<H', data, method_ids_off + i * 8)[0]], strings[struct.unpack_from('<I', data, method_ids_off + i * 8 + 4)[0]]) for i in range(method_ids_size)]

    for idx, (c, n) in enumerate(methods):
        if 'FilesActivity' in c or 'ActionHandler' in c or 'View' in c and 'documentsui' in c:
            if any(k in n.lower() for k in ['archive', 'view', 'open', 'init', 'launch', 'pick']):
                print(f"DocUI {c}->{n}")
