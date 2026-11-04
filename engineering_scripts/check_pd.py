import zipfile, struct

src_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
with zipfile.ZipFile(src_apk, 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from('<III', dex, 0x48)[:2]
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 0x50)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 0x58)

def get_str(idx):
    off = struct.unpack_from('<I', dex, string_ids_off + idx*4)[0]
    p = off
    while dex[p] & 0x80:
        p += 1
    p += 1
    end = dex.index(0, p)
    return dex[p:end].decode('utf-8', 'replace')

def get_type(idx):
    if idx >= type_ids_size: return f"type_{idx}"
    return get_str(struct.unpack_from('<I', dex, type_ids_off + idx*4)[0])

def get_proto(idx):
    shorty_idx, ret_idx, param_off = struct.unpack_from('<III', dex, proto_ids_off + idx*12)
    ret = get_type(ret_idx)
    params = []
    if param_off:
        sz = struct.unpack_from('<I', dex, param_off)[0]
        for i in range(sz):
            t = struct.unpack_from('<H', dex, param_off + 4 + i*2)[0]
            params.append(get_type(t))
    return f"({''.join(params)}){ret}"

def get_method(idx):
    c, p, n = struct.unpack_from('<HHI', dex, method_ids_off + idx*8)
    return f"{get_type(c)}->{get_str(n)}{get_proto(p)}"

for i in range(method_ids_size):
    m = get_method(i)
    if any(k in m for k in ['ProgressDialog', 'PromptDialog', 'Lyb/v0;', 'Li9/m;', 'Le2/c', 'Lo7/f0;', 'Lo7/g0;', 'Landroidx/lifecycle/LiveData;', 'Landroidx/lifecycle/c0;', 'Li9/h;', 'Lo7/o0;']):
        print(f"method[0x{i:04x}]: {m}")
