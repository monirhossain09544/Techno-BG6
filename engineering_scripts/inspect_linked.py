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

methods = []
for i in range(method_ids_size):
    c_idx, p_idx, n_idx = struct.unpack_from('<HHI', dex, method_ids_off + i*8)
    methods.append((types[c_idx], strings[n_idx], protos[p_idx]))

def disasm(code_off):
    regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', dex, code_off)
    print(f"  regs={regs}, ins={ins}, outs={outs}, tries={tries}, insns_size={insns_size}")
    insns_start = code_off + 16
    words = [struct.unpack_from('<H', dex, insns_start + 2*i)[0] for i in range(insns_size)]
    pc = 0
    while pc < len(words):
        w = words[pc]
        op = w & 0xff
        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and pc + 2 < len(words):
            mid = words[pc+1]
            c, n, p = methods[mid] if mid < len(methods) else ('?', '?', '?')
            print(f"    0x{pc:04x}: invoke-{op:02x} {c}->{n}{p}")
            pc += 3
        elif op == 0x1a and pc + 1 < len(words):
            sid = words[pc+1]
            print(f"    0x{pc:04x}: const-string {strings[sid]!r}")
            pc += 2
        else:
            pc += 1

for i in range(class_defs_size):
    c_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = types[c_idx]
    if 'LinkedActivity' in cname and '$' not in cname:
        print(f"\nClass {cname}")
        off = class_data_off
        sf_sz, off = read_uleb128(dex, off)
        if_sz, off = read_uleb128(dex, off)
        dm_sz, off = read_uleb128(dex, off)
        vm_sz, off = read_uleb128(dex, off)
        for _ in range(sf_sz + if_sz):
            _, off = read_uleb128(dex, off)
            _, off = read_uleb128(dex, off)
        m_idx = 0
        for _ in range(dm_sz):
            d, off = read_uleb128(dex, off)
            m_idx += d
            acc, off = read_uleb128(dex, off)
            code_off, off = read_uleb128(dex, off)
            print(f"  Direct {methods[m_idx]} @ 0x{code_off:x}")
            if code_off: disasm(code_off)
        m_idx = 0
        for _ in range(vm_sz):
            d, off = read_uleb128(dex, off)
            m_idx += d
            acc, off = read_uleb128(dex, off)
            code_off, off = read_uleb128(dex, off)
            print(f"  Virtual {methods[m_idx]} @ 0x{code_off:x}")
            if code_off: disasm(code_off)
