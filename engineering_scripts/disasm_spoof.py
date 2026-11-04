import zipfile
import struct

def disassemble_class_methods(zip_path, dex_name, target_class_substr):
    with zipfile.ZipFile(zip_path, 'r') as z:
        data = z.read(dex_name)
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
    fields = []
    for i in range(field_ids_size):
        c_idx, t_idx, n_idx = struct.unpack_from('<HHI', data, field_ids_off + i * 8)
        fields.append((types[c_idx], strings[n_idx], types[t_idx]))
    methods = []
    for i in range(method_ids_size):
        c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
        methods.append((types[c_idx], strings[n_idx]))

    for i in range(class_defs_size):
        class_idx, access_flags, superclass_idx, interfaces_off, source_file_idx, annotations_off, class_data_off, static_values_off = struct.unpack_from('<IIIIIIII', data, class_defs_off + i * 32)
        cls_name = types[class_idx]
        if target_class_substr not in cls_name or class_data_off == 0:
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
                if any(k in m_name for k in ['Spoof', 'spoof', 'Setting', 'Config', 'Mock', 'mock', 'getStringForUser']):
                    print(f"  Method {m_name} (code_off=0x{code_off:x}):")
                    if code_off != 0:
                        insns_size = struct.unpack_from('<I', data, code_off + 12)[0]
                        ins_start = code_off + 16
                        ins_end = ins_start + insns_size * 2
                        for off in range(ins_start, ins_end, 2):
                            op = data[off]
                            if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and off + 6 <= ins_end:
                                mi = struct.unpack_from('<H', data, off + 2)[0]
                                if mi < len(methods):
                                    print(f"    [0x{off:x}] invoke {methods[mi][0]}->{methods[mi][1]}")
                            elif op == 0x1a and off + 4 <= ins_end:
                                si = struct.unpack_from('<H', data, off + 2)[0]
                                if si < len(strings):
                                    print(f"    [0x{off:x}] const-string {strings[si]!r}")
                            elif op == 0x1b and off + 6 <= ins_end:
                                si = struct.unpack_from('<I', data, off + 2)[0]
                                if si < len(strings):
                                    print(f"    [0x{off:x}] const-string/jumbo {strings[si]!r}")

srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"
disassemble_class_methods(srv_path, 'classes3.dex', 'AxSandboxService')
disassemble_class_methods(srv_path, 'classes3.dex', 'AppControlController')
fw_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework.jar"
disassemble_class_methods(fw_path, 'classes3.dex', 'android/provider/Settings$')
