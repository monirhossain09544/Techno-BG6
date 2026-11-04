import zipfile
import struct
import sys

sys.stdout.reconfigure(encoding='utf-8')
apk_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings_locale.apk"

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
    for dex_name in [n for n in z.namelist() if n.endswith('.dex')]:
        data = z.read(dex_name)
        string_ids_size, string_ids_off = struct.unpack_from('<II', data, 56)
        type_ids_size, type_ids_off = struct.unpack_from('<II', data, 64)
        proto_ids_size, proto_ids_off = struct.unpack_from('<II', data, 72)
        field_ids_size, field_ids_off = struct.unpack_from('<II', data, 80)
        method_ids_size, method_ids_off = struct.unpack_from('<II', data, 88)
        class_defs_size, class_defs_off = struct.unpack_from('<II', data, 96)

        def get_str(idx):
            if idx >= string_ids_size: return ""
            off = struct.unpack_from('<I', data, string_ids_off + idx * 4)[0]
            _, p = read_uleb128(data, off)
            end = data.find(0, p)
            return data[p:end].decode('utf-8', 'replace')

        def get_type(idx):
            if idx >= type_ids_size: return ""
            s_idx = struct.unpack_from('<I', data, type_ids_off + idx * 4)[0]
            return get_str(s_idx)

        def get_field(idx):
            c_idx, t_idx, n_idx = struct.unpack_from('<HHI', data, field_ids_off + idx * 8)
            return f"{get_type(c_idx)}->{get_str(n_idx)}:{get_type(t_idx)}"

        def get_method(idx):
            c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + idx * 8)
            return f"{get_type(c_idx)}->{get_str(n_idx)}"

        for i in range(class_defs_size):
            c_off = class_defs_off + i * 32
            c_idx, access, super_idx, intf_off, src_idx, ann_off, cdata_off, static_off = struct.unpack_from('<IIIIIIII', data, c_off)
            cname = get_type(c_idx)
            if "tranapplicationofquick" in cname or cname.startswith("Lj/a/"):
                print(f"=== {dex_name}: {cname} ===")
                if cdata_off == 0: continue
                sf_size, p = read_uleb128(data, cdata_off)
                if_size, p = read_uleb128(data, p)
                dm_size, p = read_uleb128(data, p)
                vm_size, p = read_uleb128(data, p)
                f_idx = 0
                for _ in range(sf_size):
                    d, p = read_uleb128(data, p)
                    acc, p = read_uleb128(data, p)
                    f_idx += d
                    print(f"  sfield: {get_field(f_idx)}")
                f_idx = 0
                for _ in range(if_size):
                    d, p = read_uleb128(data, p)
                    acc, p = read_uleb128(data, p)
                    f_idx += d
                    print(f"  ifield: {get_field(f_idx)}")
                for mtype, cnt in [("direct", dm_size), ("virtual", vm_size)]:
                    m_idx = 0
                    for _ in range(cnt):
                        d, p = read_uleb128(data, p)
                        acc, p = read_uleb128(data, p)
                        code_off, p = read_uleb128(data, p)
                        m_idx += d
                        print(f"  {mtype} {get_method(m_idx)} code_off=0x{code_off:x}")
                        if code_off != 0:
                            insns_size = struct.unpack_from('<I', data, code_off + 12)[0]
                            insns = data[code_off + 16 : code_off + 16 + insns_size * 2]
                            # scan for strings, methods, fields in bytecode
                            pos = 0
                            while pos < len(insns):
                                op = insns[pos]
                                if op == 0x1a and pos + 4 <= len(insns):
                                    sidx = struct.unpack_from('<H', insns, pos + 2)[0]
                                    print(f"    +{pos:03x}: const-string '{get_str(sidx)}'")
                                    pos += 4
                                elif op == 0x1b and pos + 6 <= len(insns):
                                    sidx = struct.unpack_from('<I', insns, pos + 2)[0]
                                    print(f"    +{pos:03x}: const-string/jumbo '{get_str(sidx)}'")
                                    pos += 6
                                elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and pos + 6 <= len(insns):
                                    midx = struct.unpack_from('<H', insns, pos + 2)[0]
                                    print(f"    +{pos:03x}: invoke {get_method(midx)}")
                                    pos += 6
                                elif op in (0x74, 0x75, 0x76, 0x77, 0x78) and pos + 6 <= len(insns):
                                    midx = struct.unpack_from('<H', insns, pos + 2)[0]
                                    print(f"    +{pos:03x}: invoke-range {get_method(midx)}")
                                    pos += 6
                                elif 0x52 <= op <= 0x6d and pos + 4 <= len(insns):
                                    fidx = struct.unpack_from('<H', insns, pos + 2)[0]
                                    print(f"    +{pos:03x}: field {get_field(fidx)}")
                                    pos += 4
                                else:
                                    pos += 2
