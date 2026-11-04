import os
import struct
import gzip

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
LOGO_ORIG = r"D:\Tecno_BG6_Full_ROM_Backup\logo.img"

with open(LOGO_ORIG, "rb") as f:
    orig = f.read()

count = struct.unpack("<H", orig[2:4])[0]
sizes = [struct.unpack("<I", orig[24 + i*4 : 28 + i*4])[0] for i in range(count)]
offset = 24 + count * 4
gz_streams = []
for s in sizes:
    gz_streams.append(orig[offset : offset + s])
    offset += s

orig_bmp_1 = gzip.decompress(gz_streams[0])
with open(os.path.join(SCRATCH, "sunno_boot_splash.bmp"), "rb") as f:
    raw_new = f.read()

# Use exact 54-byte header from orig_bmp_1 + pixel data from raw_new + 2 zero bytes
exact_bmp = orig_bmp_1[:54] + raw_new[54:] + b"\x00\x00"
assert len(exact_bmp) == len(orig_bmp_1), f"{len(exact_bmp)} != {len(orig_bmp_1)}"

# Compress with standard gzip without filename (mtime=0) just like stock
import io
buf = io.BytesIO()
with gzip.GzipFile(filename="", mode="wb", fileobj=buf, compresslevel=6, mtime=0) as gz:
    gz.write(exact_bmp)
new_gz = buf.getvalue()

gz_streams[0] = new_gz
gz_streams[3] = new_gz

out = bytearray()
out += orig[:24]
for g in gz_streams:
    out += struct.pack("<I", len(g))
for g in gz_streams:
    out += g
out += b"\x00" * (len(orig) - len(out))

out_path = os.path.join(SCRATCH, "logo_sunno.img")
with open(out_path, "wb") as f:
    f.write(out)
print("Perfectly repacked logo_sunno.img! Size:", len(out), "gz len:", len(new_gz))
