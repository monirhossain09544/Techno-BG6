import os

for f in [r"D:\bg6_vendor_a.img", r"D:\bg6_odm_a.img", r"D:\hios14_5_system.img"]:
    if os.path.exists(f):
        os.remove(f)
        print("Removed", f)

SUPER_PATH = r"D:\Tecno_BG6_Full_ROM_Backup\super.img"

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

def scan_part(name, extents):
    needles = [b"android.hardware.ram.low", b"android.hardware.ram.normal", b"ro.config.low_ram=true", b"ro.com.google.gmsversion"]
    counts = {n: [] for n in needles}
    with open(SUPER_PATH, "rb") as fin:
        for start_sec, end_sec, phys_sec in extents:
            count_sec = end_sec - start_sec + 1
            fin.seek(phys_sec * 512)
            data = fin.read(count_sec * 512)
            for n in needles:
                idx = 0
                while True:
                    idx = data.find(n, idx)
                    if idx == -1:
                        break
                    ctx = data[max(0, idx-60):min(len(data), idx+100)]
                    counts[n].append(ctx)
                    idx += len(n)
    print(f"=== {name} ===")
    for n, hits in counts.items():
        print(f"  {n.decode()}: {len(hits)} hits")
        for h in hits[:3]:
            print("    ->", repr(h))

scan_part("vendor_a", vendor_extents)
scan_part("odm_a", odm_extents)
