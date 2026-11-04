import zipfile, struct, sys
sys.path.append(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch')
import inspect_smartpanel as s

sys.stdout.reconfigure(encoding='utf-8')
z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')

def dump_axml(xml_path):
    print(f"\n================ {xml_path} ================")
    data = z.read(xml_path)
    sp_type, sp_hdr_size, sp_size, str_cnt, style_cnt, flags, str_off, style_off = struct.unpack_from('<HHIIIIII', data, 8)
    strings = []
    for i in range(str_cnt):
        off = 8 + str_off + struct.unpack_from('<I', data, 36 + i * 4)[0]
        u16_len = data[off]; off += 1
        if u16_len & 0x80: off += 1
        u8_len = data[off]; off += 1
        if u8_len & 0x80: u8_len = ((u8_len & 0x7f) << 8) | data[off]; off += 1
        strings.append(data[off:off+u8_len].decode('utf-8', 'replace'))
    pos = 8 + sp_size
    ctype, chdr, csize = struct.unpack_from('<HHI', data, pos)
    if ctype == 0x0180:
        pos += csize
    indent = 0
    while pos < len(data):
        ctype, chdr, csize = struct.unpack_from('<HHI', data, pos)
        if ctype == 0x0102:
            ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', data, pos + 16)
            tname = strings[name] if name < len(strings) else f"#{name}"
            attrs = []
            apos = pos + 16 + attr_start
            for _ in range(attr_cnt):
                ans, aname, araw, asz, r0, atype, adata = struct.unpack_from('<IIIHBBI', data, apos)
                k = strings[aname] if aname < len(strings) else f"#{aname}"
                if atype == 3 and araw < len(strings):
                    v = f'"{strings[araw]}"'
                elif atype == 1:
                    v = f'@0x{adata:08x}'
                elif atype == 18:
                    v = 'true' if adata else 'false'
                else:
                    v = f'{adata} (type={atype})'
                attrs.append(f'{k}={v}')
                apos += attr_size
            print("  " * indent + f"<{tname} " + " ".join(attrs) + ">")
            indent += 1
        elif ctype == 0x0103:
            indent -= 1
            ns, name = struct.unpack_from('<II', data, pos + 16)
            tname = strings[name] if name < len(strings) else f"#{name}"
            print("  " * indent + f"</{tname}>")
        pos += csize

for x in ['res/xml/app_default_settings.xml', 'res/xml/apps.xml', 'res/xml/app_management.xml', 'res/xml/app_info_settings.xml', 'res/xml/tran_app_info_settings.xml', 'res/xml/special_access.xml']:
    if x in z.namelist():
        dump_axml(x)
