import os
import struct
from extract_from_erofs_product import ErofsReader
from extract_stock_chrome_now import extract_compressed_file

OUT_DIR = r"D:\HiOS_UI_Suite"
os.makedirs(OUT_DIR, exist_ok=True)

def read_erofs_file(reader, ino):
    if ino["datalayout"] in (0, 2):
        return reader.read_uncompressed_data(ino)
    else:
        return extract_compressed_file(reader, ino)

def extract_dir_recursive(reader, dir_path, local_dir):
    ino = reader.lookup_path(dir_path)
    if not ino:
        print(f"  [!] Path not found: {dir_path}")
        return
    os.makedirs(local_dir, exist_ok=True)
    for name, d_nid, d_type in reader.list_dir(ino["nid"]):
        if name in (".", ".."):
            continue
        child_path = f"{dir_path.rstrip('/')}/{name}"
        child_local = os.path.join(local_dir, name)
        # d_type: 1=REG_FILE, 2=DIR, 7=SYMLINK
        if d_type == 2:
            extract_dir_recursive(reader, child_path, child_local)
        elif d_type == 1:
            c_ino = reader.get_inode(d_nid)
            data = read_erofs_file(reader, c_ino)
            with open(child_local, "wb") as f:
                f.write(data)
            print(f"  Extracted {child_path} -> {child_local} ({len(data):,} bytes)")

with open(r"D:\Tecno_BG6_Full_ROM_Backup\super.img", "rb") as f:
    f.seek(0x3000)
    hdr = f.read(256)
    magic, maj, min_v, hdr_sz, hdr_sha, tables_sz, tables_sha = struct.unpack("<IHHI32sI32s", hdr[:80])
    p_off, p_num, p_esz = struct.unpack("<III", hdr[80:92])
    e_off, e_num, e_esz = struct.unpack("<III", hdr[92:104])
    tables = f.read(tables_sz)

    for i in range(p_num):
        p = tables[p_off + i*p_esz : p_off + (i+1)*p_esz]
        name, attr, first_ext, num_ext, grp_idx = struct.unpack("<36sIIII", p[:52])
        pname = name.rstrip(b"\x00").decode()
        if pname in ("system_ext_a", "product_a"):
            exts = []
            for ei in range(first_ext, first_ext + num_ext):
                ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
                num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
                exts.append((t_data * 512 if t_type == 0 else 0, num_sec * 512))
            reader = ErofsReader(f, exts)
            print(f"\n=== Extracting from {pname} ===")
            if pname == "system_ext_a":
                for target in [
                    "/app/HiLauncher",
                    "/app/Weather",
                    "/app/TranDynamicBar",
                    "/app/TRWallpaperPicker",
                    "/app/AiGallery",
                    "/app/TranssionDeskClock",
                    "/app/TranssionCalculator",
                    "/app/TranssionNote",
                    "/app/TranssionSoundRecorder",
                    "/priv-app/SmartCaller",
                    "/priv-app/TranSystemUI",
                ]:
                    extract_dir_recursive(reader, target, os.path.join(OUT_DIR, "system_ext", target.lstrip("/")))
            elif pname == "product_a":
                for target in [
                    "/priv-app/HiOSLauncher_res_default",
                    "/priv-app/OSIcon",
                    "/overlay/SystemUIOverlay.apk",
                    "/overlay/FrameworkResOverlay.apk",
                    "/overlay/SettingsOverlay.apk",
                    "/theme",
                ]:
                    c_ino = reader.lookup_path(target)
                    if c_ino and target.endswith(".apk"):
                        os.makedirs(os.path.join(OUT_DIR, "product", "overlay"), exist_ok=True)
                        data = read_erofs_file(reader, c_ino)
                        out_f = os.path.join(OUT_DIR, "product", target.lstrip("/"))
                        with open(out_f, "wb") as wf:
                            wf.write(data)
                        print(f"  Extracted {target} -> {out_f} ({len(data):,} bytes)")
                    else:
                        extract_dir_recursive(reader, target, os.path.join(OUT_DIR, "product", target.lstrip("/")))
