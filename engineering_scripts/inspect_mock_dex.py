import zipfile
import re

fw_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework.jar"
ax_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\AxSandbox.apk"

with zipfile.ZipFile(fw_path, 'r') as z:
    for name in z.namelist():
        if name.endswith('.dex'):
            data = z.read(name)
            for kw in [b'override_mock_location', b'getSpoofedSetting', b'spoof_dev_settings', b'spoof_adb', b'mock_location', b'isFromMockProvider']:
                for m in re.finditer(kw, data):
                    start = max(0, m.start() - 250)
                    end = min(len(data), m.end() + 250)
                    strings = re.findall(b'[ -~]{4,}', data[start:end])
                    print(f"[framework.jar:{name}] match {kw.decode()}:")
                    for s in strings:
                        print("  ", s.decode('ascii', errors='ignore'))

with zipfile.ZipFile(ax_path, 'r') as z:
    for name in z.namelist():
        if name.endswith('.dex'):
            data = z.read(name)
            for kw in [b'override_mock_location', b'getSpoofedSetting', b'spoof_', b'mock_location', b'AxSpoof']:
                for m in re.finditer(kw, data):
                    start = max(0, m.start() - 250)
                    end = min(len(data), m.end() + 250)
                    strings = re.findall(b'[ -~]{4,}', data[start:end])
                    print(f"[AxSandbox.apk:{name}] match {kw.decode()}:")
                    for s in strings:
                        print("  ", s.decode('ascii', errors='ignore'))
