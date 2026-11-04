import re, struct, sys
sys.stdout.reconfigure(encoding='utf-8')
from find_refs import b, u32, uleb, st, meth
words = set(sys.argv[1:])
for dn, m in enumerate(re.finditer(rb'dex\n0[0-9]{2}\x00', b), 1):
    s = m.start(); d = b[s:s + u32(b, s + 32)]
    ns = u32(d, 56)
    want = {i for i in range(ns) if st(d, i) in words}
    if not want: continue
    nc, co = struct.unpack_from('<II', d, 96)
    for ci in range(nc):
        row = struct.unpack_from('<8I', d, co + 32 * ci)
        if not row[6]: continue
        p = row[6]; cnt = []
        for _ in range(4): v, p = uleb(d, p); cnt.append(v)
        for _ in range(cnt[0] + cnt[1]): _, p = uleb(d, p); _, p = uleb(d, p)
        for c in cnt[2:]:
            mi = 0
            for _ in range(c):
                df, p = uleb(d, p); mi += df; _, p = uleb(d, p); code, p = uleb(d, p)
                if not code: continue
                n = u32(d, code + 12); w = struct.unpack_from('<%dH' % n, d, code + 16)
                for k in range(n - 1):
                    if (w[k] & 0xff) == 0x1a and w[k+1] in want:
                        print('DEX%d' % dn, meth(d, mi), 'code=%#x' % code, '@%d' % k, st(d, w[k+1]))
