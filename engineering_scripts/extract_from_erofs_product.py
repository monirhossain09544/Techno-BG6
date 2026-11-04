import struct

class ErofsReader:
    def __init__(self, f, extents):
        self.f = f
        self.extents = []
        logical = 0
        for phys_off, length in extents:
            self.extents.append((logical, length, phys_off))
            logical += length
        sb = self.read_at(1024, 128)
        self.magic, self.cksum, self.feat_compat, self.blkszbits, self.ext_slots, self.root_nid, self.inos, self.build_time, self.build_time_nsec, self.blocks, self.meta_blkaddr, self.xattr_blkaddr = struct.unpack("<IIIBBHQQIIII", sb[:48])
        self.blksz = 1 << self.blkszbits

    def read_at(self, offset, size):
        out = bytearray()
        rem = size
        cur = offset
        while rem > 0:
            for log_start, length, phys_off in self.extents:
                if log_start <= cur < log_start + length:
                    avail = (log_start + length) - cur
                    take = min(rem, avail)
                    if phys_off == 0:
                        out.extend(b"\x00" * take)
                    else:
                        self.f.seek(phys_off + (cur - log_start))
                        out.extend(self.f.read(take))
                    cur += take
                    rem -= take
                    break
            else:
                raise EOFError(f"Offset {cur} out of range")
        return bytes(out)

    def get_inode(self, nid):
        pos = self.meta_blkaddr * self.blksz + nid * 32
        hdr = self.read_at(pos, 64)
        i_format, i_xattr_icount = struct.unpack("<HH", hdr[:4])
        is_extended = (i_format & 1) != 0
        datalayout = (i_format >> 1) & 0x7
        xattr_size = (12 + (i_xattr_icount - 1) * 4) if i_xattr_icount > 0 else 0
        if is_extended:
            i_mode, i_nb, i_size, i_u = struct.unpack("<HIQ", hdr[4:18] + b"\x00\x00")[:3] # wait: let's unpack exact struct erofs_inode_extended
            # struct erofs_inode_extended:
            # __le16 i_format; (0..2)
            # __le16 i_xattr_icount; (2..4)
            # __le16 i_mode; (4..6)
            # __le16 i_nb; (6..8)
            # __le64 i_size; (8..16)
            # __le32 i_u; (16..20)
            # __le32 i_ino; (20..24)
            # __le32 i_uid; (24..28)
            # __le32 i_gid; (28..32)
            # __le64 i_mtime; (32..40)
            # __le32 i_mtime_nsec; (40..44)
            # __le32 i_nlink; (44..48)
            # __u8   i_reserved2[16]; (48..64)
            i_mode, i_nb, i_size, i_u = struct.unpack("<HHQI", hdr[4:20])
            inode_sz = 64
        else:
            # struct erofs_inode_compact:
            # __le16 i_format; (0..2)
            # __le16 i_xattr_icount; (2..4)
            # __le16 i_mode; (4..6)
            # __le16 i_nlink; (6..8)
            # __le32 i_size; (8..12)
            # __le32 i_reserved; (12..16)
            # __le32 i_u; (16..20)
            # __le32 i_ino; (20..24)
            # __le16 i_uid; (24..26)
            # __le16 i_gid; (26..28)
            # __le32 i_reserved2; (28..32)
            i_mode, i_nlink, i_size, i_res, i_u = struct.unpack("<HHIII", hdr[4:20])
            inode_sz = 32
        inline_pos = pos + inode_sz + xattr_size
        return {
            "nid": nid,
            "mode": i_mode,
            "size": i_size,
            "raw_blkaddr": i_u,
            "datalayout": datalayout,
            "inline_pos": inline_pos,
        }

    def read_uncompressed_data(self, ino):
        size = ino["size"]
        dl = ino["datalayout"]
        # 0: EROFS_INODE_FLAT_PLAIN, 2: EROFS_INODE_FLAT_INLINE
        if dl == 0:
            return self.read_at(ino["raw_blkaddr"] * self.blksz, size)
        elif dl == 2:
            nblocks = size // self.blksz
            out = bytearray()
            if nblocks > 0:
                out.extend(self.read_at(ino["raw_blkaddr"] * self.blksz, nblocks * self.blksz))
            tail = size % self.blksz
            if tail > 0:
                out.extend(self.read_at(ino["inline_pos"], tail))
            return bytes(out)
        else:
            raise ValueError(f"Compressed datalayout {dl} for nid={ino['nid']} size={size}")

    def list_dir(self, nid):
        ino = self.get_inode(nid)
        data = self.read_uncompressed_data(ino)
        entries = []
        nblocks = (len(data) + self.blksz - 1) // self.blksz
        for b in range(nblocks):
            blk = data[b * self.blksz : (b + 1) * self.blksz]
            if len(blk) < 12:
                break
            _, first_nameoff, _, _ = struct.unpack("<QHBB", blk[:12])
            num_dirents = first_nameoff // 12
            dirents = []
            for d in range(num_dirents):
                d_nid, d_nameoff, d_type, _ = struct.unpack("<QHBB", blk[d*12 : (d+1)*12])
                dirents.append((d_nid, d_nameoff, d_type))
            for d in range(num_dirents):
                d_nid, d_nameoff, d_type = dirents[d]
                end_off = dirents[d+1][1] if d + 1 < num_dirents else len(blk)
                name = blk[d_nameoff:end_off].rstrip(b"\x00").decode(errors="replace")
                entries.append((name, d_nid, d_type))
        return entries

    def lookup_path(self, path):
        cur = self.root_nid
        for part in [p for p in path.split("/") if p]:
            found = None
            for name, d_nid, d_type in self.list_dir(cur):
                if name == part:
                    found = d_nid
                    break
            if found is None:
                return None
            cur = found
        return self.get_inode(cur)

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
        if pname in ("product_a", "system_a", "vendor_a"):
            exts = []
            for ei in range(first_ext, first_ext + num_ext):
                ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
                num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
                exts.append((t_data * 512 if t_type == 0 else 0, num_sec * 512))
            reader = ErofsReader(f, exts)
            print(f"=== {pname} (root_nid={reader.root_nid}, blksz={reader.blksz}) ===")
            for name_e, d_nid, d_type in reader.list_dir(reader.root_nid):
                if name_e not in (".", ".."):
                    print("  /", name_e)
            for target in ["/app/Chrome/Chrome.apk", "/app/TrichromeLibrary/TrichromeLibrary.apk", "/app/WebViewGoogle/WebViewGoogle.apk", "/etc/apns-conf.xml"]:
                ino = reader.lookup_path(target)
                if ino:
                    print(f"  FOUND {target}: size={ino['size']:,}, datalayout={ino['datalayout']}")
