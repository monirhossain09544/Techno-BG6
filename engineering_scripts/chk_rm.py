import zipfile, struct
data = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings_locale.apk').read('classes4.dex')
s_sz, s_off = struct.unpack_from('<II', data, 56)
p_sz, p_off = struct.unpack_from('<II', data, 72)
m_sz, m_off = struct.unpack_from('<II', data, 88)
for idx in (0x37bb, 0x37bc, 0x3827, 0x3828):
    c, p, n = struct.unpack_from('<HHI', data, m_off + idx * 8)
    sh = struct.unpack_from('<I', data, p_off + p * 12)[0]
    off = struct.unpack_from('<I', data, s_off + sh * 4)[0]
    print(f"0x{idx:04x}: shorty={data[off+1:data.find(0,off+1)].decode()}")
