import os
import struct
import time

t0 = time.time()
TEMP_EXT = r"D:\cur_ext.bin"
if os.path.exists(TEMP_EXT):
    os.remove(TEMP_EXT)
    print("Deleted D:\\cur_ext.bin")

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
SUPER_PATH = os.path.join(BACKUP_DIR, "super.img")
META_PATH = os.path.join(BACKUP_DIR, "current_super_meta.bin")
SYS_PATH = r"D:\hios14_5_system.img"

meta = open(META_PATH, "rb").read()
assert len(meta) == 0x100000, f"Unexpected meta size: {len(meta)}"

off = 12288
magic, maj, min_v, hdr_sz = struct.unpack("<IHHI", meta[off:off+12])
assert magic == 0x414c5030, f"Invalid magic: {hex(magic)}"
p_off, p_num, p_esz = struct.unpack("<III", meta[off+80:off+92])
e_off, e_num, e_esz = struct.unpack("<III", meta[off+92:off+104])
base = off + hdr_sz

sys_extents = []
max_end_byte = 0
for i in range(p_num):
    pe = meta[base + p_off + i*p_esz : base + p_off + (i+1)*p_esz]
    name = pe[:36].split(b"\x00")[0].decode()
    attr, first_ext, num_ext, grp = struct.unpack("<IIII", pe[36:52])
    for j in range(first_ext, first_ext + num_ext):
        ee = meta[base + e_off + j*e_esz : base + e_off + (j+1)*e_esz]
        num_sec, target_type, target_data, target_src = struct.unpack("<QIQI", ee[:28])
        s_off = target_data * 512
        s_len = num_sec * 512
        if s_off + s_len > max_end_byte:
            max_end_byte = s_off + s_len
        if name == "system_a":
            sys_extents.append((s_off, s_len))

total_sys = sum(l for _, l in sys_extents)
sys_size = os.path.getsize(SYS_PATH)
assert total_sys == sys_size, f"Mismatch: {total_sys} != {sys_size}"
print(f"Patching {SUPER_PATH} in-place: system_a={sys_size:,} bytes across {len(sys_extents)} extents, max_end_byte={max_end_byte:,} (0x{max_end_byte:x})")

with open(SUPER_PATH, "r+b") as fsup, open(SYS_PATH, "rb") as fsys:
    fsup.seek(0)
    fsup.write(meta)
    for idx, (s_off, s_len) in enumerate(sys_extents):
        fsup.seek(s_off)
        left = s_len
        while left > 0:
            chunk = fsys.read(min(16 * 1024 * 1024, left))
            assert chunk, "Unexpected EOF in hios14_5_system.img"
            fsup.write(chunk)
            left -= len(chunk)
        print(f"  Patched extent {idx+1}/{len(sys_extents)}: super+0x{s_off:x} ({s_len/(1024**2):.2f} MB)", flush=True)
    fsup.truncate(max_end_byte)

print(f"DONE in {time.time() - t0:.1f}s! Final super.img size: {os.path.getsize(SUPER_PATH):,} bytes")
