with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\steps\19312\output.txt", "r", encoding="utf-8", errors="ignore") as f:
    lines = f.readlines()

for i, line in enumerate(lines):
    if line.startswith("=== Class ") or "isMock" in line or "Mock" in line or "override_mock" in line:
        print(f"{i+1}: {line.strip()}")
