import zipfile, struct, sys
sys.stdout.reconfigure(encoding='utf-8')

apk = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk'

def uleb128(data, pos):
    res, shift = 0, 0
    while True:
        b = data[pos]; pos += 1
        res |= (b & 0x7f) << shift
        if not (b & 0x80): return res, pos
        shift += 7

with zipfile.ZipFile(apk, 'r') as z:
    for n in z.namelist():
        if n.endswith('.so') or n.endswith('.dex') or 'zip' in n.lower() or 'compress' in n.lower():
            print("ENTRY:", n, z.getinfo(n).file_size)

    for name in sorted(z.namelist()):
        if not (name.startswith('classes') and name.endswith('.dex')): continue
        d = z.read(name)
        s_cnt, s_off = struct.unpack_from('<II', d, 56)
        t_cnt, t_off = struct.unpack_from('<II', d, 64)
        m_cnt, m_off = struct.unpack_from('<II', d, 88)
        c_cnt, c_off = struct.unpack_from('<II', d, 96)
        strs = []
        for i in range(s_cnt):
            off = struct.unpack_from('<I', d, s_off + i*4)[0]
            _, p = uleb128(d, off)
            strs.append(d[p:d.find(b'\x00', p)].decode('utf-8', 'replace'))
        types = [strs[struct.unpack_from('<I', d, t_off + i*4)[0]] for i in range(t_cnt)]
        for s in strs:
            sl = s.lower()
            if any(k in sl for k in ('ro.', 'persist.', 'compress', 'decompress', 'uncompress', 'extract', 'zip', 'archive', 'rar', '7z')) and len(s) < 120:
                if 'androidx' not in sl and 'kotlin' not in sl and 'google' not in sl and 'glide' not in sl and 'okhttp' not in sl:
                    print(f"[{name} STR] {s}")
        for t in types:
            tl = t.lower()
            if any(k in tl for k in ('zip', 'compress', 'archive', 'extract', 'rar', 'open', 'mime')):
                if 'transsion' in tl or 'filemanager' in tl:
                    print(f"[{name} TYPE] {t}")
