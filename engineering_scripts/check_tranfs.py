import os, re

p = r"D:\Tecno_BG6_Full_ROM_Backup\tranfs.img"
with open(p, "rb") as f:
    data = f.read(64 * 1024 * 1024)
apks = set(m.decode("ascii", "ignore") for m in re.findall(b"[A-Za-z0-9_.-]{3,60}\\.apk", data))
print("tranfs.img APKs (first 64MB):", sorted(apks))
