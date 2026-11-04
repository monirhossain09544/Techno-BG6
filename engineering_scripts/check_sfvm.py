import zipfile, struct, check_h0q

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

for i in range(struct.unpack_from('<I', dex, 0x60)[0]):
    c_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', dex, struct.unpack_from('<I', dex, 0x64)[0] + i*32)
    cname = check_h0q.types[c_idx]
    if 'StorageFileViewModel' in cname or cname == 'Lf9/l;':
        print("CLASS:", cname)
        if class_data_off == 0: continue
        off = class_data_off
        sf_sz, off = check_h0q.read_uleb128(dex, off)
        if_sz, off = check_h0q.read_uleb128(dex, off)
        dm_sz, off = check_h0q.read_uleb128(dex, off)
        vm_sz, off = check_h0q.read_uleb128(dex, off)
        for _ in range(sf_sz + if_sz):
            _, off = check_h0q.read_uleb128(dex, off)
            _, off = check_h0q.read_uleb128(dex, off)
        for sz in (dm_sz, vm_sz):
            m_idx = 0
            for _ in range(sz):
                d, off = check_h0q.read_uleb128(dex, off)
                m_idx += d
                acc, off = check_h0q.read_uleb128(dex, off)
                code_off, off = check_h0q.read_uleb128(dex, off)
                print(f"  Method 0x{m_idx:04x} {check_h0q.methods[m_idx]} @ 0x{code_off:x} (sz={struct.unpack_from('<I', dex, code_off + 12)[0] if code_off else 0})")
