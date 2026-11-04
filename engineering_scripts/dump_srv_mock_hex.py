import zipfile, struct

srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"
with zipfile.ZipFile(srv_path, 'r') as z:
    data = z.read('classes2.dex')

for name, off in [('MockLocationProvider.setProviderLocation', 0x24c890), ('MockableLocationProvider.isMock', 0x24ca7c)]:
    insns_size = struct.unpack_from('<I', data, off + 12)[0]
    raw = data[off+16 : off+16+insns_size*2]
    print(f"=== {name} (code_off=0x{off:x}, insns={insns_size}) ===")
    print(raw.hex(' '))
