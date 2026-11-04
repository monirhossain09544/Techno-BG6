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

# Find all methods containing 0x07c8 ('.txt'), 0x8fb3 ('text/plain'), or 0x9431 (Li9/h$i;-><init>)
targets = {0x07c8, 0x8fb3, 0x9431}
for cidx in range(class_defs_size):
    cid, acc, scid, ioff, sfn, aoff, cdoff, svo = struct.unpack_from('<IIIIIIII', odex, class_defs_off + cidx*32)
    if cdoff == 0:
        continue
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
                matched = targets.intersection(words)
                if matched:
                    mcid, mpid, mnid = struct.unpack_from('<HHI', odex, method_ids_off + mid*8)
                    print(f"Match {[hex(x) for x in matched]} in {cname}->{ostrings[mnid]} (mid=0x{mid:04x}, code_off=0x{mcode:x}, sz={insns_sz})")
                    for idx, w in enumerate(words):
                        print(f"  0x{idx:04x}: 0x{w:04x}")
