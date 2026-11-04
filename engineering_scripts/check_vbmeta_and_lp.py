import struct

for name in ["vbmeta_a.img", "vbmeta_system_a.img"]:
    p = rf"D:\Tecno_BG6_Full_ROM_Backup\{name}"
    with open(p, "rb") as f:
        hdr = f.read(256)
    magic = hdr[:4]
    flags = struct.unpack_from(">I", hdr, 120)[0]
    print(f"{name}: magic={magic}, flags=0x{flags:08x}")

with open(r"D:\Tecno_BG6_Full_ROM_Backup\current_super_meta.bin", "rb") as f:
    data = f.read()

for off in [0x3000, 0x10000]:
    magic = struct.unpack_from("<I", data, off)[0]
    if magic == 0x414C5030:
        major, minor, hdr_size = struct.unpack_from("<HHI", data, off + 4)
        p_off, p_num, p_sz = struct.unpack_from("<III", data, off + 80)
        e_off, e_num, e_sz = struct.unpack_from("<III", data, off + 92)
        print(f"\nLP Header at 0x{off:x}: hdr_size={hdr_size}, Partitions={p_num}, Extents={e_num}")
        base = off + hdr_size
        extents = []
        for i in range(e_num):
            eo = base + e_off + i * e_sz
            num_sectors, target_type, target_data, target_source = struct.unpack_from("<QIQI", data, eo)
            extents.append((num_sectors, target_type, target_data, target_source))
        for i in range(p_num):
            po = base + p_off + i * p_sz
            name = data[po:po+36].split(b"\x00")[0].decode("ascii", errors="ignore")
            attrs, first_ext, num_ext, group_idx = struct.unpack_from("<IIII", data, po + 36)
            print(f"  Partition [{i}] '{name}': num_ext={num_ext}")
            for ei in range(first_ext, first_ext + num_ext):
                ns, tt, td, ts = extents[ei]
                print(f"    Extent {ei}: byte_offset=0x{td*512:x} ({td*512:,}), size={ns*512:,} bytes")
