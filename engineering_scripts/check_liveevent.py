import zipfile, struct

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 0x38)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 0x48)
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 0x50)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 0x58)

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

insns_start = 0x3fa300 + 16
words = [struct.unpack_from('<H', dex, insns_start + 2*i)[0] for i in range(0x00c0)]
pc = 0x0075
while pc < 0x00b5:
    w = words[pc]
    op = w & 0xff
    if op in (0x6e, 0x6f, 0x70, 0x71, 0x72, 0x74, 0x75, 0x76, 0x77, 0x78):
        mid = words[pc+1]
        print(f"0x{pc:04x}: op=0x{op:02x} {methods[mid]} args=0x{words[pc+2]:04x}")
        pc += 3
    elif 0x52 <= op <= 0x6d:
        fid = words[pc+1]
        print(f"0x{pc:04x}: op=0x{op:02x} {fields[fid]}")
        pc += 2
    elif op in (0x1f, 0x22):
        tid = words[pc+1]
        print(f"0x{pc:04x}: op=0x{op:02x} {types[tid]}")
        pc += 2
    else:
        print(f"0x{pc:04x}: raw=0x{w:04x}")
        pc += 1
