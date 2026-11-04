import zipfile
import struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\DocumentsUIGo.apk'

def decode_axml(data):
    # Parse string pool
    chunk_type, header_size, chunk_size, str_count, style_count, flags, str_start, style_start = struct.unpack_from('<HHIIIIII', data, 8)
    is_utf8 = (flags & (1 << 8)) != 0
    offsets = [struct.unpack_from('<I', data, 8 + 28 + i * 4)[0] for i in range(str_count)]
    strings = []
    pool_base = 8 + str_start
    for off in offsets:
        pos = pool_base + off
        if is_utf8:
            if data[pos] & 0x80: pos += 2
            else: pos += 1
            b_len = data[pos]
            if b_len & 0x80:
                b_len = ((b_len & 0x7f) << 8) | data[pos + 1]
                pos += 2
            else: pos += 1
            strings.append(data[pos:pos+b_len].decode('utf-8', errors='replace'))
        else:
            c_len = struct.unpack_from('<H', data, pos)[0]
            pos += 2
            strings.append(data[pos:pos+c_len*2].decode('utf-16le', errors='replace'))

    def get_s(idx):
        return strings[idx] if 0 <= idx < len(strings) else f"#{idx}"

    pos = 8 + chunk_size
    indent = 0
    while pos < len(data):
        ctype, hsize, csize = struct.unpack_from('<HHI', data, pos)
        if ctype == 0x0102: # START_ELEMENT
            ns, name, attr_start, attr_size, attr_count = struct.unpack_from('<IIHHH', data, pos + 16)
            attrs = []
            apos = pos + 16 + attr_start
            for _ in range(attr_count):
                ans, aname, raw_val, tsize, r0, dtype, dval = struct.unpack_from('<IIIHBBI', data, apos)
                if raw_val != 0xFFFFFFFF:
                    val_str = get_s(raw_val)
                elif dtype == 3:
                    val_str = get_s(dval)
                elif dtype == 18:
                    val_str = "true" if dval != 0 else "false"
                else:
                    val_str = f"0x{dval:x}"
                attrs.append(f"{get_s(aname)}={val_str!r}")
                apos += attr_size
            print("  " * indent + f"<{get_s(name)} {' '.join(attrs)}>")
            indent += 1
        elif ctype == 0x0103: # END_ELEMENT
            indent -= 1
            ns, name = struct.unpack_from('<II', data, pos + 16)
            print("  " * indent + f"</{get_s(name)}>")
        pos += csize

with zipfile.ZipFile(apk_path, 'r') as z:
    decode_axml(z.read('AndroidManifest.xml'))
