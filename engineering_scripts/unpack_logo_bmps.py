import struct, gzip, os
from PIL import Image

out_dir = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\logo_unpacked"
os.makedirs(out_dir, exist_ok=True)

with open(r"D:\Tecno_BG6_Full_ROM_Backup\logo.img", "rb") as f:
    data = f.read()

magic, count, first_off = struct.unpack_from("<2sHI", data, 0)
sizes = struct.unpack_from(f"<{count}I", data, 24)
print(f"logo.img: magic={magic}, count={count}, first_off={first_off}, sizes={sizes}")

cur = 24 + count * 4
for i, sz in enumerate(sizes):
    gz_bytes = data[cur : cur + sz]
    bmp_bytes = gzip.decompress(gz_bytes)
    bmp_path = os.path.join(out_dir, f"logo_{i+1}.bmp")
    png_path = os.path.join(out_dir, f"logo_{i+1}.png")
    with open(bmp_path, "wb") as bf:
        bf.write(bmp_bytes)
    im = Image.open(bmp_path)
    im.save(png_path)
    print(f"  logo_{i+1}.bmp: gz_sz={sz}, bmp_sz={len(bmp_bytes):,}, size={im.size}, mode={im.mode}")
    cur += sz

with open(r"D:\Tecno_BG6_Full_ROM_Backup\fbootlogo.img", "rb") as f:
    fb_data = f.read(3481976)
fb_bmp = os.path.join(out_dir, "fbootlogo.bmp")
fb_png = os.path.join(out_dir, "fbootlogo.png")
with open(fb_bmp, "wb") as bf:
    bf.write(fb_data)
im_fb = Image.open(fb_bmp)
im_fb.save(fb_png)
print(f"fbootlogo.bmp: size={im_fb.size}, mode={im_fb.mode}")
