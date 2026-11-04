import re

with open(r"D:\Tecno_BG6_Full_ROM_Backup\super.img", "rb") as f:
    f.seek(3400 * 1024 * 1024)
    apks = set()
    while True:
        chunk = f.read(64 * 1024 * 1024)
        if not chunk:
            break
        for m in re.findall(b"[A-Za-z0-9_.-]{3,50}\\.apk", chunk):
            s = m.decode("ascii", "ignore")
            if "overlay" not in s.lower() and "rro" not in s.lower():
                apks.add(s)

for a in sorted(apks):
    if any(k in a.lower() for k in ["file", "note", "call", "contact", "dial", "mgr", "manage", "explorer", "doc"]):
        print("BG6_SUPER_APK:", a)
