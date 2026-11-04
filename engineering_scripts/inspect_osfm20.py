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
        if cname == 'Lo7/f0;':
            pos = class_data_off
            s_fields, pos = read_uleb128(data, pos)
            i_fields, pos = read_uleb128(data, pos)
            d_methods, pos = read_uleb128(data, pos)
            v_methods, pos = read_uleb128(data, pos)
            for _ in range(s_fields + i_fields):
                _, pos = read_uleb128(data, pos)
                _, pos = read_uleb128(data, pos)
            for count in (d_methods, v_methods):
                m_idx = 0
                for _ in range(count):
                    diff, pos = read_uleb128(data, pos)
                    m_idx += diff
                    acc, pos = read_uleb128(data, pos)
                    code_off, pos = read_uleb128(data, pos)
                    insns_size = struct.unpack_from('<I', data, code_off + 12)[0]
                    insns = data[code_off + 16 : code_off + 16 + insns_size * 2]
                    print(f"=== {cname}->{methods[m_idx][1]} (code=0x{code_off:x}) ===")
                    p = 0
                    while p < len(insns):
                        op = insns[p]
                        w0 = struct.unpack_from('<H', insns, p)[0]
                        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and p + 6 <= len(insns):
                            mid = struct.unpack_from('<H', insns, p + 2)[0]
                            print(f"  0x{p//2:04x}: invoke-{op:02x} {methods[mid][0]}->{methods[mid][1]} (raw: {w0:04x} {mid:04x} {struct.unpack_from('<H', insns, p+4)[0]:04x})")
                            p += 6
                        else:
                            print(f"  0x{p//2:04x}: {w0:04x}")
                            p += 2
