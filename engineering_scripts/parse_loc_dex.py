import zipfile, struct

apk_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk"
with zipfile.ZipFile(apk_path, "r") as z:
    dex = z.read("classes2.dex")

string_ids_size, string_ids_off = struct.unpack_from("<II", dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from("<II", dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from("<II", dex, 0x48)
field_ids_size, field_ids_off = struct.unpack_from("<II", dex, 0x50)
method_ids_size, method_ids_off = struct.unpack_from("<II", dex, 0x58)
class_defs_size, class_defs_off = struct.unpack_from("<II", dex, 0x60)

def read_uleb128(data, off):
    res = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return res, off

def get_str(idx):
    if idx >= string_ids_size: return ""
    off = struct.unpack_from("<I", dex, string_ids_off + idx * 4)[0]
    _, off = read_uleb128(dex, off)
    end = dex.find(b"\x00", off)
    return dex[off:end].decode("utf-8", "ignore")

def get_type(idx):
    if idx >= type_ids_size: return ""
    s_idx = struct.unpack_from("<I", dex, type_ids_off + idx * 4)[0]
    return get_str(s_idx)

def get_method(idx):
    if idx >= method_ids_size: return ""
    c_idx, p_idx, n_idx = struct.unpack_from("<HHI", dex, method_ids_off + idx * 8)
    return f"{get_type(c_idx)}->{get_str(n_idx)}"

def get_field(idx):
    if idx >= field_ids_size: return ""
    c_idx, t_idx, n_idx = struct.unpack_from("<HHI", dex, field_ids_off + idx * 8)
    return f"{get_type(c_idx)}->{get_str(n_idx)}"

for i in range(class_defs_size):
    c_idx, acc, sup_idx, int_off, src_idx, ann_off, data_off, stat_off = struct.unpack_from("<IIIIIIII", dex, class_defs_off + i * 32)
    cname = get_type(c_idx)
    if "LocationHighAccPreferenceController" in cname or "TranLocationImproveAccSettings" in cname or "LocationSettings" in cname or "LocationServices" in cname:
        print(f"\n=== CLASS: {cname} (super: {get_type(sup_idx)}) ===")
        if data_off == 0: continue
        sf_size, off = read_uleb128(dex, data_off)
        if_size, off = read_uleb128(dex, off)
        dm_size, off = read_uleb128(dex, off)
        vm_size, off = read_uleb128(dex, off)
        for _ in range(sf_size + if_size):
            _, off = read_uleb128(dex, off)
            _, off = read_uleb128(dex, off)
        for m_count in (dm_size, vm_size):
            m_idx = 0
            for _ in range(m_count):
                diff, off = read_uleb128(dex, off)
                m_idx += diff
                m_acc, off = read_uleb128(dex, off)
                code_off, off = read_uleb128(dex, off)
                print(f"  Method: {get_method(m_idx)}")
                if code_off != 0:
                    insns_size = struct.unpack_from("<I", dex, code_off + 12)[0]
                    insns = dex[code_off + 16 : code_off + 16 + insns_size * 2]
                    # scan for const-string (0x1a) and invoke-* (0x6e..0x72) and sget/iget
                    j = 0
                    while j < len(insns) - 3:
                        op = insns[j]
                        if op == 0x1a: # const-string vAA, string@BBBB
                            s_id = struct.unpack_from("<H", insns, j + 2)[0]
                            print(f"    const-string: '{get_str(s_id)}'")
                            j += 4
                        elif op == 0x1b: # const-string/jumbo
                            s_id = struct.unpack_from("<I", insns, j + 2)[0]
                            print(f"    const-string/jumbo: '{get_str(s_id)}'")
                            j += 6
                        elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72): # invoke
                            m_id = struct.unpack_from("<H", insns, j + 2)[0]
                            print(f"    invoke: {get_method(m_id)}")
                            j += 6
                        elif 0x60 <= op <= 0x6d: # sget/sput
                            f_id = struct.unpack_from("<H", insns, j + 2)[0]
                            print(f"    sfield: {get_field(f_id)}")
                            j += 4
                        else:
                            j += 2
