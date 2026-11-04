import struct

with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/dtbo_a.img", "rb") as f:
    da = f.read()
with open("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/dtbo_b.img", "rb") as f:
    db = f.read()

off = 32 + 5 * 32
dt_size_a, dt_offset_a = struct.unpack(">2I", da[off:off+8])
dt_size_b, dt_offset_b = struct.unpack(">2I", db[off:off+8])

ba = da[dt_offset_a:dt_offset_a+dt_size_a]
bb = db[dt_offset_b:dt_offset_b+dt_size_b]

print(f"Size A={len(ba)}, Size B={len(bb)}")
for i in range(min(len(ba), len(bb))):
    if ba[i] != bb[i]:
        print(f"Diff at {i:#x}: A={ba[i]:#04x} B={bb[i]:#04x}")
        print("  Context A:", ba[max(0,i-16):i+16].hex())
        print("  Context B:", bb[max(0,i-16):i+16].hex())
