import struct, re

path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko"
data = open(path, "rb").read()

print("=== MATCHING STRINGS ===")
for m in re.finditer(b"[ -~]{5,120}", data):
    s = m.group(0).decode("ascii", errors="ignore")
    if any(k in s.lower() for k in ["sram", "reset", "resume", "suspend", "firmware", "boot", "program", "lcd", "esd", "reload", "flash", "update"]):
        print(s)
