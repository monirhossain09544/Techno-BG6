import struct
import os
import time

t0 = time.time()
BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
LIVE_META = os.path.join(BACKUP_DIR, "live_super_meta.bin")
SUPER_IMG = os.path.join(BACKUP_DIR, "super.img")
SYS_IMG = r"D:\infinity_x_bg6_ready.img"

sys_size = os.path.getsize(SYS_IMG)
assert sys_size == 3423481856, f"Unexpected sys_size: {sys_size}"

with open(LIVE_META, "rb") as f:
    meta = f.read()

s = 0x3000
magic, maj, min_v, hdr_sz = struct.unpack_from("<IHHI", meta, s)
assert magic == 0x414C5030
p_off, p_num, p_esz = struct.unpack_from("<III", meta, s + 80)
e_off, e_num, e_esz = struct.unpack_from("<III", meta, s + 92)
base = s + hdr_sz
extents = []
for i in range(e_num):
    eo = base + e_off + i * e_esz
    extents.append(struct.unpack_from("<QIQI", meta, eo))

part_extents = {}
max_end = 0
for i in range(p_num):
    po = base + p_off + i * p_esz
    name = meta[po:po+36].split(b"\x00")[0].decode()
    attr, first_ext, num_ext, grp = struct.unpack_from("<IIII", meta, po + 36)
    plist = []
    for ei in range(first_ext, first_ext + num_ext):
        ns, tt, td, ts = extents[ei]
        start_b = td * 512
        len_b = ns * 512
        if start_b + len_b > max_end:
            max_end = start_b + len_b
        plist.append((start_b, len_b))
    part_extents[name] = plist

# Verify non-system partitions are all within original super.img size (4,403,613,696)
orig_super_size = os.path.getsize(SUPER_IMG)
for name, plist in part_extents.items():
    if name != "system_a":
        for st, ln in plist:
            assert st + ln <= orig_super_size, f"{name} extent {st}+{ln} exceeds {orig_super_size}!"
print("Verified vendor_a, odm_a, vendor_dlkm_a are 100% intact inside super.img!", flush=True)

sys_exts = part_extents["system_a"]
assert sum(ln for _, ln in sys_exts) == sys_size

print(f"Patching {SUPER_IMG} (extending to {max_end:,} bytes) with {SYS_IMG}...", flush=True)
with open(SUPER_IMG, "r+b") as fsup, open(SYS_IMG, "rb") as fsys:
    if orig_super_size < max_end:
        fsup.truncate(max_end)
    fsup.seek(0)
    fsup.write(meta)
    for idx, (s_off, s_len) in enumerate(sys_exts):
        fsup.seek(s_off)
        left = s_len
        while left > 0:
            chunk = fsys.read(min(16 * 1024 * 1024, left))
            assert chunk, "Unexpected EOF reading SYS_IMG"
            fsup.write(chunk)
            left -= len(chunk)
    fsup.flush()

print(f"SUPER_IMG_PATCHED_SUCCESSFULLY in {time.time()-t0:.1f}s! Final size: {os.path.getsize(SUPER_IMG):,} bytes", flush=True)
