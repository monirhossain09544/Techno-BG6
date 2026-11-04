import struct

with open(r"D:\Tecno_BG6_Full_ROM_Backup\current_super_meta.bin", "rb") as f:
    data = f.read()

# Android LP metadata starts at offset 4096 (0x1000) with magic 0x616c4467 ('gDla')
# Geometry is at 0x1000, Primary Header is at 0x3000
for off in range(0, len(data) - 4, 4):
    magic = struct.unpack_from("<I", data, off)[0]
    if magic == 0x414C5030:  # '0PLA' LP_METADATA_HEADER_MAGIC
        print(f"Found LP Metadata Header at offset 0x{off:x}")
        major, minor, hdr_size = struct.unpack_from("<HHI", data, off + 4)
        # Table descriptors start at off + 44:
        # partitions, extents, groups, block_devices (each 12 bytes: offset, num_entries, entry_size)
        p_off, p_num, p_sz = struct.unpack_from("<III", data, off + 44)
        e_off, e_num, e_sz = struct.unpack_from("<III", data, off + 56)
        print(f"  Partitions: {p_num} (entry_size={p_sz}), Extents: {e_num} (entry_size={e_sz})")
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
            print(f"  Partition [{i}] '{name}': num_ext={num_ext}, first_ext={first_ext}")
            for ei in range(first_ext, first_ext + num_ext):
                ns, tt, td, ts = extents[ei]
                print(f"    Extent {ei}: start_sector={td} (byte_offset=0x{td*512:x} = {td*512}), length_sectors={ns} ({ns*512:,} bytes)")
