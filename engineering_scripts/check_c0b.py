import zipfile, struct, check_h0q

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')

def dump_code(name, code_off):
    regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', dex, code_off)
    print(f"=== {name} @ 0x{code_off:x} (regs={regs}, ins={ins}, outs={outs}, sz={sz}) ===")
    words = [struct.unpack_from('<H', dex, code_off + 16 + 2*k)[0] for k in range(sz)]
    for k, w in enumerate(words):
        extra = ""
        op = w & 0xff
        if op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and k + 1 < sz:
            mid = words[k+1]
            if mid < len(check_h0q.methods):
                extra = f" -> method 0x{mid:04x} {check_h0q.methods[mid]}"
        elif op in (0x52, 0x53, 0x54, 0x55, 0x59, 0x5b, 0x60, 0x62, 0x67, 0x69) and k + 1 < sz:
            fid = words[k+1]
            if fid < len(check_h0q.fields):
                extra = f" -> field 0x{fid:04x} {check_h0q.fields[fid]}"
        print(f"  0x{k:04x}: 0x{w:04x}{extra}")

dump_code("Lo7/c0$b$a;->s", 0x3fa038)
dump_code("Lo7/c0$b;->C", 0x3fa5b0)
