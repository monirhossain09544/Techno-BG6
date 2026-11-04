import os

SUPER_PATH = r"D:\Tecno_BG6_Full_ROM_Backup\super.img"

# Extents from bg6_lpdump.txt (in 512-byte sectors)
vendor_extents = [
    (0, 1333895, 3198976),
    (1333896, 1394511, 1655608),
    (1394512, 1395487, 3198000),
    (1395488, 1396887, 4532872),
    (1396888, 1398607, 7000392),
    (1398608, 1412543, 7899536),
    (1412544, 1735039, 7929536),
    (1735040, 1756391, 1608480),
    (1756392, 1771087, 8252040),
    (1771088, 1845575, 8268832),
    (1845576, 1852695, 8346080),
    (1852696, 1852703, 8473680),
    (1852704, 1869263, 8516992),
    (1869264, 1869271, 8545448),
    (1869272, 1869279, 8600776),
]

odm_extents = [
    (0, 897423, 7002112),
    (897424, 897439, 8266768),
    (897440, 897751, 8343320),
    (897752, 898807, 8473688),
    (898808, 898831, 8545472),
]

def extract_part(extents, out_path):
    with open(SUPER_PATH, "rb") as fin, open(out_path, "wb") as fout:
        for start_sec, end_sec, phys_sec in extents:
            count_sec = end_sec - start_sec + 1
            fin.seek(phys_sec * 512)
            remaining = count_sec * 512
            while remaining > 0:
                chunk = fin.read(min(4 * 1024 * 1024, remaining))
                if not chunk:
                    break
                fout.write(chunk)
                remaining -= len(chunk)
    print(f"Extracted {out_path}: {os.path.getsize(out_path):,} bytes")

extract_part(vendor_extents, r"D:\bg6_vendor_a.img")
extract_part(odm_extents, r"D:\bg6_odm_a.img")

for p in [r"D:\bg6_vendor_a.img", r"D:\bg6_odm_a.img"]:
    with open(p, "rb") as f:
        data = f.read()
    for needle in [b"android.hardware.ram.low", b"android.hardware.ram.normal", b"ro.config.low_ram=true", b"TGo"]:
        idx = 0
        hits = []
        while True:
            idx = data.find(needle, idx)
            if idx == -1:
                break
            hits.append(idx)
            idx += len(needle)
        print(f"{os.path.basename(p)} -> {needle.decode()}: {len(hits)} hits at {hits[:5]}")
