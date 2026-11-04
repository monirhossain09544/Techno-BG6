from disasm_all_hidedev import disassemble_all_methods_of_class
import zipfile

srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"

with zipfile.ZipFile(srv_path, 'r') as z:
    for name in z.namelist():
        if name.endswith('.dex'):
            data = z.read(name)
            for cls in [b'LocationProviderManager;', b'AbstractLocationProvider;', b'GnssLocationProvider;']:
                if cls in data:
                    print(f"Found {cls.decode()} in {name}")

disassemble_all_methods_of_class(srv_path, 'classes2.dex', 'AbstractLocationProvider;')
