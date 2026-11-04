import glob
files = glob.glob(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\steps\*\output.txt")
for f in sorted(files)[-15:]:
    with open(f, "r", encoding="utf-8", errors="ignore") as fp:
        txt = fp.read()
        if "5174." in txt:
            print("=== FOUND IN", f)
            print(txt)