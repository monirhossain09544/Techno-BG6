import zipfile, struct

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 0x48)
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 0x50)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 0x58)
class_defs_size, class_defs_off = struct.unpack_from('<II', dex, 0x60)

def read_uleb128(data, off):
    res, shift = 0, 0
    while True:
        b = data[off]
        off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return res, off

strings = []
for i in range(string_ids_size):
    off = struct.unpack_from('<I', dex, string_ids_off + i*4)[0]
    _, off = read_uleb128(dex, off)
    end = dex.find(b'\x00', off)
    strings.append(dex[off:end].decode('utf-8', 'replace'))

types = [strings[struct.unpack_from('<I', dex, type_ids_off + i*4)[0]] for i in range(type_ids_size)]
protos = []
for i in range(proto_ids_size):
    shorty_idx, return_type_idx, params_off = struct.unpack_from('<III', dex, proto_ids_off + i*12)
    ret = types[return_type_idx]
    params = []
    if params_off != 0:
        sz = struct.unpack_from('<I', dex, params_off)[0]
        for j in range(sz):
            t_idx = struct.unpack_from('<H', dex, params_off + 4 + j*2)[0]
            params.append(types[t_idx])
    protos.append(f"({''.join(params)}){ret}")

fields = [(types[c], strings[n], types[t]) for c, t, n in [struct.unpack_from('<HHI', dex, field_ids_off + i*8) for i in range(field_ids_size)]]
methods = [(types[c], strings[n], protos[p]) for c, p, n in [struct.unpack_from('<HHI', dex, method_ids_off + i*8) for i in range(method_ids_size)]]

for i in range(class_defs_size):
    c_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = types[c_idx]
    if cname in ('Lo7/g0;', 'Lo7/c0$b;'):
        print(f"\nClass {cname}")
        off = class_data_off
        sf_sz, off = read_uleb128(dex, off)
        if_sz, off = read_uleb128(dex, off)
        dm_sz, off = read_uleb128(dex, off)
        vm_sz, off = read_uleb128(dex, off)
        for _ in range(sf_sz + if_sz):
            _, off = read_uleb128(dex, off)
            _, off = read_uleb128(dex, off)
        for sz in (dm_sz, vm_sz):
            m_idx = 0
            for _ in range(sz):
                d, off = read_uleb128(dex, off)
                m_idx += d
                acc, off = read_uleb128(dex, off)
                code_off, off = read_uleb128(dex, off)
                print(f"  Method {methods[m_idx]} @ 0x{code_off:x}")
                if code_off:
                    insns_size = struct.unpack_from('<I', dex, code_off + 12)[0]
                    words = [struct.unpack_from('<H', dex, code_off + 16 + 2*k)[0] for k in range(insns_size)]
                    pc = 0
                    while pc < len(words):
                        w = words[pc]
                        op = w & 0xff
                        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and pc + 2 < len(words):
                            mid = words[pc+1]
                            print(f"    0x{pc:04x}: invoke-{op:02x} {methods[mid]} args=0x{words[pc+2]:04x}")
                            pc += 3
                        elif op in (0x12, 0x13) and pc < len(words):
                            print(f"    0x{pc:04x}: const op=0x{w:04x} next=0x{words[pc+1] if pc+1<len(words) else 0:04x}")
                            pc += 2 if op == 0x13 else 1
                        else:
                            pc += 1
