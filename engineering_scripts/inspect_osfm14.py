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

fields = []
for i in range(field_ids_size):
    c_idx, t_idx, n_idx = struct.unpack_from('<HHI', dex, field_ids_off + i*8)
    fields.append((types[c_idx], strings[n_idx], types[t_idx]))

methods = []
for i in range(method_ids_size):
    c_idx, p_idx, n_idx = struct.unpack_from('<HHI', dex, method_ids_off + i*8)
    methods.append((types[c_idx], strings[n_idx], protos[p_idx]))

for idx, (c, n, p) in enumerate(methods):
    if c in ('Li9/h0;', 'Le2/c;', 'Lg7/e;', 'Lo7/c0;', 'Lo7/o0;', 'Landroidx/lifecycle/c0;', 'Li9/h$i$a;', 'Li9/h$i;', 'Leb/v;', 'Ljava/lang/Integer;'):
        print(f"Method #{idx} (0x{idx:04x}): {c}->{n}{p}")

for idx, (c, n, t) in enumerate(fields):
    if c in ('Li9/h0;', 'Le2/c;', 'Li9/h$i$a;', 'Li9/h$i;', 'Leb/v;'):
        print(f"Field #{idx} (0x{idx:04x}): {c}->{n}:{t}")

def dump_raw(name, code_off):
    regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', dex, code_off)
    print(f"\n=== {name} @ 0x{code_off:x} (regs={regs}, ins={ins}, outs={outs}, tries={tries}, insns_size={insns_size}) ===")
    insns_start = code_off + 16
    words = [struct.unpack_from('<H', dex, insns_start + 2*i)[0] for i in range(insns_size)]
    for i, w in enumerate(words):
        print(f"  0x{i:04x}: 0x{w:04x}")
    if tries > 0:
        padding = (insns_size % 2) * 2
        try_off = insns_start + insns_size * 2 + padding
        for t in range(tries):
            start_addr, insn_cnt, handler_off = struct.unpack_from('<IHH', dex, try_off + t*8)
            print(f"  Try #{t}: start=0x{start_addr:04x}, count=0x{insn_cnt:04x} (end=0x{start_addr+insn_cnt:04x}), handler_off={handler_off}")

dump_raw("Li9/h$i$a;->s", 0x3822e4)
dump_raw("Li9/h$i;->s", 0x3823dc)
