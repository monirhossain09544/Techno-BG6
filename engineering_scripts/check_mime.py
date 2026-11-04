import zipfile, struct

osfm_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
with zipfile.ZipFile(osfm_apk, 'r') as z:
    odex = z.read('classes.dex')

def read_uleb128(data, off):
    result = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        result |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, off

string_ids_size, string_ids_off = struct.unpack_from('<II', odex, 56)
type_ids_size, type_ids_off = struct.unpack_from('<II', odex, 64)
method_ids_size, method_ids_off = struct.unpack_from('<II', odex, 88)

ostrings = []
for i in range(string_ids_size):
    soff = struct.unpack_from('<I', odex, string_ids_off + i*4)[0]
    _, doff = read_uleb128(odex, soff)
    end = odex.find(b'\x00', doff)
    ostrings.append(odex[doff:end].decode('utf-8', errors='replace'))
otypes = [ostrings[struct.unpack_from('<I', odex, type_ids_off + i*4)[0]] for i in range(type_ids_size)]

def dump_code(name, code_off, limit=80):
    regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', odex, code_off)
    print(f"\n=== {name} @ 0x{code_off:x} (sz={sz}) ===")
    words = struct.unpack_from(f'<{min(sz, limit)}H', odex, code_off + 16)
    for i, w in enumerate(words):
        op = w & 0xff
        extra = ""
        if op == 0x1a and i + 1 < len(words) and words[i+1] < len(ostrings):
            extra = f"const-string {ostrings[words[i+1]]!r}"
        elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and i + 2 < len(words) and words[i+1] < method_ids_size:
            cid, pid, nid = struct.unpack_from('<HHI', odex, method_ids_off + words[i+1]*8)
            extra = f"invoke {otypes[cid]}->{ostrings[nid]}"
        if extra:
            print(f"  0x{i:04x}: {extra}")

dump_code("Le2/d;-><clinit>", 0x341264, 150)
dump_code("Lg2/c;-><clinit>", 0x35aefc, 150)
