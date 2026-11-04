import zipfile, struct, sys
sys.stdout.reconfigure(encoding='utf-8')
z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')

def dump_axml(data):
    magic, size = struct.unpack_from('<II', data, 0)
    sp_type, sp_hdr_size, sp_size, str_cnt, style_cnt, flags, str_off, style_off = struct.unpack_from('<HHIIIIII', data, 8)
    is_utf8 = (flags & (1 << 8)) != 0
    strings = []
    for i in range(str_cnt):
        off = 8 + str_off + struct.unpack_from('<I', data, 36 + i * 4)[0]
        if is_utf8:
            u16_len = data[off]; off += 1
            if u16_len & 0x80: off += 1
            u8_len = data[off]; off += 1
            if u8_len & 0x80: u8_len = ((u8_len & 0x7f) << 8) | data[off]; off += 1
            strings.append(data[off:off+u8_len].decode('utf-8', 'ignore'))
        else:
            u16_len = struct.unpack_from('<H', data, off)[0]; off += 2
            if u16_len & 0x8000: u16_len = ((u16_len & 0x7fff) << 16) | struct.unpack_from('<H', data, off)[0]; off += 2
            strings.append(data[off:off+u16_len*2].decode('utf-16le', 'ignore'))
    pos = 8 + sp_size
    indent = 0
    while pos < len(data):
        ctype, chdr, csize = struct.unpack_from('<HHI', data, pos)
        if ctype == 0x0102:
            ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', data, pos + 16)
            tname = strings[name] if name < len(strings) else str(name)
            attrs = []
            apos = pos + 16 + attr_start
            for _ in range(attr_cnt):
                ans, aname, aval_str, aval_size, _, aval_type, aval_data = struct.unpack_from('<IIIHBBI', data, apos)
                k = strings[aname] if aname < len(strings) else str(aname)
                if aval_type == 3 and aval_str < len(strings): v = strings[aval_str]
                elif aval_type == 1: v = f'@0x{aval_data:08x}'
                elif aval_type == 18: v = str(bool(aval_data))
                else: v = f'{aval_data} (t={aval_type})'
                attrs.append(f'{k}="{v}"')
                apos += attr_size
            print('  '*indent + f'<{tname} ' + ' '.join(attrs) + '>')
            indent += 1
        elif ctype == 0x0103:
            indent -= 1
            ns, name = struct.unpack_from('<II', data, pos + 16)
            tname = strings[name] if name < len(strings) else str(name)
            print('  '*indent + f'</{tname}>')
        pos += csize

for x in ['res/xml/app_management.xml', 'res/xml/apps.xml', 'res/xml/language_and_input.xml', 'res/xml/app_info_settings.xml', 'res/xml/tran_app_info_settings.xml']:
    print(f'================ {x} ================')
    dump_axml(z.read(x))
