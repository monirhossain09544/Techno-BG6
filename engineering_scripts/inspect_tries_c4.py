import zipfile, struct

apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk"
z = zipfile.ZipFile(apk, 'r')

data = z.read('classes4.dex')

def read_uleb128(d, p):
    res, sh = 0, 0
    while True:
        b = d[p]; p += 1
        res |= (b & 0x7f) << sh
        if not (b & 0x80): break
        sh += 7
    return res, p

def read_sleb128(d, p):
    res, sh = 0, 0
    while True:
        b = d[p]; p += 1
        res |= (b & 0x7f) << sh
        sh += 7
        if not (b & 0x80):
            if b & 0x40: res -= (1 << sh)
            break
    return res, p

for name, co in [("Lj/a/b;->run", 0x168770), ("Lj/a/k;->f", 0x169c9c), ("Lj/a/k;->d", 0x169de0), ("Lj/a/k;->e", 0x169f18)]:
    regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', data, co)
    print(f"=== {name} at 0x{co:x}: tries={tries}, insns_size={insns_size} ===")
    pos = co + 16 + insns_size * 2
    if insns_size % 2 == 1:
        pos += 2
    handlers_base = pos + tries * 8
    for i in range(tries):
        start_addr, insn_cnt, h_off = struct.unpack_from('<IHH', data, pos + i * 8)
        print(f"  try[{i}]: start_word={start_addr}..{start_addr+insn_cnt} (end={start_addr+insn_cnt}), h_off={h_off}")
        hp = handlers_base + h_off
        sz, hp = read_sleb128(data, hp)
        for _ in range(abs(sz)):
            t_idx, hp = read_uleb128(data, hp)
            addr, hp = read_uleb128(data, hp)
            print(f"    catch type={t_idx} -> handler_word={addr}")
        if sz <= 0:
            addr, hp = read_uleb128(data, hp)
            print(f"    catch_all -> handler_word={addr}")
