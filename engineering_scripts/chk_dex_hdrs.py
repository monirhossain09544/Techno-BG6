import zipfile, struct, hashlib, zlib

apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings_locale.apk"
with zipfile.ZipFile(apk, 'r') as z:
    for info in z.infolist():
        if info.filename.endswith('.dex'):
            d = z.read(info.filename)
            magic = d[:8]
            chk = struct.unpack_from('<I', d, 8)[0]
            sha = d[12:32].hex()
            fsz = struct.unpack_from('<I', d, 32)[0]
            print(f"{info.filename}: compress={info.compress_type}, len={len(d)}, fsz={fsz}, chk=0x{chk:08x}, sha={sha}")
