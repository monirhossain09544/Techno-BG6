import zipfile, struct, check_h0q

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

for i in range(struct.unpack_from('<I', dex, 0x60)[0]):
    c_idx, access, super_idx, interfaces_off, src_idx, ann_off, class_data_off, static_off = struct.unpack_from('<IIIIIIII', dex, struct.unpack_from('<I', dex, 0x64)[0] + i*32)
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
            if code_off:
                insns_size = struct.unpack_from('<I', dex, code_off + 12)[0]
                words = [struct.unpack_from('<H', dex, code_off + 16 + 2*k)[0] for k in range(insns_size)]
                for k in range(len(words)-1):
                    if (words[k] & 0xff) in (0x6e, 0x6f, 0x70, 0x71, 0x72) and words[k+1] in (0x87d3, 0x87da):
                        print(f"Caller of {check_h0q.methods[words[k+1]]}: {check_h0q.methods[m_idx]} @ 0x{code_off:x} + 0x{k:04x}")
                        for j in range(max(0, k-4), min(len(words), k+12)):
                            w = words[j]
                            ex = ""
                            if (w & 0xff) in (0x6e, 0x6f, 0x70, 0x71, 0x72) and j+1 < len(words) and words[j+1] < len(check_h0q.methods):
                                ex = f" -> {check_h0q.methods[words[j+1]]}"
                            print(f"  0x{j:04x}: 0x{w:04x}{ex}")
