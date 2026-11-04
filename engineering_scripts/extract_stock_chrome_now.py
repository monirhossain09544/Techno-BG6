import struct
import lz4.block
from extract_from_erofs_product import ErofsReader

Z_EROFS_ADVISE_COMPACTED_2B = 0x0001
Z_EROFS_ADVISE_BIG_PCLUSTER_1 = 0x0002
Z_EROFS_ADVISE_BIG_PCLUSTER_2 = 0x0004
Z_EROFS_ADVISE_INLINE_PCLUSTER = 0x0008
Z_EROFS_ADVISE_INTERLACED_PCLUSTER = 0x0010
Z_EROFS_ADVISE_FRAGMENT_PCLUSTER = 0x0020

Z_EROFS_LCLUSTER_TYPE_PLAIN = 0
Z_EROFS_LCLUSTER_TYPE_HEAD1 = 1
Z_EROFS_LCLUSTER_TYPE_NONHEAD = 2
Z_EROFS_LCLUSTER_TYPE_HEAD2 = 3
Z_EROFS_LI_D0_CBLKCNT = 1 << 11

def decode_compactedbits(lobits, lomask, in_bytes, pos):
    byte_off = pos // 8
    v = struct.unpack_from("<I", in_bytes, byte_off)[0] >> (pos & 7)
    lo = v & lomask
    ltype = (v >> lobits) & 3
    return lo, ltype

def unpack_compacted_index(reader, ino, z_advise, lclusterbits, amortizedshift, pos):
    lomask = (1 << lclusterbits) - 1
    if (1 << amortizedshift) == 4 and lclusterbits <= 14:
        vcnt = 2
    elif (1 << amortizedshift) == 2 and lclusterbits == 12:
        vcnt = 16
    else:
        raise ValueError("Unsupported amortizedshift/lclusterbits")

    pack_size = vcnt << amortizedshift
    nextpackoff = (pos // pack_size) * pack_size + pack_size
    big_pcluster = bool(z_advise & Z_EROFS_ADVISE_BIG_PCLUSTER_1)
    encodebits = (pack_size - 4) * 8 // vcnt
    eofs = pos & (reader.blksz - 1)
    base = (eofs // pack_size) * pack_size
    blk_nr = pos // reader.blksz
    mpage = reader.read_at(blk_nr * reader.blksz, reader.blksz)
    in_bytes = mpage[base : base + pack_size]
    i = (eofs - base) >> amortizedshift

    lo, ltype = decode_compactedbits(lclusterbits, lomask, in_bytes, encodebits * i)
    res = {"type": ltype, "nextpackoff": nextpackoff, "compressedblks": 0, "delta0": 0, "clusterofs": 0, "pblk": 0}
    if ltype == Z_EROFS_LCLUSTER_TYPE_NONHEAD:
        res["clusterofs"] = 1 << lclusterbits
        if lo & Z_EROFS_LI_D0_CBLKCNT:
            res["compressedblks"] = lo & ~Z_EROFS_LI_D0_CBLKCNT
            res["delta0"] = 1
            return res
        elif i + 1 != vcnt:
            res["delta0"] = lo
            return res
        lo_prev, ltype_prev = decode_compactedbits(lclusterbits, lomask, in_bytes, encodebits * (i - 1))
        if ltype_prev != Z_EROFS_LCLUSTER_TYPE_NONHEAD:
            lo_prev = 0
        elif lo_prev & Z_EROFS_LI_D0_CBLKCNT:
            lo_prev = 1
        res["delta0"] = lo_prev + 1
        return res

    res["clusterofs"] = lo
    if not big_pcluster:
        nblk = 1
        cur_i = i
        while cur_i > 0:
            cur_i -= 1
            lo_c, lt_c = decode_compactedbits(lclusterbits, lomask, in_bytes, encodebits * cur_i)
            if lt_c == Z_EROFS_LCLUSTER_TYPE_NONHEAD:
                cur_i -= lo_c
            if cur_i >= 0:
                nblk += 1
    else:
        nblk = 0
        cur_i = i
        while cur_i > 0:
            cur_i -= 1
            lo_c, lt_c = decode_compactedbits(lclusterbits, lomask, in_bytes, encodebits * cur_i)
            if lt_c == Z_EROFS_LCLUSTER_TYPE_NONHEAD:
                if lo_c & Z_EROFS_LI_D0_CBLKCNT:
                    cur_i -= 1
                    nblk += lo_c & ~Z_EROFS_LI_D0_CBLKCNT
                    continue
                cur_i -= lo_c - 2
                continue
            nblk += 1
    base_blk = struct.unpack_from("<I", in_bytes, pack_size - 4)[0]
    res["pblk"] = base_blk + nblk
    return res

def load_cluster(reader, ino, ebase, z_advise, lclusterbits, lcn):
    totalidx = (ino["size"] + reader.blksz - 1) // reader.blksz
    compacted_4b_initial = (32 - (ebase % 32)) // 4
    if compacted_4b_initial == 8:
        compacted_4b_initial = 0
    if (z_advise & Z_EROFS_ADVISE_COMPACTED_2B) and compacted_4b_initial < totalidx:
        compacted_2b = ((totalidx - compacted_4b_initial) // 16) * 16
    else:
        compacted_2b = 0

    pos = ebase
    rem_lcn = lcn
    if rem_lcn < compacted_4b_initial:
        amortizedshift = 2
    else:
        pos += compacted_4b_initial * 4
        rem_lcn -= compacted_4b_initial
        if rem_lcn < compacted_2b:
            amortizedshift = 1
        else:
            pos += compacted_2b * 2
            rem_lcn -= compacted_2b
            amortizedshift = 2
    pos += rem_lcn * (1 << amortizedshift)
    res = unpack_compacted_index(reader, ino, z_advise, lclusterbits, amortizedshift, pos)
    res["lcn"] = lcn
    return res

def extract_compressed_file(reader, ino):
    mpos = (ino["inline_pos"] + 7) & ~7
    mh = reader.read_at(mpos, 8)
    h_reserved1, h_idata_size, z_advise, h_alg, h_cbits = struct.unpack("<HHHBB", mh)
    lclusterbits = reader.blkszbits + (h_cbits & 7)
    ebase = mpos + 8
    size = ino["size"]
    ztailpacking = bool(z_advise & Z_EROFS_ADVISE_INLINE_PCLUSTER)

    # Find tail if ztailpacking
    z_tailextent_headlcn = -1
    z_idataoff = 0
    if ztailpacking:
        tail_lcn = (size - 1) >> lclusterbits
        tail_endoff = (size - 1) & ((1 << lclusterbits) - 1)
        m = load_cluster(reader, ino, ebase, z_advise, lclusterbits, tail_lcn)
        z_idataoff = m["nextpackoff"]
        if m["type"] in (Z_EROFS_LCLUSTER_TYPE_PLAIN, Z_EROFS_LCLUSTER_TYPE_HEAD1) and tail_endoff >= m["clusterofs"]:
            z_tailextent_headlcn = m["lcn"]
        else:
            dist = 1 if m["type"] in (Z_EROFS_LCLUSTER_TYPE_PLAIN, Z_EROFS_LCLUSTER_TYPE_HEAD1) else m["delta0"]
            cur_lcn = m["lcn"]
            while True:
                cur_lcn -= dist
                m = load_cluster(reader, ino, ebase, z_advise, lclusterbits, cur_lcn)
                if m["type"] == Z_EROFS_LCLUSTER_TYPE_NONHEAD:
                    dist = m["delta0"]
                else:
                    z_tailextent_headlcn = m["lcn"]
                    break

    out_buf = bytearray(size)
    end = size
    while end > 0:
        ofs = end - 1
        initial_lcn = ofs >> lclusterbits
        endoff = ofs & ((1 << lclusterbits) - 1)
        m = load_cluster(reader, ino, ebase, z_advise, lclusterbits, initial_lcn)
        ext_end = (m["lcn"] + 1) << lclusterbits
        if m["type"] in (Z_EROFS_LCLUSTER_TYPE_PLAIN, Z_EROFS_LCLUSTER_TYPE_HEAD1) and endoff >= m["clusterofs"]:
            headtype = m["type"]
            m_la = (m["lcn"] << lclusterbits) | m["clusterofs"]
            if ztailpacking and ext_end > size:
                ext_end = size
        else:
            if m["type"] in (Z_EROFS_LCLUSTER_TYPE_PLAIN, Z_EROFS_LCLUSTER_TYPE_HEAD1):
                ext_end = (m["lcn"] << lclusterbits) | m["clusterofs"]
                dist = 1
            else:
                dist = m["delta0"]
            cur_lcn = m["lcn"]
            while True:
                cur_lcn -= dist
                m = load_cluster(reader, ino, ebase, z_advise, lclusterbits, cur_lcn)
                if m["type"] == Z_EROFS_LCLUSTER_TYPE_NONHEAD:
                    dist = m["delta0"]
                else:
                    headtype = m["type"]
                    m_la = (m["lcn"] << lclusterbits) | m["clusterofs"]
                    break

        m_llen = ext_end - m_la
        if ztailpacking and m["lcn"] == z_tailextent_headlcn:
            m_pa = z_idataoff
            m_plen = h_idata_size
        else:
            m_pa = m["pblk"] * reader.blksz
            if headtype == Z_EROFS_LCLUSTER_TYPE_PLAIN or not (z_advise & Z_EROFS_ADVISE_BIG_PCLUSTER_1):
                m_plen = 1 << lclusterbits
            else:
                if m["compressedblks"]:
                    cblks = m["compressedblks"]
                else:
                    m_next = load_cluster(reader, ino, ebase, z_advise, lclusterbits, m["lcn"] + 1)
                    if m_next["type"] in (Z_EROFS_LCLUSTER_TYPE_PLAIN, Z_EROFS_LCLUSTER_TYPE_HEAD1):
                        cblks = 1 << (lclusterbits - reader.blkszbits)
                    else:
                        cblks = m_next["compressedblks"]
                m_plen = cblks * reader.blksz

        length = min(end - m_la, m_llen)
        raw = reader.read_at(m_pa, m_plen)
        if headtype == Z_EROFS_LCLUSTER_TYPE_PLAIN:
            if z_advise & Z_EROFS_ADVISE_INTERLACED_PCLUSTER:
                interlaced_off = m_la & (reader.blksz - 1)
                rightpart = min(reader.blksz - interlaced_off, length)
                dec = raw[interlaced_off : interlaced_off + rightpart] + raw[: length - rightpart]
            else:
                dec = raw[:length]
        else:
            # LZ4 with 0padding
            inputmargin = 0
            while inputmargin < len(raw) and raw[inputmargin] == 0:
                inputmargin += 1
                if (inputmargin & (reader.blksz - 1)) == 0:
                    break
            dec = lz4.block.decompress(raw[inputmargin:], uncompressed_size=length)
            dec = dec[:length]

        out_buf[m_la : m_la + length] = dec
        end = m_la

    return bytes(out_buf)

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
            for target, out_path in [
                ("/etc/apns-conf.xml", r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\stock_apns-conf.xml"),
                ("/app/Chrome/Chrome.apk", r"D:\Chrome.apk"),
                ("/app/TrichromeLibrary/TrichromeLibrary.apk", r"D:\TrichromeLibrary.apk"),
            ]:
                print(f"Extracting {target} -> {out_path}...")
                ino = reader.lookup_path(target)
                data = extract_compressed_file(reader, ino)
                with open(out_path, "wb") as of:
                    of.write(data)
                print(f"  Done! Wrote {len(data):,} bytes (magic={data[:4]!r})")
