import zipfile, struct

apk_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SGPS.apk"
with zipfile.ZipFile(apk_path, "r") as z:
    dex = z.read("classes.dex")

string_ids_size, string_ids_off = struct.unpack_from("<II", dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from("<II", dex, 0x40)
method_ids_size, method_ids_off = struct.unpack_from("<II", dex, 0x58)
class_defs_size, class_defs_off = struct.unpack_from("<II", dex, 0x60)

def read_uleb128(data, off):
    res, shift = 0, 0
    while True:
        b = data[off]; off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0: break
        shift += 7
    return res, off

def get_str(idx):
    if idx >= string_ids_size: return ""
    off = struct.unpack_from("<I", dex, string_ids_off + idx * 4)[0]
    _, off = read_uleb128(dex, off)
    return dex[off:dex.find(b"\x00", off)].decode("utf-8", "ignore")

def get_type(idx):
    return get_str(struct.unpack_from("<I", dex, type_ids_off + idx * 4)[0]) if idx < type_ids_size else ""

def get_method(idx):
    if idx >= method_ids_size: return ""
    c_idx, p_idx, n_idx = struct.unpack_from("<HHI", dex, method_ids_off + idx * 8)
    return f"{get_type(c_idx)}->{get_str(n_idx)}"

for i in range(class_defs_size):
    c_idx, acc, sup_idx, int_off, src_idx, ann_off, data_off, stat_off = struct.unpack_from("<IIIIIIII", dex, class_defs_off + i * 32)
    cname = get_type(c_idx)
    if "SgpsActivity" in cname and data_off != 0:
        sf_size, off = read_uleb128(dex, data_off)
        if_size, off = read_uleb128(dex, off)
        dm_size, off = read_uleb128(dex, off)
        vm_size, off = read_uleb128(dex, off)
        for _ in range(sf_size + if_size):
            _, off = read_uleb128(dex, off); _, off = read_uleb128(dex, off)
        for m_count in (dm_size, vm_size):
            m_idx = 0
            for _ in range(m_count):
                diff, off = read_uleb128(dex, off); m_idx += diff
                m_acc, off = read_uleb128(dex, off)
                code_off, off = read_uleb128(dex, off)
                mname = get_method(m_idx)
                if code_off != 0:
                    insns_size = struct.unpack_from("<I", dex, code_off + 12)[0]
                    insns = dex[code_off + 16 : code_off + 16 + insns_size * 2]
                    cstrs = []
                    j = 0
                    while j < len(insns) - 3:
                        op = insns[j]
                        if op == 0x1a:
                            cstrs.append(get_str(struct.unpack_from("<H", insns, j + 2)[0]))
                            j += 4
                        elif op == 0x1b:
                            cstrs.append(get_str(struct.unpack_from("<I", insns, j + 2)[0]))
                            j += 6
                        else:
                            j += 2
                    if any(any(k in s for k in ["RTK", "RTD", "REALEPH", "VDR", "SPREADORBIT", "CP-MODE", "SUPL", "GPS_EXTRA"]) for s in cstrs):
                        print(f"{cname} :: {mname} -> {cstrs}")
