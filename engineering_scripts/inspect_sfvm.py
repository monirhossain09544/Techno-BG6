import zipfile, struct

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 56)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 64)
proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 72)
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 80)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 88)
class_defs_size, class_defs_off = struct.unpack_from('<II', dex, 96)

def read_uleb128(data, off):
    res, shift = 0, 0
    while True:
        b = data[off]; off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0: break
        shift += 7
    return res, off

def get_string(idx):
    off = struct.unpack_from('<I', dex, string_ids_off + idx * 4)[0]
    _, off = read_uleb128(dex, off)
    end = dex.find(b'\x00', off)
    return dex[off:end].decode('utf-8', errors='replace')

def get_type(idx):
    return get_string(struct.unpack_from('<I', dex, type_ids_off + idx * 4)[0])

def get_method(idx):
    c_idx, p_idx, n_idx = struct.unpack_from('<HHI', dex, method_ids_off + idx * 8)
    s_idx, r_idx, p_off = struct.unpack_from('<III', dex, proto_ids_off + p_idx * 12)
    params = []
    if p_off:
        sz = struct.unpack_from('<I', dex, p_off)[0]
        for i in range(sz):
            t = struct.unpack_from('<H', dex, p_off + 4 + i * 2)[0]
            params.append(get_type(t))
    return get_type(c_idx), get_string(n_idx), f"({''.join(params)}){get_type(r_idx)}"

def get_field(idx):
    c_idx, t_idx, n_idx = struct.unpack_from('<HHI', dex, field_ids_off + idx * 8)
    return get_type(c_idx), get_string(n_idx), get_type(t_idx)

def dump_class(target_cls):
    for i in range(class_defs_size):
        c_idx, _, _, _, _, _, class_data_off, _ = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i * 32)
        if get_type(c_idx) == target_cls and class_data_off:
            off = class_data_off
            sf_sz, off = read_uleb128(dex, off)
            if_sz, off = read_uleb128(dex, off)
            dm_sz, off = read_uleb128(dex, off)
            vm_sz, off = read_uleb128(dex, off)
            for _ in range(sf_sz + if_sz):
                _, off = read_uleb128(dex, off)
                _, off = read_uleb128(dex, off)
            for count in (dm_sz, vm_sz):
                m_idx = 0
                for _ in range(count):
                    d, off = read_uleb128(dex, off); m_idx += d
                    acc, off = read_uleb128(dex, off)
                    code_off, off = read_uleb128(dex, off)
                    cn, mn, pr = get_method(m_idx)
                    print(f"Method 0x{m_idx:04x} {cn}->{mn}{pr} @ 0x{code_off:x}")
                    if code_off:
                        regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', dex, code_off)
                        words = [struct.unpack_from('<H', dex, code_off + 16 + 2*k)[0] for k in range(sz)]
                        for k, w in enumerate(words):
                            op = w & 0xff
                            note = ""
                            if op in (0x6e, 0x6f, 0x70, 0x71, 0x72, 0x74, 0x75, 0x76, 0x77, 0x78) and k+1 < sz:
                                note = f" -> method 0x{words[k+1]:04x} {get_method(words[k+1])}"
                            elif op in range(0x52, 0x6e) and k+1 < sz:
                                note = f" -> field 0x{words[k+1]:04x} {get_field(words[k+1])}"
                            elif op in (0x1a, 0x1c, 0x1f, 0x22) and k+1 < sz:
                                if op == 0x1a: note = f" -> str {get_string(words[k+1])!r}"
                                else: note = f" -> type 0x{words[k+1]:04x} {get_type(words[k+1])}"
                            print(f"  0x{k:04x}: 0x{w:04x}{note}")

dump_class('Lcom/transsion/filemanagerx/ui/storagefile/StorageFileViewModel;')
