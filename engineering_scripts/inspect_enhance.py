import re, struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_enhance.unisoc.so', 'rb') as f:
    data = f.read()

print("=== Strings in vendor_enhance.unisoc.so ===")
for m in re.finditer(b'[ -~]{4,}', data):
    s = m.group(0).decode('ascii', errors='ignore')
    if not s.startswith('_Z') and not s.startswith('std::'):
        print(f"  0x{m.start():x}: {s}")
