import zipfile
import struct

def inspect_location_and_services():
    fw_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework.jar"
    with zipfile.ZipFile(fw_path, 'r') as z:
        data = z.read('classes2.dex')
    
    # Dump raw bytes from 0x3f6610 to 0x3f6670
    print("=== Raw bytes in classes2.dex 0x3f6610..0x3f6670 ===")
    chunk = data[0x3f6610:0x3f6670]
    for i in range(0, len(chunk), 16):
        hex_str = ' '.join(f'{b:02x}' for b in chunk[i:i+16])
        print(f"0x{0x3f6610+i:06x}: {hex_str}")

    # Now let's check services.jar for getSpoofedSetting, mock_location, override_mock_location, etc.
    srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"
    with zipfile.ZipFile(srv_path, 'r') as z:
        for name in z.namelist():
            if name.endswith('.dex'):
                sdata = z.read(name)
                for kw in [b'getSpoofedSetting', b'setSpoofSettingEnabled', b'spoof_dev_settings', b'mock_location', b'override_mock_location', b'isMock']:
                    if kw in sdata:
                        print(f"[services.jar:{name}] contains {kw.decode()}")

inspect_location_and_services()
