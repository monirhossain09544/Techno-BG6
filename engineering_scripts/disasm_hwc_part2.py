import struct
from disasm_hwc_detail import disasm_range, syms

for name, v, s in syms:
    if any(k in name for k in ['sr_config', 'enhance', 'ChosePreferred', 'setActiveConfig', 'CommitFrame', 'setColor']):
        print(f"Sym: {name} @ 0x{v:x} (size 0x{s:x})")

disasm_range(0x5eb00, 0x5ed00, "End of setActiveConfig")
disasm_range(0x60100, 0x60400, "CommitFrame mode change")
for name, v, s in syms:
    if 'read_sr_config' in name or 'enhance_flip_update' in name:
        disasm_range(v, v + s, name)
