import os
import struct
import gzip
import math
from PIL import Image, ImageDraw, ImageFont, ImageFilter

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
LOGO_ORIG = r"D:\Tecno_BG6_Full_ROM_Backup\logo.img"

W, H = 720, 1612

def create_sunno_wallpaper():
    # Create a rich, smooth 2026 Cyber-Aurora / Liquid Glass abstract wallpaper
    # Base deep space canvas
    img = Image.new("RGB", (W, H), (8, 10, 20))
    draw = ImageDraw.Draw(img)

    # Smooth vertical gradient base
    for y in range(H):
        t = y / H
        r = int(8 + 14 * math.sin(t * math.pi))
        g = int(11 + 18 * (1 - t))
        b = int(24 + 36 * math.sin(t * math.pi * 0.8))
        draw.line([(0, y), (W, y)], fill=(r, g, b))

    # Create glowing aurora orbs on a smaller canvas and upscale with bicubic/Gaussian blur for ultra-silky gradients
    small_w, small_h = 180, 403
    orb = Image.new("RGB", (small_w, small_h), (8, 11, 24))
    opix = orb.load()

    orbs = [
        # (cx, cy, radius, (r, g, b), intensity)
        (small_w * 0.80, small_h * 0.22, 110, (0, 210, 255), 0.85),    # Cyber Cyan top-right
        (small_w * 0.20, small_h * 0.35, 125, (98, 54, 255), 0.90),    # Electric Indigo upper-left
        (small_w * 0.65, small_h * 0.58, 130, (180, 40, 240), 0.70),   # Neon Violet center-right
        (small_w * 0.28, small_h * 0.78, 115, (0, 180, 216), 0.75),    # Deep Teal lower-left
        (small_w * 0.50, small_h * 0.45, 75,  (56, 189, 248), 0.55),   # Bright Sky core
    ]

    for y in range(small_h):
        for x in range(small_w):
            r_acc, g_acc, b_acc = 8.0, 11.0, 24.0
            for cx, cy, rad, (cr, cg, cb), inten in orbs:
                dist2 = (x - cx) ** 2 + (y - cy) ** 2
                w_val = math.exp(-dist2 / (2.0 * (rad * 0.55) ** 2)) * inten
                r_acc += cr * w_val
                g_acc += cg * w_val
                b_acc += cb * w_val
            opix[x, y] = (
                min(255, int(r_acc)),
                min(255, int(g_acc)),
                min(255, int(b_acc))
            )

    orb_full = orb.resize((W, H), Image.Resampling.BICUBIC)
    orb_full = orb_full.filter(ImageFilter.GaussianBlur(radius=28))

    # Add subtle diagonal glass ribbon highlights
    overlay = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    odraw = ImageDraw.Draw(overlay)
    odraw.ellipse([-180, 260, 620, 1060], outline=(120, 220, 255, 38), width=3)
    odraw.ellipse([140, 520, 940, 1320], outline=(190, 130, 255, 32), width=2)
    overlay = overlay.filter(ImageFilter.GaussianBlur(radius=4))

    final_wp = Image.alpha_composite(orb_full.convert("RGBA"), overlay).convert("RGB")
    wp_path = os.path.join(SCRATCH, "sunno_default_wallpaper.png")
    final_wp.save(wp_path, "PNG")
    print("Saved wallpaper:", wp_path, os.path.getsize(wp_path))
    return wp_path

def create_sunno_boot_logo_bmp():
    # Create a sleek, modern 720x1612 24-bit BMP for logo.img (replacing TECNO + Android 13 Go)
    img = Image.new("RGB", (W, H), (5, 7, 14))
    draw = ImageDraw.Draw(img)

    # Subtle radial glow behind center emblem
    glow = Image.new("RGB", (180, 403), (5, 7, 14))
    gpix = glow.load()
    cx, cy = 90, 175
    for y in range(403):
        for x in range(180):
            d2 = (x - cx) ** 2 + (y - cy) ** 2
            w = math.exp(-d2 / (2.0 * 42.0 ** 2))
            gpix[x, y] = (
                min(255, int(5 + 35 * w)),
                min(255, int(7 + 95 * w)),
                min(255, int(14 + 185 * w))
            )
    img = glow.resize((W, H), Image.Resampling.BICUBIC)
    draw = ImageDraw.Draw(img)

    # Center geometric "S" / Infinity Ring Emblem for Sunno OS
    center_x, center_y = W // 2, int(H * 0.43)
    # Outer cyan/indigo ring
    draw.ellipse(
        [center_x - 86, center_y - 86, center_x + 86, center_y + 86],
        outline=(56, 189, 248),
        width=8
    )
    draw.ellipse(
        [center_x - 64, center_y - 64, center_x + 64, center_y + 64],
        outline=(129, 140, 248),
        width=5
    )
    # Inner glowing core dot
    draw.ellipse(
        [center_x - 18, center_y - 18, center_x + 18, center_y + 18],
        fill=(0, 230, 255)
    )

    # Load clean fonts (Windows Arial Bold / Segoe UI)
    try:
        font_title = ImageFont.truetype(r"C:\Windows\Fonts\segoeuib.ttf", 64)
        font_sub = ImageFont.truetype(r"C:\Windows\Fonts\segoeui.ttf", 24)
        font_bottom = ImageFont.truetype(r"C:\Windows\Fonts\segoeuib.ttf", 22)
        font_bottom2 = ImageFont.truetype(r"C:\Windows\Fonts\segoeui.ttf", 19)
    except Exception:
        font_title = ImageFont.load_default()
        font_sub = ImageFont.load_default()
        font_bottom = ImageFont.load_default()
        font_bottom2 = ImageFont.load_default()

    # Draw "SUNNO OS"
    title = "SUNNO OS"
    tb = draw.textbbox((0, 0), title, font=font_title)
    tw = tb[2] - tb[0]
    draw.text(((W - tw) // 2, center_y + 120), title, fill=(248, 250, 252), font=font_title)

    # Subtitle "NEXT-GEN 90Hz EDITION"
    sub = "NEXT-GEN  •  PURE AOSP 14"
    sb = draw.textbbox((0, 0), sub, font=font_sub)
    sw = sb[2] - sb[0]
    draw.text(((W - sw) // 2, center_y + 202), sub, fill=(56, 189, 248), font=font_sub)

    # Bottom badge (replacing "Powered by android go edition")
    b1 = "POWERED BY ANDROID 14"
    b1b = draw.textbbox((0, 0), b1, font=font_bottom)
    b1w = b1b[2] - b1b[0]
    draw.text(((W - b1w) // 2, H - 175), b1, fill=(226, 232, 240), font=font_bottom)

    b2 = "Sunno Engine  •  Full 64-Bit Architecture"
    b2b = draw.textbbox((0, 0), b2, font=font_bottom2)
    b2w = b2b[2] - b2b[0]
    draw.text(((W - b2w) // 2, H - 140), b2, fill=(148, 163, 184), font=font_bottom2)

    bmp_path = os.path.join(SCRATCH, "sunno_boot_splash.bmp")
    img.save(bmp_path, "BMP")
    # Save a PNG preview for artifact viewing too
    png_preview = os.path.join(SCRATCH, "sunno_boot_splash_preview.png")
    img.save(png_preview, "PNG")
    print("Saved boot splash BMP:", bmp_path, os.path.getsize(bmp_path))
    return bmp_path

def repack_logo_img(new_bmp_path):
    with open(LOGO_ORIG, "rb") as f:
        orig = f.read()

    # Header: 47 5a 05 00 30 00 00 00 + 16 zero bytes + five uint32 sizes
    magic = orig[:8]
    count = struct.unpack("<H", orig[2:4])[0]
    sizes = [struct.unpack("<I", orig[24 + i*4 : 28 + i*4])[0] for i in range(count)]

    offset = 24 + count * 4
    gz_streams = []
    for s in sizes:
        gz_streams.append(orig[offset : offset + s])
        offset += s

    # Match exact BMP header structure of original logo_1.bmp (3,481,976 bytes)
    orig_bmp_1 = gzip.decompress(gz_streams[0])
    print("Original BMP 1 size:", len(orig_bmp_1))

    with open(new_bmp_path, "rb") as f:
        new_bmp = f.read()
    print("New BMP size:", len(new_bmp))

    # Pad to match 3,481,976 bytes if needed
    if len(new_bmp) < len(orig_bmp_1):
        new_bmp = new_bmp + b"\x00" * (len(orig_bmp_1) - len(new_bmp))

    new_gz = gzip.compress(new_bmp, compresslevel=6)
    # Replace index 0 (logo_1.bmp) and index 3 (logo_4.bmp - the "Powered by android go edition" screen)
    gz_streams[0] = new_gz
    gz_streams[3] = new_gz

    new_sizes = [len(g) for g in gz_streams]
    out = bytearray()
    out += orig[:24]
    for ns in new_sizes:
        out += struct.pack("<I", ns)
    for g in gz_streams:
        out += g

    # Pad to original file size (8,388,608 bytes = 8MB partition size)
    if len(out) < len(orig):
        out += b"\x00" * (len(orig) - len(out))

    out_path = os.path.join(SCRATCH, "logo_sunno.img")
    with open(out_path, "wb") as f:
        f.write(out)
    print("Repacked logo_sunno.img:", out_path, "size:", len(out), "(orig:", len(orig), ")")
    return out_path

if __name__ == "__main__":
    create_sunno_wallpaper()
    bmp = create_sunno_boot_logo_bmp()
    repack_logo_img(bmp)
