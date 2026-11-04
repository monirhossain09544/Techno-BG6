import os
import struct
import hashlib
import time

t0 = time.time()
BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
SUPER_PATH = os.path.join(BACKUP_DIR, "super.img")
META_PATH = os.path.join(BACKUP_DIR, "current_super_meta.bin")
SYS_PATH = r"D:\sunno_v2_system.img"

sys_size = os.path.getsize(SYS_PATH)
assert sys_size == 2427629568, f"Unexpected size: {sys_size}"
target_sectors = sys_size // 512

meta = bytearray(open(META_PATH, "rb").read())

# Parse slot 0 at 0x3000 and adjust system_a extents to match target_sectors (4,741,464)
s = 0x3000
magic, maj, min_v, hdr_sz = struct.unpack("<IHHI", meta[s:s+12])
tbl_sz = struct.unpack("<I", meta[s+44:s+48])[0]
p_off, p_num, p_esz = struct.unpack("<III", meta[s+80:s+92])
e_off, e_num, e_esz = struct.unpack("<III", meta[s+92:s+104])
base = s + hdr_sz

sys_extents = []
for i in range(p_num):
    pe_pos = base + p_off + i * p_esz
    pe = meta[pe_pos : pe_pos + p_esz]
    name = pe[:36].split(b"\x00")[0].decode()
    attr, first_ext, num_ext, grp = struct.unpack("<IIII", pe[36:52])
    if name == "system_a":
        rem_sec = target_sectors
        for j in range(first_ext, first_ext + num_ext):
            ee_pos = base + e_off + j * e_esz
            ee = meta[ee_pos : ee_pos + e_esz]
            num_sec, target_type, target_data, target_src = struct.unpack("<QIQI", ee[:28])
            use_sec = min(rem_sec, num_sec)
            if use_sec != num_sec:
                print(f"Adjusting extent {j} num_sec from {num_sec} to {use_sec}")
                struct.pack_into("<Q", meta, ee_pos, use_sec)
            rem_sec -= use_sec
            sys_extents.append((target_data * 512, use_sec * 512))
        assert rem_sec == 0, f"rem_sec={rem_sec}"
        break

# Recompute tbl_sha and hdr_sha for slot 0
new_tbl_sha = hashlib.sha256(meta[base : base + tbl_sz]).digest()
meta[s+48 : s+80] = new_tbl_sha
meta[s+12 : s+44] = b"\x00" * 32
new_hdr_sha = hashlib.sha256(meta[s : s + hdr_sz]).digest()
meta[s+12 : s+44] = new_hdr_sha

# Copy updated slot 0 (hdr + tables) to all 6 metadata slots so A/B and backup slots match 100%
slot_blob = bytes(meta[s : s + hdr_sz + tbl_sz])
for dst_s in [0x3000, 0x13000, 0x23000, 0x33000, 0x43000, 0x53000]:
    meta[dst_s : dst_s + 0x10000] = b"\x00" * 0x10000
    meta[dst_s : dst_s + len(slot_blob)] = slot_blob

total_bytes = sum(l for _, l in sys_extents)
assert total_bytes == sys_size, f"{total_bytes} != {sys_size}"
print(f"Verified LpMetadata: system_a = {total_bytes:,} bytes across {len(sys_extents)} extents")

with open(SUPER_PATH, "r+b") as fsup, open(SYS_PATH, "rb") as fsys:
    fsup.seek(0)
    fsup.write(meta)
    for idx, (s_off, s_len) in enumerate(sys_extents):
        fsup.seek(s_off)
        left = s_len
        while left > 0:
            chunk = fsys.read(min(16 * 1024 * 1024, left))
            assert chunk, "EOF"
            fsup.write(chunk)
            left -= len(chunk)
        print(f"  Wrote extent {idx+1}/{len(sys_extents)}: super+0x{s_off:x} ({s_len/(1024**2):.2f} MB)", flush=True)

print(f"SUPER_PATCH_READY in {time.time()-t0:.1f}s! Size: {os.path.getsize(SUPER_PATH):,} bytes")
