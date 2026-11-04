import zipfile
import struct

def dump_dex_matches(zip_path, dex_name, target_strings):
    with zipfile.ZipFile(zip_path, 'r') as z:
        data = z.read(dex_name)
    string_ids_size, string_ids_off = struct.unpack_from('<II', data, 0x38)
    type_ids_size, type_ids_off = struct.unpack_from('<II', data, 0x40)
    field_ids_size, field_ids_off = struct.unpack_from('<II', data, 0x50)
    method_ids_size, method_ids_off = struct.unpack_from('<II', data, 0x58)

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

    print(f"=== {zip_path} :: {dex_name} ===")
    for m_idx, (cls, name) in enumerate(methods):
        for t in target_strings:
            if t in cls or t in name:
                print(f"  Method[{m_idx}]: {cls}->{name}")

    for s_idx, s in enumerate(strings):
        for t in target_strings:
            if t in s:
                print(f"  String[{s_idx}]: {s!r}")
                if s_idx < 65536:
                    pat = struct.pack('<H', s_idx)
                    pos = 0
                    while True:
                        p = data.find(pat, pos)
                        if p == -1:
                            break
                        if p >= 2 and data[p - 2] == 0x1a:
                            print(f"    const-string at 0x{p-2:x}:")
                            for off in range(max(0, p - 40), min(len(data) - 6, p + 120), 2):
                                op = data[off]
                                if op in (0x6e, 0x6f, 0x70, 0x71, 0x72):
                                    mi = struct.unpack_from('<H', data, off + 2)[0]
                                    if mi < len(methods):
                                        print(f"      [0x{off:x}] invoke {methods[mi][0]}->{methods[mi][1]}")
                                elif op == 0x1a:
                                    si = struct.unpack_from('<H', data, off + 2)[0]
                                    if si < len(strings):
                                        print(f"      [0x{off:x}] const-string {strings[si]!r}")
                        pos = p + 1

srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"
dump_dex_matches(srv_path, 'classes3.dex', ['SpoofedSetting', 'SpoofSetting', 'spoof_'])
dump_dex_matches(srv_path, 'classes2.dex', ['mock_location', 'mockLocation'])
