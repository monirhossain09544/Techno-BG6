import struct, hashlib, os, glob

for path in [
    "C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/dtbo_a.img",
    "C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/dtbo_b.img",
] + glob.glob("C:/Users/Monir/Documents/deepseek-harness/default-workspace/repo/Techno-BG6-main/**/dtbo*", recursive=True):
    if not os.path.isfile(path) or not path.endswith(".img"):
        continue
    with open(path, "rb") as f:
        data = f.read()
    magic, total_size, header_size, dt_entry_size, dt_entry_count, dt_entries_offset, page_size, version = struct.unpack(">8I", data[:32])
    print(f"=== {os.path.basename(path)} ({path}): total_size={total_size}, count={dt_entry_count}, sha256(valid)={hashlib.sha256(data[:total_size]).hexdigest()} ===")
    for i in range(dt_entry_count):
        off = dt_entries_offset + i * dt_entry_size
        dt_size, dt_offset, dt_id, dt_rev, f0, f1, f2, f3 = struct.unpack(">8I", data[off:off+32])
        blob = data[dt_offset:dt_offset+dt_size]
        print(f"  Entry {i}: id={dt_id:#x} rev={dt_rev:#x} size={dt_size} sha256={hashlib.sha256(blob).hexdigest()[:16]}")
