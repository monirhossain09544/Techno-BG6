import zipfile, struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')

for x in ['res/xml/app_management.xml', 'res/xml/language_and_input.xml', 'res/xml/tran_app_info_settings.xml']:
    data = z.read(x)
    sp_type, sp_hdr_size, sp_size, str_cnt, style_cnt, flags, str_off, style_off = struct.unpack_from('<HHIIIIII', data, 8)
    strings = []
    for i in range(str_cnt):
        off = 8 + str_off + struct.unpack_from('<I', data, 36 + i * 4)[0]
        u16_len = data[off]; off += 1
        if u16_len & 0x80: off += 1
        u8_len = data[off]; off += 1
        if u8_len & 0x80: u8_len = ((u8_len & 0x7f) << 8) | data[off]; off += 1
        strings.append(data[off:off+u8_len].decode('utf-8', 'ignore'))
    pos = 8 + sp_size
    ctype, chdr, csize = struct.unpack_from('<HHI', data, pos)
    res_ids = [struct.unpack_from('<I', data, pos + 8 + i*4)[0] for i in range((csize - 8)//4)]
    print(f"\n=== {x} ===")
    for i, s in enumerate(strings):
        rid = f" (res=0x{res_ids[i]:08x})" if i < len(res_ids) else ""
        print(f"  [{i}]{rid}: {s!r}")
