with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/sprd-drm.ko", "rb") as f:
    data = f.read()

import re
for m in re.finditer(b"[ -~]{4,}", data):
    s = m.group(0).decode("ascii", "ignore")
    if any(k in s.lower() for k in ["panel", "unprepare", "prepare", "bias", "suspend", "resume", "corner", "psensor", "gesture"]):
        print(s)
