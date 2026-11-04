import os, re

for name, path in [("tranfs.img", r"D:\Tecno_BG6_Full_ROM_Backup\tranfs.img")]:
    apks = set()
    with open(path, "rb") as f:
        while True:
            chunk = f.read(32 * 1024 * 1024)
            if not chunk:
                break
            for m in re.findall(b"[A-Za-z0-9_/-]{3,80}\\.apk", chunk):
                s = m.decode("ascii", "ignore")
                if len(s) > 5:
                    apks.add(s)
    print(f"=== {name} ===")
    for a in sorted(apks):
        print(" ", a)

# Check BG6 lpdump offsets in super.img for product_a and system_ext_a
with open(r"D:\Tecno_BG6_Full_ROM_Backup\super.img", "rb") as f:
    # Scan from 2.4GB to 4.8GB where product_a / system_ext_a live
    f.seek(2400 * 1024 * 1024)
    super_apks = set()
    while True:
        chunk = f.read(64 * 1024 * 1024)
        if not chunk:
            break
        for m in re.findall(b"(?:priv-app|app|operator/app)/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+\\.apk", chunk):
            super_apks.add(m.decode("ascii", "ignore"))
    print("=== BG6 super.img (product_a + system_ext_a) ===")
    for a in sorted(super_apks):
        print(" ", a)
