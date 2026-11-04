import zipfile
import struct

from disasm_spoof import disassemble_class_methods

srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"
fw_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework.jar"

with zipfile.ZipFile(fw_path, 'r') as z:
    for name in z.namelist():
        if name.endswith('.dex'):
            data = z.read(name)
            if b'HideDeveloperStatusUtils' in data:
                print(f"Found HideDeveloperStatusUtils in framework.jar :: {name}")
                disassemble_class_methods(fw_path, name, 'HideDeveloperStatusUtils')

disassemble_class_methods(srv_path, 'classes3.dex', 'SettingsSpoofController')
