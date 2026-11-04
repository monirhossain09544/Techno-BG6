import zipfile
import struct
import sys

sys.stdout.reconfigure(encoding='utf-8')
apk_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings_locale.apk"

with zipfile.ZipFile(apk_path, 'r') as z:
    data = z.read('classes4.dex')

for name, code_off in [("d (getUnSelectedPkgList)", 0x169de0), ("e (getSelectedPkgList)", 0x169f18), ("f (getNum)", 0x169c9c), ("a (unselect)", 0x16a0d4), ("g (select)", 0x16a128)]:
    regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', data, code_off)
    print(f"=== {name} at 0x{code_off:x}: regs={regs}, ins={ins}, outs={outs}, tries={tries}, insns_size={insns_size} ===")
    insns = data[code_off + 16 : code_off + 16 + insns_size * 2]
    for w in range(0, len(insns), 2):
        word = struct.unpack_from('<H', insns, w)[0]
        print(f"  word {w//2:03d} (+0x{w:03x}): {insns[w:w+2].hex()}")
