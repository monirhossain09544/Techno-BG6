with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/chipone_icnl99xx.ko", "rb") as f:
    data = f.read()
import re
for m in re.finditer(b"[ -~]{4,}", data):
    s = m.group(0).decode("ascii", "ignore")
    if any(k in s.lower() for k in ["firmware", "probe", "reset", "resume", "suspend", "bin", "sram"]):
        print(s)
