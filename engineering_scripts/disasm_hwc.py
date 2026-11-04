import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_hwcomposer.unisoc.so', 'rb') as f:
    data = f.read()

e_shoff = struct.unpack_from('<Q', data, 40)[0]
e_shentsize = struct.unpack_from('<H', data, 58)[0]
e_shnum = struct.unpack_from('<H', data, 60)[0]
e_shstrndx = struct.unpack_from('<H', data, 62)[0]

shstr_hdr = e_shoff + e_shstrndx * e_shentsize
shstr_off = struct.unpack_from('<Q', data, shstr_hdr + 24)[0]

sections = {}
for i in range(e_shnum):
    hdr = e_shoff + i * e_shentsize
    sh_name, sh_type, sh_flags, sh_addr, sh_offset, sh_size = struct.unpack_from('<IIQQQQ', data, hdr)[:6]
    end = data.find(b'\x00', shstr_off + sh_name)
    name = data[shstr_off + sh_name:end].decode('utf-8', errors='replace')
    sections[name] = (sh_addr, sh_offset, sh_size)
    print(f"Section {name}: vaddr=0x{sh_addr:x}, off=0x{sh_offset:x}, size=0x{sh_size:x}")

# Find where "frame rate change" and "Change vrefresh and resolution at the same time" are located
for target in [b'frame rate change\x00', b'Change vrefresh and resolution at the same time', b'vrr_enabled\x00', b'display config\x00']:
    idx = 0
    while True:
        idx = data.find(target, idx)
        if idx == -1:
            break
        print(f"Found {target} at file offset 0x{idx:x}")
        idx += 1

# Also check all property_get / GetProperty calls or ro./persist./vendor./sys. strings in vendor_hwcomposer.unisoc.so
import re
for m in re.finditer(b'[ -~]{4,}', data):
    s = m.group(0).decode('ascii', errors='ignore')
    if any(k in s for k in ['ro.', 'persist.', 'vendor.', 'sys.', 'debug.', 'vrr', 'Vrr', 'VRR', 'refresh', 'Refresh', 'mode', 'Mode', 'Config', 'config', 'enhance', 'Enhance', 'color', 'Color', 'Ctm', 'ctm', 'SR', 'sr']):
        if not s.startswith('_Z'):
            print(f"  0x{m.start():x}: {s}")
