import zipfile, struct

p = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\framework-location.jar"
with zipfile.ZipFile(p, 'r') as z:
    for name in z.namelist():
        print(name)
        if name.endswith('.dex'):
            data = z.read(name)
            for kw in [b'isMock', b'setMock', b'mock_location', b'Mock']:
                if kw in data:
                    print(f"  contains {kw.decode()}")
