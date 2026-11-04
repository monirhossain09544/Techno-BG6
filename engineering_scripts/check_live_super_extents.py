import struct, os

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
LIVE_META = os.path.join(BACKUP_DIR, "live_super_meta.bin")
SUPER_IMG = os.path.join(BACKUP_DIR, "super.img")

with open(LIVE_META, "rb") as f:
    meta = f.read()

s = 0x3000
magic, maj, min_v, hdr_sz = struct.unpack_from("<IHHI", meta, s)
p_off, p_num, p_esz = struct.unpack_from("<III", meta, s + 80)
e_off, e_num, e_esz = struct.unpack_from("<III", meta, s + 92)
base = s + hdr_sz
extents = []
for i in range(e_num):
    eo = base + e_off + i * e_esz
    extents.append(struct.unpack_from("<QIQI", meta, eo))

max_end = 0
for i in range(p_num):
    po = base + p_off + i * p_esz
    name = meta[po:po+36].split(b"\x00")[0].decode()
    attr, first_ext, num_ext, grp = struct.unpack_from("<IIII", meta, po + 36)
    tot = 0
    for ei in range(first_ext, first_ext + num_ext):
        ns, tt, td, ts = extents[ei]
        end_b = (td + ns) * 512
        if end_b > max_end:
            max_end = end_b
        tot += ns * 512
    print(f"Partition '{name}': {num_ext} extents, total={tot:,} bytes")

print(f"Max byte offset in live super: {max_end:,} bytes")
print(f"Current super.img file size  : {os.path.getsize(SUPER_IMG):,} bytes")
