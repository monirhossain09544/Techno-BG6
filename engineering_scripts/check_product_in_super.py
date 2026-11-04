import struct

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
        print(f"Partition {pname}: num_ext={num_ext}")
        for ei in range(first_ext, first_ext + num_ext):
            ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
            num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
            byte_off = t_data * 512
            byte_len = num_sec * 512
            f.seek(byte_off + 1024)
            sb = f.read(64)
            ext4_magic = struct.unpack("<H", sb[56:58])[0]
            erofs_magic = struct.unpack("<I", sb[0:4])[0]
            print(f"  extent {ei}: offset={byte_off} ({byte_off:#x}), len={byte_len:,}, ext4={ext4_magic:#x}, erofs={erofs_magic:#x}")
