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

regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', odex, 0x35aefc)
words = struct.unpack_from(f'<{sz}H', odex, 0x35aefc + 16)
i = 0
while i < sz:
    w = words[i]
    op = w & 0xff
    if op == 0x1a and i + 1 < sz:
        print(f"  0x{i:04x}: const-string {ostrings[words[i+1]]!r}")
        i += 2
        continue
    i += 1
