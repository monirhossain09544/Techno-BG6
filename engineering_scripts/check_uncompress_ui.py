from androguard.core.bytecodes.dvm import DalvikVMFormat

with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\osfm_dex\classes.dex", "rb") as f:
    d = DalvikVMFormat(f.read())

for c in d.get_classes():
    if c.get_name() in ("Lo7/c0$b;", "Lh9/o$c;", "Lo7/q;", "Lo7/r;", "Lo7/s;"):
        print("CLASS:", c.get_name())
        for m in c.get_methods():
            print("  METHOD:", m.get_name(), m.get_descriptor())
            code = m.get_code()
            if code:
                bc = code.get_bc()
                idx = 0
                for ins in bc.get_instructions():
                    print(f"    0x{idx:04x}: {ins.get_name()} {ins.get_output()}")
                    idx += ins.get_length() // 2
