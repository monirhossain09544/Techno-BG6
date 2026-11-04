import struct

with open(r"D:\Tecno_BG6_Full_ROM_Backup\super.img", "rb") as f:
    f.seek(0x3000)
    hdr = f.read(256)
    magic, maj, min_v, hdr_sz, hdr_sha, tables_sz, tables_sha = struct.unpack("<IHHI32sI32s", hdr[:80])
    p_off, p_num, p_esz = struct.unpack("<III", hdr[80:92])
    e_off, e_num, e_esz = struct.unpack("<III", hdr[92:104])
    g_off, g_num, g_esz = struct.unpack("<III", hdr[104:116])
    b_off, b_num, b_esz = struct.unpack("<III", hdr[116:128])
    tables = f.read(tables_sz)

for i in range(g_num):
    g = tables[g_off + i*g_esz : g_off + (i+1)*g_esz]
    name, flags, max_sz = struct.unpack("<36sII", g[:44])
    print("Group", i, name.rstrip(b"\x00").decode(), "max_sz=", max_sz)

for i in range(p_num):
    p = tables[p_off + i*p_esz : p_off + (i+1)*p_esz]
    name, attr, first_ext, num_ext, grp_idx = struct.unpack("<36sIIII", p[:52])
    tot_sec = 0
    for ei in range(first_ext, first_ext + num_ext):
        ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
        num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
        tot_sec += num_sec
    print(f"Part {name.rstrip(b'\x00').decode():16s}: group={grp_idx}, bytes={tot_sec*512:,}")
