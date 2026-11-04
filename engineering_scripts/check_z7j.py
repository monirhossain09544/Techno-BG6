import zipfile, struct

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

import check_h0q
for i in range( struct.unpack_from('<I', dex, 0x60)[0] ):
    c_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', dex, struct.unpack_from('<I', dex, 0x64)[0] + i*32)
    if check_h0q.types[c_idx] == 'Lz7/j;':
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
                if check_h0q.methods[m_idx][1] == 'n':
                    print(f"Method 0x{m_idx:04x} {check_h0q.methods[m_idx]} @ 0x{code_off:x}")
                    insns_size = struct.unpack_from('<I', dex, code_off + 12)[0]
                    words = [struct.unpack_from('<H', dex, code_off + 16 + 2*k)[0] for k in range(insns_size)]
                    print("  sz:", insns_size, [f"0x{w:04x}" for w in words])
