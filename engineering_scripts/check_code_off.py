import zipfile, struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')
d1 = z.read('classes.dex')

# Check bytes around 0x5124c8
co = 0x5124c8
regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', d1, co)
print(f"At 0x5124c8: regs={regs}, ins={ins}, outs={outs}, tries={tries}, dbg={hex(dbg)}, sz={sz}")
end_co = co + 16 + sz * 2
print(f"End of 0x5124c8 is {hex(end_co)}")
next_co = (end_co + 3) & ~3
r2, i2, o2, t2, d2, sz2 = struct.unpack_from('<HHHHII', d1, next_co)
print(f"Next code_item at {hex(next_co)}: regs={r2}, ins={i2}, outs={o2}, tries={t2}, dbg={hex(d2)}, sz={sz2}")

# Also find where 0x5124c8 is encoded in class_data_item of AppInfoPreferenceControllerBase
from inspect_dex_methods import load_dex
d1, s1, t1, m1, f1, dump1 = load_dex('classes.dex')
cls_cnt, cls_off = struct.unpack_from('<II', d1, 96)
def read_uleb(pos):
    res = 0; shift = 0
    while True:
        b = d1[pos]; pos += 1
        res |= (b & 0x7f) << shift
        if not (b & 0x80): break
        shift += 7
    return res, pos

for i in range(cls_cnt):
    c_idx, _, _, _, _, _, c_data_off, _ = struct.unpack_from('<IIIIIIII', d1, cls_off + i * 32)
    if t1(c_idx) == 'Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;':
        pos = c_data_off
        sf, pos = read_uleb(pos); if_cnt, pos = read_uleb(pos); dm, pos = read_uleb(pos); vm, pos = read_uleb(pos)
        for _ in range(sf + if_cnt): _, pos = read_uleb(pos); _, pos = read_uleb(pos)
        for kind, cnt in [('direct', dm), ('virtual', vm)]:
            m_idx = 0
            for _ in range(cnt):
                diff, pos = read_uleb(pos); m_idx += diff
                acc, pos = read_uleb(pos)
                co_start = pos
                m_co, pos = read_uleb(pos)
                if m_co == 0x5124c8:
                    print(f"Found setParentFragment code_off at {hex(co_start)}..{hex(pos)}: bytes={d1[co_start:pos].hex()}")
