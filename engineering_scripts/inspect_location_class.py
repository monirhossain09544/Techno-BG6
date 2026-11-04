import zipfile
import struct

from disasm_all_hidedev import disassemble_all_methods_of_class

fw_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework.jar"
srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"

def inspect_location_methods():
    with zipfile.ZipFile(fw_path, 'r') as z:
        data = z.read('classes2.dex')
    string_ids_size, string_ids_off = struct.unpack_from('<II', data, 0x38)
    type_ids_size, type_ids_off = struct.unpack_from('<II', data, 0x40)
    field_ids_size, field_ids_off = struct.unpack_from('<II', data, 0x50)
    method_ids_size, method_ids_off = struct.unpack_from('<II', data, 0x58)
    class_defs_size, class_defs_off = struct.unpack_from('<II', data, 0x60)

    def read_uleb128(pos):
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

    strings = []
    for i in range(string_ids_size):
        off = struct.unpack_from('<I', data, string_ids_off + i * 4)[0]
        _, pos = read_uleb128(off)
        end = data.find(b'\x00', pos)
        strings.append(data[pos:end].decode('utf-8', errors='replace'))

    types = [strings[struct.unpack_from('<I', data, type_ids_off + i * 4)[0]] for i in range(type_ids_size)]
    methods = []
    for i in range(method_ids_size):
        c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
        methods.append((types[c_idx], strings[n_idx]))

    for i in range(class_defs_size):
        class_idx, access_flags, superclass_idx, interfaces_off, source_file_idx, annotations_off, class_data_off, static_values_off = struct.unpack_from('<IIIIIIII', data, class_defs_off + i * 32)
        cls_name = types[class_idx]
        if cls_name != 'Landroid/location/Location;' or class_data_off == 0:
            continue
        print(f"=== Class {cls_name} ===")
        pos = class_data_off
        static_fields_size, pos = read_uleb128(pos)
        instance_fields_size, pos = read_uleb128(pos)
        direct_methods_size, pos = read_uleb128(pos)
        virtual_methods_size, pos = read_uleb128(pos)
        for _ in range(static_fields_size + instance_fields_size):
            _, pos = read_uleb128(pos)
            _, pos = read_uleb128(pos)
        for kind, count in [("direct", direct_methods_size), ("virtual", virtual_methods_size)]:
            m_idx = 0
            for _ in range(count):
                diff, pos = read_uleb128(pos)
                m_idx += diff
                acc, pos = read_uleb128(pos)
                code_off, pos = read_uleb128(pos)
                m_name = methods[m_idx][1]
                if any(k in m_name.lower() for k in ['mock', 'parcel', 'set']):
                    insns_size = struct.unpack_from('<I', data, code_off + 12)[0] if code_off else 0
                    raw_hex = data[code_off+16 : code_off+16+insns_size*2].hex(' ') if code_off else ''
                    print(f"  Method {m_name} (code_off=0x{code_off:x}, insns={insns_size}): {raw_hex}")

inspect_location_methods()
