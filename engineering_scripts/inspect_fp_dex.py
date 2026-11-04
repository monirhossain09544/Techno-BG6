import struct

data = open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\fp_classes3.dex", "rb").read()

string_ids_size, string_ids_off = struct.unpack_from("<II", data, 0x38)
type_ids_size, type_ids_off = struct.unpack_from("<II", data, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from("<II", data, 0x48)
field_ids_size, field_ids_off = struct.unpack_from("<II", data, 0x50)
method_ids_size, method_ids_off = struct.unpack_from("<II", data, 0x58)
class_defs_size, class_defs_off = struct.unpack_from("<II", data, 0x60)

def read_uleb128(buf, pos):
    result = 0
    shift = 0
    while True:
        b = buf[pos]
        pos += 1
        result |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, pos

strings = []
for i in range(string_ids_size):
    off = struct.unpack_from("<I", data, string_ids_off + i * 4)[0]
    _, pos = read_uleb128(data, off)
    end = data.find(b"\x00", pos)
    strings.append(data[pos:end].decode("utf-8", errors="replace"))

def get_type(tid):
    sid = struct.unpack_from("<I", data, type_ids_off + tid * 4)[0]
    return strings[sid]

def get_method(mid):
    cid, pid, nid = struct.unpack_from("<HHI", data, method_ids_off + mid * 8)
    return f"{get_type(cid)}->{strings[nid]}"

def get_field(fid):
    cid, tid, nid = struct.unpack_from("<HHI", data, field_ids_off + fid * 8)
    return f"{get_type(cid)}->{strings[nid]}:{get_type(tid)}"

target_sids = {}
for idx, s in enumerate(strings):
    if any(k in s.lower() for k in ["rooteddevice", "topjohnwu", "rootbeer", "isrooted", "magisk", "su_binary", "/system/xbin/su", "test-keys", "checkForRoot"]):
        target_sids[idx] = s
        print(f"String [{idx}]: {s!r}")

# Search all class_defs and their methods for const-string / const-string/jumbo referencing target_sids
for cidx in range(class_defs_size):
    c_tid, access, super_tid, iface_off, src_sid, ann_off, cdata_off, svals_off = struct.unpack_from("<IIIIIIII", data, class_defs_off + cidx * 32)
    if cdata_off == 0:
        continue
    cname = get_type(c_tid)
    pos = cdata_off
    sf_size, pos = read_uleb128(data, pos)
    if_size, pos = read_uleb128(data, pos)
    dm_size, pos = read_uleb128(data, pos)
    vm_size, pos = read_uleb128(data, pos)
    for _ in range(sf_size):
        _, pos = read_uleb128(data, pos)
        _, pos = read_uleb128(data, pos)
    for _ in range(if_size):
        _, pos = read_uleb128(data, pos)
        _, pos = read_uleb128(data, pos)
    for mlist_size in (dm_size, vm_size):
        mid = 0
        for _ in range(mlist_size):
            dmid, pos = read_uleb128(data, pos)
            mid += dmid
            mflags, pos = read_uleb128(data, pos)
            code_off, pos = read_uleb128(data, pos)
            if code_off == 0:
                continue
            insns_size = struct.unpack_from("<I", data, code_off + 12)[0]
            insns = data[code_off + 16 : code_off + 16 + insns_size * 2]
            # Check for const-string (0x1a) or const-string/jumbo (0x1b)
            i = 0
            found = []
            while i < len(insns):
                op = insns[i]
                if op == 0x1a and i + 4 <= len(insns):
                    sid = struct.unpack_from("<H", insns, i + 2)[0]
                    if sid in target_sids:
                        found.append((sid, target_sids[sid]))
                elif op == 0x1b and i + 6 <= len(insns):
                    sid = struct.unpack_from("<I", insns, i + 2)[0]
                    if sid in target_sids:
                        found.append((sid, target_sids[sid]))
                i += 2
            if found:
                print(f"\nMATCH in {get_method(mid)} (class {cname}, code_off=0x{code_off:x}):")
                for sid, s in found:
                    print(f"  uses [{sid}] {s!r}")
