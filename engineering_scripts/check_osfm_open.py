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
class_defs_size, class_defs_off = struct.unpack_from('<II', odex, 96)

ostrings = []
for i in range(string_ids_size):
    soff = struct.unpack_from('<I', odex, string_ids_off + i*4)[0]
    _, doff = read_uleb128(odex, soff)
    end = odex.find(b'\x00', doff)
    ostrings.append(odex[doff:end].decode('utf-8', errors='replace'))
otypes = [ostrings[struct.unpack_from('<I', odex, type_ids_off + i*4)[0]] for i in range(type_ids_size)]

# Find all methods in Li9/h; and where they are called
h_methods = {}
for mid in range(method_ids_size):
    cid, pid, nid = struct.unpack_from('<HHI', odex, method_ids_off + mid*8)
    if otypes[cid] == 'Li9/h;':
        h_methods[mid] = ostrings[nid]
print("Li9/h; methods:", {hex(k): v for k, v in h_methods.items()})

# Also find all occurrences of "android.intent.action.VIEW" (0x58a3) across the entire dex
for cidx in range(class_defs_size):
    cid, acc, scid, ioff, sfn, aoff, cdoff, svo = struct.unpack_from('<IIIIIIII', odex, class_defs_off + cidx*32)
    if cdoff == 0: continue
    cname = otypes[cid]
    sf_sz, off = read_uleb128(odex, cdoff)
    if_sz, off = read_uleb128(odex, off)
    dm_sz, off = read_uleb128(odex, off)
    vm_sz, off = read_uleb128(odex, off)
    for _ in range(sf_sz + if_sz):
        _, off = read_uleb128(odex, off)
        _, off = read_uleb128(odex, off)
    for count in (dm_sz, vm_sz):
        mid = 0
        for _ in range(count):
            d, off = read_uleb128(odex, off)
            mid += d
            macc, off = read_uleb128(odex, off)
            mcode, off = read_uleb128(odex, off)
            if mcode:
                insns_sz = struct.unpack_from('<I', odex, mcode + 12)[0]
                words = struct.unpack_from(f'<{insns_sz}H', odex, mcode + 16)
                mcid, mpid, mnid = struct.unpack_from('<HHI', odex, method_ids_off + mid*8)
                for idx, w in enumerate(words):
                    if w == 0x58a3 and idx > 0 and (words[idx-1] & 0xff) == 0x1a:
                        print(f"ACTION_VIEW in {cname}->{ostrings[mnid]} (code_off=0x{mcode:x})")
                    if w in h_methods and idx > 0 and (words[idx-1] & 0xff) in (0x6e, 0x6f, 0x70, 0x71, 0x72):
                        print(f"Call Li9/h;->{h_methods[w]} in {cname}->{ostrings[mnid]} (code_off=0x{mcode:x})")
