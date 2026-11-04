import zipfile
import struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\DocumentsUIGo.apk'

def parse_axml_strings(data):
    # AXML string pool starts at offset 8
    chunk_type, header_size, chunk_size, str_count, style_count, flags, str_start, style_start = struct.unpack_from('<HHIIIIII', data, 8)
    is_utf8 = (flags & (1 << 8)) != 0
    offsets = [struct.unpack_from('<I', data, 8 + 28 + i * 4)[0] for i in range(str_count)]
    strings = []
    pool_base = 8 + str_start
    for off in offsets:
        pos = pool_base + off
        if is_utf8:
            # skip char len
            if data[pos] & 0x80:
                pos += 2
            else:
                pos += 1
            b_len = data[pos]
            if b_len & 0x80:
                b_len = ((b_len & 0x7f) << 8) | data[pos + 1]
                pos += 2
            else:
                pos += 1
            strings.append(data[pos:pos+b_len].decode('utf-8', errors='replace'))
        else:
            c_len = struct.unpack_from('<H', data, pos)[0]
            pos += 2
            strings.append(data[pos:pos+c_len*2].decode('utf-16le', errors='replace'))
    return strings

with zipfile.ZipFile(apk_path, 'r') as z:
    axml = z.read('AndroidManifest.xml')
    strs = parse_axml_strings(axml)
    for i, s in enumerate(strs):
        if any(k in s.lower() for k in ['zip', 'archive', 'view', 'filesactivity', 'viewactivity', 'brows', 'mime', 'application/']):
            print(f"Manifest STR #{i}: {s!r}")
