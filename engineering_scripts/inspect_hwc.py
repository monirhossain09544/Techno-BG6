from elftools.elf.elffile import ELFFile
import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_hwcomposer.unisoc.so', 'rb') as f:
    data = f.read()

for kw in [b'frame rate change', b'vrr', b'VRR', b'SetActiveConfig', b'refresh', b'fps', b'enhance', b'BootComplete', b'SR', b'displaysize']:
    pos = 0
    matches = []
    while True:
        idx = data.find(kw, pos)
        if idx == -1: break
        pos = idx + 1
        start = data.rfind(b'\x00', 0, idx) + 1
        end = data.find(b'\x00', idx)
        s = data[start:end].decode('latin1', errors='replace')
        if s not in matches:
            matches.append(s)
    print(f"=== {kw.decode()} ===")
    for m in matches[:25]:
        print(" ", m)
