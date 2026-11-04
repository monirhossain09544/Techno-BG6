import zipfile, struct

# 1. Dump HTMLViewerActivity methods
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

hstrings, htypes, _, hfoff, hmoff, hmsize, hcoff, hcsize = parse_dex(hdex)

def dump_code(dex, strings, types, moff, msize, name, code_off):
    regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', dex, code_off)
    print(f"\n=== {name} @ 0x{code_off:x} (regs={regs}, ins={ins}, outs={outs}, sz={sz}) ===")
    words = struct.unpack_from(f'<{sz}H', dex, code_off + 16)
    for i, w in enumerate(words):
        op = w & 0xff
        extra = ""
        if op == 0x1a and i + 1 < sz:
            sid = words[i+1]
            if sid < len(strings):
                extra = f"const-string {strings[sid]!r}"
        elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and i + 2 < sz:
            mid = words[i+1]
            if mid < msize:
                cid, pid, nid = struct.unpack_from('<HHI', dex, moff + mid*8)
                extra = f"invoke {types[cid]}->{strings[nid]}"
        print(f"  0x{i:04x}: 0x{w:04x}  {extra}")

for cidx in range(hcsize):
    cid, acc, scid, ioff, sfn, aoff, cdoff, svo = struct.unpack_from('<IIIIIIII', hdex, hcoff + cidx*32)
    if cdoff == 0: continue
    cname = htypes[cid]
    sf_sz, off = read_uleb128(hdex, cdoff)
    if_sz, off = read_uleb128(hdex, off)
    dm_sz, off = read_uleb128(hdex, off)
    vm_sz, off = read_uleb128(hdex, off)
    for _ in range(sf_sz + if_sz):
        _, off = read_uleb128(hdex, off)
        _, off = read_uleb128(hdex, off)
    for count in (dm_sz, vm_sz):
        mid = 0
        for _ in range(count):
            d, off = read_uleb128(hdex, off)
            mid += d
            macc, off = read_uleb128(hdex, off)
            mcode, off = read_uleb128(hdex, off)
            mcid, mpid, mnid = struct.unpack_from('<HHI', hdex, hmoff + mid*8)
            if mcode:
                dump_code(hdex, hstrings, htypes, hmoff, hmsize, f"{cname}->{hstrings[mnid]}", mcode)
