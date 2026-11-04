import zipfile, struct
with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk", 'r') as z:
    dex = z.read('classes.dex')
for name, off in [("Lh9/o$b;->d", 0x371614), ("Lh9/o;->o", 0x373e88)]:
    regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', dex, off)
    print(f"{name} @ 0x{off:x}: regs={regs}, ins={ins}, outs={outs}, tries={tries}, sz={sz}")
    print(" ", [f"0x{struct.unpack_from('<H', dex, off+16+2*i)[0]:04x}" for i in range(sz)])
