import zipfile

with zipfile.ZipFile(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\DocumentsUIGo.apk", 'r') as z:
    for name in z.namelist():
        if name.endswith('.dex') or name == 'AndroidManifest.xml':
            data = z.read(name)
            if b'application/zip' in data or b'Archive' in data or b'unzip' in data.lower():
                print(f"{name}: application/zip={b'application/zip' in data}, Archive={b'Archive' in data}, unzip={b'unzip' in data.lower()}")
