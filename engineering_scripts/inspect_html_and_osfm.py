import zipfile, struct

# Part A: Inspect HTMLViewer.apk classes.dex
html_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\HTMLViewer.apk"
with zipfile.ZipFile(html_apk, 'r') as z:
    hdex = z.read('classes.dex')

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

def parse_dex(dex):
    string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 56)
    type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 64)
    proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 72)
    field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 80)
    method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 88)
    class_defs_size, class_defs_off = struct.unpack_from('<II', dex, 96)
    strings = []
    for i in range(string_ids_size):
        soff = struct.unpack_from('<I', dex, string_ids_off + i*4)[0]
        _, doff = read_uleb128(dex, soff)
        end = dex.find(b'\x00', doff)
        strings.append(dex[doff:end].decode('utf-8', errors='replace'))
    types = [strings[struct.unpack_from('<I', dex, type_ids_off + i*4)[0]] for i in range(type_ids_size)]
    return strings, types, proto_ids_off, field_ids_off, method_ids_off, method_ids_size, class_defs_off, class_defs_size

hstrings, htypes, _, _, hmoff, hmsize, hcoff, hcsize = parse_dex(hdex)
print("=== HTMLViewer strings ===")
for i, s in enumerate(hstrings):
    print(f"  [0x{i:02x}] {s!r}")

print("\n=== HTMLViewer methods ===")
for mid in range(hmsize):
    cid, pid, nid = struct.unpack_from('<HHI', hdex, hmoff + mid*8)
    print(f"  Method[0x{mid:02x}] {htypes[cid]}->{hstrings[nid]}")

# Part B: Inspect OSFileManager.apk references to 0x07c8 ('.txt') and 0x8fb3 ('text/plain')
osfm_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
with zipfile.ZipFile(osfm_apk, 'r') as z:
    odex = z.read('classes.dex')

ostrings, otypes, opoff, ofoff, omoff, omsize, ocoff, ocsize = parse_dex(odex)

print("\n=== OSFileManager classes in Li9/h and Li9/f0 ===")
for cidx in range(ocsize):
    cid, acc, scid, ioff, sfn, aoff, cdoff, svo = struct.unpack_from('<IIIIIIII', odex, ocoff + cidx*32)
    cname = otypes[cid]
    if cname in ('Li9/h;', 'Li9/f0;') or cname.startswith('Li9/h$'):
        print(f"Class {cname} (class_data_off=0x{cdoff:x})")
        if cdoff != 0:
            sf_sz, off = read_uleb128(odex, cdoff)
            if_sz, off = read_uleb128(odex, off)
            dm_sz, off = read_uleb128(odex, off)
            vm_sz, off = read_uleb128(odex, off)
            for _ in range(sf_sz):
                _, off = read_uleb128(odex, off)
                _, off = read_uleb128(odex, off)
            for _ in range(if_sz):
                _, off = read_uleb128(odex, off)
                _, off = read_uleb128(odex, off)
            mid = 0
            for _ in range(dm_sz):
                d, off = read_uleb128(odex, off)
                mid += d
                macc, off = read_uleb128(odex, off)
                mcode, off = read_uleb128(odex, off)
                mcid, mpid, mnid = struct.unpack_from('<HHI', odex, omoff + mid*8)
                insns_sz = struct.unpack_from('<I', odex, mcode + 12)[0] if mcode else 0
                print(f"  Direct method[0x{mid:04x}] {ostrings[mnid]} code_off=0x{mcode:x} insns_sz={insns_sz}")
            mid = 0
            for _ in range(vm_sz):
                d, off = read_uleb128(odex, off)
                mid += d
                macc, off = read_uleb128(odex, off)
                mcode, off = read_uleb128(odex, off)
                mcid, mpid, mnid = struct.unpack_from('<HHI', odex, omoff + mid*8)
                insns_sz = struct.unpack_from('<I', odex, mcode + 12)[0] if mcode else 0
                print(f"  Virtual method[0x{mid:04x}] {ostrings[mnid]} code_off=0x{mcode:x} insns_sz={insns_sz}")
