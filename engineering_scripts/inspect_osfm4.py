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
    dex_names = [n for n in z.namelist() if n.endswith('.dex')]
    for dname in dex_names:
        data = z.read(dname)
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

        types = []
        for i in range(type_ids_size):
            idx = struct.unpack_from('<I', data, type_ids_off + i * 4)[0]
            types.append(strings[idx])

        methods = []
        for i in range(method_ids_size):
            c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
            methods.append((types[c_idx], strings[n_idx]))

        fields = []
        for i in range(field_ids_size):
            c_idx, t_idx, n_idx = struct.unpack_from('<HHI', data, field_ids_off + i * 8)
            fields.append((types[c_idx], strings[n_idx], types[t_idx]))

        # Let's find all strings containing 'unsupport', 'zip', 'OPEN_ZIP', 'uncompress', 'UnCompress'
        target_str_indices = {}
        for idx, s in enumerate(strings):
            sl = s.lower()
            if any(k in sl for k in ['unsupport', 'not support', 'open_zip', 'fm_zip', 'application/zip', 'uncompress', 'fileuncompressaction']):
                target_str_indices[idx] = s
                print(f"[{dname}] STR #{idx}: {s!r}")

        # Let's inspect classes in o7/ (actions) and wherever item click or openFile happens
        for i in range(class_defs_size):
            c_off = class_defs_off + i * 32
            c_type_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', data, c_off)
            cname = types[c_type_idx]
            src = strings[src_idx] if src_idx != 0xFFFFFFFF else ''
            if cname.startswith('Lo7/') or 'open' in src.lower() or 'click' in src.lower() or 'zip' in src.lower() or 'util' in src.lower() or 'file' in src.lower():
                if class_data_off == 0:
                    continue
                pos = class_data_off
                s_fields, pos = read_uleb128(data, pos)
                i_fields, pos = read_uleb128(data, pos)
                d_methods, pos = read_uleb128(data, pos)
                v_methods, pos = read_uleb128(data, pos)
                for _ in range(s_fields + i_fields):
                    _, pos = read_uleb128(data, pos)
                    _, pos = read_uleb128(data, pos)
                m_idx = 0
                for _ in range(d_methods):
                    diff, pos = read_uleb128(data, pos)
                    m_idx += diff
                    acc, pos = read_uleb128(data, pos)
                    code_off, pos = read_uleb128(data, pos)
                    if cname.startswith('Lo7/'):
                        print(f"  {cname} ({src}) direct {methods[m_idx][1]} code=0x{code_off:x}")
                m_idx = 0
                for _ in range(v_methods):
                    diff, pos = read_uleb128(data, pos)
                    m_idx += diff
                    acc, pos = read_uleb128(data, pos)
                    code_off, pos = read_uleb128(data, pos)
                    if cname.startswith('Lo7/'):
                        print(f"  {cname} ({src}) virtual {methods[m_idx][1]} code=0x{code_off:x}")
