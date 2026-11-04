with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_disasm.txt", "r", encoding="utf-8", errors="ignore") as f:
    text = f.read()

for fn in ["<cts_enter_program_mode>:", "<cts_resume_device>:", "<cts_suspend_device>:", "<reset_pin_store>:"]:
    idx = text.find(fn)
    print("===", fn, "===")
    if idx != -1:
        print(text[idx:idx+3500])