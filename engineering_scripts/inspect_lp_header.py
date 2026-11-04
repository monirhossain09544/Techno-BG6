import struct
import hashlib

with open(r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\super_header_backup.bin", "rb") as f:
    data = f.read()

# LpMetadataGeometry is at offset 4096 (0x1000) and backup at 8192 (0x2000)
geom_magic, geom_size, geom_sha256, max_meta_size, meta_slot_count, block_size = struct.unpack_from("<II32sIII", data, 0x1000)
print(f"Geometry magic: 0x{geom_magic:08x}, size: {geom_size}, max_meta_size: {max_meta_size}, slots: {meta_slot_count}, block_size: {block_size}")

# Metadata slots start at 0x3000 (12288), each max_meta_size (65536) bytes, followed by backup copies
for slot in range(meta_slot_count * 2):
    off = 0x3000 + slot * max_meta_size
    magic, major, minor, hdr_sz, hdr_sha, tables_sz, tables_sha = struct.unpack_from("<IHHI32sI32s", data, off)
    print(f"Slot {slot} @ 0x{off:x}: magic=0x{magic:08x}, v{major}.{minor}, hdr_sz={hdr_sz}, tables_sz={tables_sz}")
