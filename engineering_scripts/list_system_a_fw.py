import os
import struct
import sys
sys.path.insert(0, r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch")
from extract_from_erofs_product import ErofsReader

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
        if pname == "system_a":
            exts = []
            for ei in range(first_ext, first_ext + num_ext):
                ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
                num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
                exts.append((t_data * 512 if t_type == 0 else 0, num_sec * 512))
            reader = ErofsReader(f, exts)
            for d in ["/system/framework", "/system/etc/permissions", "/system/lib64", "/system_ext/lib64", "/product/lib64"]:
                ino = reader.lookup_path(d)
                if ino:
                    print(f"\n=== {d} ===")
                    for name, d_nid, d_type in reader.list_dir(ino["nid"]):
                        if name.endswith(".jar") or name.endswith(".apk") or name.endswith(".xml") or any(k in name.lower() for k in ("tran", "hios", "os", "theme", "weather", "launcher", "dynamic")):
                            print(f"  {name}")
