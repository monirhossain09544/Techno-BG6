import struct
import lz4.block
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
        if pname == "product_a":
            exts = []
            for ei in range(first_ext, first_ext + num_ext):
                ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
                num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
                exts.append((t_data * 512 if t_type == 0 else 0, num_sec * 512))
            reader = ErofsReader(f, exts)
            for target in ["/etc/apns-conf.xml", "/app/Chrome/Chrome.apk", "/app/TrichromeLibrary/TrichromeLibrary.apk"]:
                ino = reader.lookup_path(target)
                # In EROFS compressed inode, map_header is 8 bytes aligned after inline_pos:
                # wait: for datalayout=3 (EROFS_INODE_COMPRESSED_FULL) vs datalayout=3 (EROFS_INODE_COMPRESSED_COMPACT):
                # let's check EROFS datalayout enum:
                # 0: EROFS_INODE_FLAT_PLAIN
                # 1: EROFS_INODE_COMPRESSED_FULL (legacy VLE)
                # 2: EROFS_INODE_FLAT_INLINE
                # 3: EROFS_INODE_COMPRESSED_COMPACT
                # 4: EROFS_INODE_CHUNK_BASED
                mpos = (ino["inline_pos"] + 7) & ~7
                mh = reader.read_at(mpos, 32)
                print(target, "inline_pos=", ino["inline_pos"], "mpos=", mpos, "mh=", mh[:16].hex())
