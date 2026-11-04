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
proto_ids_size, proto_ids_off = struct.unpack_from('<II', data, 72)
field_ids_size, field_ids_off = struct.unpack_from('<II', data, 80)
method_ids_size, method_ids_off = struct.unpack_from('<II', data, 88)

def get_str(idx):
    off = struct.unpack_from('<I', data, string_ids_off + idx * 4)[0]
    _, p = read_uleb128(data, off)
    end = data.find(0, p)
    return data[p:end].decode('utf-8', 'replace')

def get_type(idx):
    return get_str(struct.unpack_from('<I', data, type_ids_off + idx * 4)[0])

def get_proto(idx):
    shorty_idx, ret_idx, param_off = struct.unpack_from('<III', data, proto_ids_off + idx * 12)
    params = []
    if param_off != 0:
        sz = struct.unpack_from('<I', data, param_off)[0]
        for i in range(sz):
            t = struct.unpack_from('<H', data, param_off + 4 + i * 2)[0]
            params.append(get_type(t))
    return f"({''.join(params)}){get_type(ret_idx)}"

print("=== Matching Methods in classes4.dex ===")
for i in range(method_ids_size):
    c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
    cname = get_type(c_idx)
    mname = get_str(n_idx)
    if any(k in cname for k in ["PackageManager", "SharedPreferences", "Settings$System", "Settings$Secure", "Settings$Global", "Context", "Intent", "ResolveInfo"]) or mname in ("getInstalledApplications", "getInstalledPackages", "queryIntentActivities", "getSharedPreferences", "getStringSet", "putStringSet", "split", "contains"):
        print(f"  0x{i:04x}: {cname}->{mname}{get_proto(p_idx)}")

print("=== Matching Fields in classes4.dex ===")
for i in range(field_ids_size):
    c_idx, t_idx, n_idx = struct.unpack_from('<HHI', data, field_ids_off + i * 8)
    cname = get_type(c_idx)
    fname = get_str(n_idx)
    if any(k in cname for k in ["ApplicationInfo", "PackageInfo", "ActivityInfo", "ResolveInfo", "Lj/a/k;"]):
        print(f"  0x{i:04x}: {cname}->{fname}:{get_type(t_idx)}")
