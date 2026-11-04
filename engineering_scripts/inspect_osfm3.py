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
    d = z.read('classes.dex')

s_cnt, s_off = struct.unpack_from('<II', d, 56)
t_cnt, t_off = struct.unpack_from('<II', d, 64)
f_cnt, f_off = struct.unpack_from('<II', d, 80)
m_cnt, m_off = struct.unpack_from('<II', d, 88)
c_cnt, c_off = struct.unpack_from('<II', d, 96)

strs = []
for i in range(s_cnt):
    off = struct.unpack_from('<I', d, s_off + i*4)[0]
    _, p = uleb128(d, off)
    strs.append(d[p:d.find(b'\x00', p)].decode('utf-8', 'replace'))
types = [strs[struct.unpack_from('<I', d, t_off + i*4)[0]] for i in range(t_cnt)]
fields = [f"{types[struct.unpack_from('<H', d, f_off + i*8)[0]]}->{strs[struct.unpack_from('<I', d, f_off + i*8 + 4)[0]]}" for i in range(f_cnt)]
methods = [f"{types[struct.unpack_from('<H', d, m_off + i*8)[0]]}->{strs[struct.unpack_from('<I', d, m_off + i*8 + 4)[0]]}" for i in range(m_cnt)]

for i in range(c_cnt):
    c_idx, _, _, _, sfo, _, cdo, _ = struct.unpack_from('<IIIIIIII', d, c_off + i*32)
    cname = types[c_idx]
    if cdo == 0: continue
    p = cdo
    sf_sz, p = uleb128(d, p); if_sz, p = uleb128(d, p)
    dm_sz, p = uleb128(d, p); vm_sz, p = uleb128(d, p)
    for _ in range(sf_sz + if_sz): _, p = uleb128(d, p); _, p = uleb128(d, p)
    for m_sz in (dm_sz, vm_sz):
        m_idx = 0
        for _ in range(m_sz):
            diff, p = uleb128(d, p); m_idx += diff
            acc, p = uleb128(d, p); code_off, p = uleb128(d, p)
            mname = methods[m_idx]
            if code_off:
                insns_size = struct.unpack_from('<I', d, code_off + 12)[0]
                insns = struct.unpack_from(f'<{insns_size}H', d, code_off + 16)
                m_strs = []
                m_calls = []
                for idx, w in enumerate(insns):
                    op = w & 0xff
                    if op == 0x1a and idx+1 < len(insns) and insns[idx+1] < len(strs):
                        m_strs.append(strs[insns[idx+1]])
                    elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and idx+1 < len(insns) and insns[idx+1] < len(methods):
                        m_calls.append(methods[insns[idx+1]])
                if cname in ('Lb8/c;', 'Lb8/d;', 'Lo7/c0;') or any('Lb8/d;->h' in c or 'Lo7/c0;' in c or 'setUnCompressEnable' in c for c in m_calls):
                    print(f"=== {mname} (off={hex(code_off)}) ===")
                    print("  STRS:", m_strs)
                    print("  CALLS:", m_calls)
