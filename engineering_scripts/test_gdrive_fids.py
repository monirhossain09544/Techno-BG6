import urllib.request
import re

fids = [
    ("KL4_GsmMafia", "1YYVcAiRckrcUsaI35BrYy1yccIVHKdG3"),
    ("KL4_TecnoFW", "1S2Saavl-5XXhrxlgwXvUCNuEIWBjKVaR"),
    ("KL5_GsmMafia", "1cWhaK8H2rY6vyBnpPSjYg1z5R-meGIPP"),
    ("KL5_TecnoFW", "1kGxqDCLNQeeNTIa0mcKSlF9IIrq6wtZ4"),
    ("KL5S_TecnoFW", "148ztxR0jG9isrC9AMdvClf0KhNv7OZFd"),
    ("KL6_TecnoFW", "1TpSt4ckP9Uxq7vrZyBBRvTkNBV_HUB9J"),
    ("KM4_TecnoFW", "1fS0tXIXyUPeZcbDXu-53cS5_wo56rDG0"),
]

for name, fid in fids:
    u1 = f"https://drive.usercontent.google.com/download?id={fid}&export=download"
    html = urllib.request.urlopen(u1, timeout=10).read().decode('utf-8', errors='ignore')
    uuid_m = re.search(r'name="uuid" value="([^"]+)"', html)
    if uuid_m:
        u2 = f"https://drive.usercontent.google.com/download?id={fid}&export=download&confirm=t&uuid={uuid_m.group(1)}"
        r2 = urllib.request.urlopen(u2, timeout=10)
        cl = r2.headers.get("Content-Length", "0")
        ct = r2.headers.get("Content-Type", "")
        print(f"{name} ({fid}): Content-Type={ct}, Content-Length={cl}")
        if "text/html" in ct:
            print("  HTML snippet:", r2.read(500).decode('utf-8', errors='ignore').strip()[:200])
    else:
        print(f"{name} ({fid}): No uuid, html={html[:200]}")
