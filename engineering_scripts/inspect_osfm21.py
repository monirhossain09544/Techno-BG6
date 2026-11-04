import zipfile
import struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk'

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
    data = z.read('classes.dex')
    string_ids_size = struct.unpack_from('<I', data, 0x38)[0]
    string_ids_off = struct.unpack_from('<I', data, 0x3C)[0]
    type_ids_size = struct.unpack_from('<I', data, 0x40)[0]
    type_ids_off = struct.unpack_from('<I', data, 0x44)[0]
    proto_ids_size = struct.unpack_from('<I', data, 0x48)[0]
    proto_ids_off = struct.unpack_from('<I', data, 0x4C)[0]
    field_ids_size = struct.unpack_from('<I', data, 0x50)[0]
    field_ids_off = struct.unpack_from('<I', data, 0x54)[0]
    method_ids_size = struct.unpack_from('<I', data, 0x58)[0]
    method_ids_off = struct.unpack_from('<I', data, 0x5C)[0]

    strings = []
    for i in range(string_ids_size):
        off = struct.unpack_from('<I', data, string_ids_off + i * 4)[0]
        _, pos = read_uleb128(data, off)
        end = data.find(b'\x00', pos)
        strings.append(data[pos:end].decode('utf-8', errors='replace'))

    types = [strings[struct.unpack_from('<I', data, type_ids_off + i * 4)[0]] for i in range(type_ids_size)]
    protos = []
    for i in range(proto_ids_size):
        shorty_idx, ret_idx, param_off = struct.unpack_from('<III', data, proto_ids_off + i * 12)
        params = []
        if param_off != 0:
            pcount = struct.unpack_from('<I', data, param_off)[0]
            params = [types[struct.unpack_from('<H', data, param_off + 4 + j * 2)[0]] for j in range(pcount)]
        protos.append((types[ret_idx], params))

    fields = [(types[struct.unpack_from('<H', data, field_ids_off + i * 8)[0]], strings[struct.unpack_from('<I', data, field_ids_off + i * 8 + 4)[0]], types[struct.unpack_from('<H', data, field_ids_off + i * 8 + 2)[0]]) for i in range(field_ids_size)]
    methods = []
    for i in range(method_ids_size):
        c_idx, p_idx, n_idx = struct.unpack_from('<HHI', data, method_ids_off + i * 8)
        methods.append((types[c_idx], strings[n_idx], protos[p_idx]))

    for code_off, name in [(0x383c98, 'Li9/h;->q'), (0x3822e4, 'Li9/h$i$a;->s'), (0x3823dc, 'Li9/h$i;->s')]:
        regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', data, code_off)
        print(f"=== {name} (code=0x{code_off:x}, regs={regs}, ins={ins}, outs={outs}, tries={tries}, insns_size={insns_size}) ===")
        if tries > 0:
            tries_off = code_off + 16 + insns_size * 2
            if insns_size % 2 == 1:
                tries_off += 2
            for t in range(tries):
                start_addr, insn_count, handler_off = struct.unpack_from('<IHH', data, tries_off + t * 8)
                print(f"  TRY #{t}: start=0x{start_addr:04x}, count=0x{insn_count:04x} (end=0x{start_addr+insn_count:04x}), handler_off=0x{handler_off:x}")

    # Also find method IDs we might want to call
    for idx, (c, n, p) in enumerate(methods):
        if c in ('Lo7/c0;', 'Lo7/o0;', 'Landroidx/lifecycle/c0;', 'Lg7/e;', 'Le2/c;', 'Lfb/l;'):
            print(f"Method #{idx} (0x{idx:04x}): {c}->{n}({', '.join(p[1])}){p[0]}")
    for idx, t in enumerate(types):
        if t in ('Lo7/c0;', 'Lo7/o0;', 'Landroidx/lifecycle/c0;', 'Ljava/lang/String;'):
            print(f"Type #{idx} (0x{idx:04x}): {t}")
    for idx, f in enumerate(fields):
        if f[0] in ('Le2/c;', 'Li9/h$i;', 'Li9/h$i$a;'):
            print(f"Field #{idx} (0x{idx:04x}): {f[0]}->{f[1]}:{f[2]}")
