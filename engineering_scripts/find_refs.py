import re, struct, sys
sys.stdout.reconfigure(encoding='utf-8')
b = open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\notification-baseline\settings.call-volume.vdex', 'rb').read()
u32 = lambda d, p: struct.unpack_from('<I', d, p)[0]
def uleb(d, p):
    r = s = 0
    while True:
        v = d[p]; p += 1; r |= (v & 127) << s
        if not v & 128: return r, p
        s += 7
def st(d, i):
    p = u32(d, u32(d, 60) + 4 * i); _, p = uleb(d, p)
    return d[p:d.index(0, p)].decode('utf-8', 'replace')
def ty(d, i): return st(d, u32(d, u32(d, 68) + 4 * i))
def meth(d, i):
    c, pr, n = struct.unpack_from('<HHI', d, u32(d, 92) + 8 * i); return ty(d, c) + '->' + st(d, n)
def field(d, i):
    c, t, n = struct.unpack_from('<HHI', d, u32(d, 84) + 8 * i); return ty(d, c) + '->' + st(d, n)
targets = sys.argv[1:]
for dn, m in enumerate(re.finditer(rb'dex\n0[0-9]{2}\x00', b), 1):
    s = m.start(); d = b[s:s + u32(b, s + 32)]
    nt = u32(d, 64); tidx = {ty(d, i): i for i in range(nt)}
    nm = u32(d, 88); nf = u32(d, 80)
    want_t = {tidx[t] for t in targets if t in tidx}
    want_m = {i for i in range(nm) if any(meth(d, i).startswith(t) for t in targets)} if want_t else set()
    want_f = {i for i in range(nf) if any(field(d, i).startswith(t) for t in targets)}
    if not (want_t or want_f): continue
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
                    op = w[k] & 0xff
                    if (op == 0x22 and w[k+1] in want_t) or (op in range(0x6e, 0x73) and w[k+1] in want_m) or (op in range(0x60, 0x6e) and w[k+1] in want_f):
                        print('DEX%d' % dn, meth(d, mi), 'code=%#x' % code, '@%d' % k, 'op=%#x' % op)
