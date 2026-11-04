import struct
import hashlib

META_PATH = r"D:\Tecno_BG6_Full_ROM_Backup\current_super_meta.bin"
data = bytearray(open(META_PATH, "rb").read())

# Find all occurrences of LP_METADATA_HEADER_MAGIC (0x414c5030 = b"0PLA")
pos = 0
slots = []
while True:
    idx = data.find(b"0PLA", pos)
    if idx == -1:
        break
    slots.append(idx)
    pos = idx + 4

print("Found 0PLA (LpMetadataHeader) at offsets:", [hex(x) for x in slots])
for s in slots:
    magic, maj, min_v, hdr_sz = struct.unpack("<IHHI", data[s:s+12])
    hdr_sha = data[s+12:s+44].hex()
    tbl_sz = struct.unpack("<I", data[s+44:s+48])[0]
    tbl_sha = data[s+48:s+80].hex()
    p_off, p_num, p_esz = struct.unpack("<III", data[s+80:s+92])
    e_off, e_num, e_esz = struct.unpack("<III", data[s+92:s+104])
    calc_tbl_sha = hashlib.sha256(data[s+hdr_sz : s+hdr_sz+tbl_sz]).hexdigest()
    hdr_copy = bytearray(data[s:s+hdr_sz])
    hdr_copy[12:44] = b"\x00" * 32
    calc_hdr_sha = hashlib.sha256(hdr_copy).hexdigest()
    print(f"  Offset 0x{s:x}: hdr_sz={hdr_sz}, tbl_sz={tbl_sz}, p_num={p_num}, e_num={e_num}")
    print(f"    tbl_sha match: {tbl_sha == calc_tbl_sha}")
    print(f"    hdr_sha match: {hdr_sha == calc_hdr_sha}")
