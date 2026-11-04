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
    data = z.read('classes4.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', data, 56)
type_ids_size, type_ids_off = struct.unpack_from('<II', data, 64)
field_ids_size, field_ids_off = struct.unpack_from('<II', data, 80)
method_ids_size, method_ids_off = struct.unpack_from('<II', data, 88)
class_defs_size, class_defs_off = struct.unpack_from('<II', data, 96)

def get_str(idx):
    off = struct.unpack_from('<I', data, string_ids_off + idx * 4)[0]
    _, p = read_uleb128(data, off)
    end = data.find(0, p)
    return data[p:end].decode('utf-8', 'replace')

def get_type(idx):
    return get_str(struct.unpack_from('<I', data, type_ids_off + idx * 4)[0])

def get_method(idx):
    c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + idx * 8)
    return f"{get_type(c_idx)}->{get_str(n_idx)}"

for i in range(class_defs_size):
    c_off = class_defs_off + i * 32
    c_idx, access, super_idx, intf_off, src_idx, ann_off, cdata_off, static_off = struct.unpack_from('<IIIIIIII', data, c_off)
    cname = get_type(c_idx)
    if cname in ("Lj/a/k;", "Lj/a/f;", "Ltranssion/tranapplicationofquick/AdvancedSettingsActivity;"):
        print(f"=== {cname} ===")
        sf_size, p = read_uleb128(data, cdata_off)
        if_size, p = read_uleb128(data, p)
        dm_size, p = read_uleb128(data, p)
        vm_size, p = read_uleb128(data, p)
        for _ in range(sf_size + if_size):
            _, p = read_uleb128(data, p)
            _, p = read_uleb128(data, p)
        for mtype, cnt in [("direct", dm_size), ("virtual", vm_size)]:
            m_idx = 0
            for _ in range(cnt):
                d, p = read_uleb128(data, p)
                acc, p = read_uleb128(data, p)
                code_off, p = read_uleb128(data, p)
                m_idx += d
                if code_off:
                    regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', data, code_off)
                    insns = data[code_off + 16 : code_off + 16 + insns_size * 2]
                    print(f"  {mtype} {get_method(m_idx)} (regs={regs}, ins={ins}, outs={outs}, words={insns_size}, code_off=0x{code_off:x}):")
                    print(f"    hex: {insns.hex()}")
