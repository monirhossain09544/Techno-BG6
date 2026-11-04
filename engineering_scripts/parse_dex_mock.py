import zipfile
import struct

def parse_dex_strings_and_find_code(zip_path, dex_name, target_strings):
    with zipfile.ZipFile(zip_path, 'r') as z:
        data = z.read(dex_name)
    # DEX header
    string_ids_size, string_ids_off = struct.unpack_from('<II', data, 0x38)
    type_ids_size, type_ids_off = struct.unpack_from('<II', data, 0x40)
    proto_ids_size, proto_ids_off = struct.unpack_from('<II', data, 0x48)
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

    types = []
    for i in range(type_ids_size):
        idx = struct.unpack_from('<I', data, type_ids_off + i * 4)[0]
        types.append(strings[idx])

    methods = []
    for i in range(method_ids_size):
        class_idx, proto_idx, name_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
        methods.append((types[class_idx], strings[name_idx]))

    target_indices = {}
    for idx, s in enumerate(strings):
        for t in target_strings:
            if t in s:
                target_indices[idx] = s

    print(f"=== {zip_path} :: {dex_name} ===")
    for idx, s in target_indices.items():
        print(f"  String[{idx}] = {s!r}")

    # Search for const-string (0x1a: B|A|1a CCCC) or const-string/jumbo (0x1b: AA|1b BBBBBBBB)
    for idx, s in target_indices.items():
        # Search 0x1a XX <idx_lo> <idx_hi>
        if idx < 65536:
            pat = struct.pack('<H', idx)
            pos = 0
            while True:
                p = data.find(pat, pos)
                if p == -1:
                    break
                if p >= 2 and data[p - 2] == 0x1a:
                    print(f"  Found const-string for {s!r} at offset 0x{p-2:x}")
                    # dump surrounding 64 bytes of bytecode and resolve method calls (0x6e..0x72)
                    ins_start = max(0, p - 32)
                    ins_end = min(len(data), p + 96)
                    for off in range(ins_start, ins_end, 2):
                        op = data[off]
                        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and off + 6 <= len(data):
                            m_idx = struct.unpack_from('<H', data, off + 2)[0]
                            if m_idx < len(methods):
                                print(f"    [0x{off:x}] invoke {methods[m_idx][0]}->{methods[m_idx][1]}")
                        elif op == 0x1a and off + 4 <= len(data):
                            s_idx = struct.unpack_from('<H', data, off + 2)[0]
                            if s_idx < len(strings):
                                print(f"    [0x{off:x}] const-string {strings[s_idx]!r}")
                        elif op in (0x12, 0x13) and off + 2 <= len(data):
                            print(f"    [0x{off:x}] const op=0x{op:02x} byte1=0x{data[off+1]:02x}")
                        elif op in (0x0f, 0x0e):
                            print(f"    [0x{off:x}] return op=0x{op:02x} reg=0x{data[off+1]:02x}")
                pos = p + 1

fw_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework.jar"
parse_dex_strings_and_find_code(fw_path, 'classes2.dex', ['override_mock_location', 'virtual_sensors_are_real'])
parse_dex_strings_and_find_code(fw_path, 'classes3.dex', ['getSpoofedSetting', 'mock_location'])
parse_dex_strings_and_find_code(fw_path, 'classes5.dex', ['getSpoofedSetting'])
