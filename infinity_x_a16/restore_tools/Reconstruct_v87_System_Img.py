import hashlib, lzma, os, shutil, struct, sys

EXPECTED_V87_SHA256 = "c8d89dcb8256c372cf0083005b289a978d3f768090d220012a524f66e0eda98e"

def main():
    if len(sys.argv) < 4:
        print("Usage: python Reconstruct_v87_System_Img.py <base_infinity_x_bg6_ready.img_or_.xz> <v87_universal_from_github_v8_exact_delta.bin.xz> <out_v87_system.img>")
        raise SystemExit(1)
    base_p, delta_p, out_p = sys.argv[1], sys.argv[2], sys.argv[3]
    if base_p.endswith(".xz"):
        print("Decompressing base .img.xz ->", out_p)
        with lzma.open(base_p, "rb") as fin, open(out_p, "wb") as fout:
            shutil.copyfileobj(fin, fout, length=8*1024*1024)
    elif os.path.abspath(base_p) != os.path.abspath(out_p):
        shutil.copyfile(base_p, out_p)

    print("Applying v8.7 exact 64KB block delta...")
    with lzma.open(delta_p, "rb") as fd, open(out_p, "r+b") as fo:
        assert fd.read(8) == b"BG6DLT01"
        tot_sz, _ = struct.unpack("<QI", fd.read(12))
        assert os.path.getsize(out_p) == tot_sz
        cnt = 0
        while True:
            off, ln = struct.unpack("<QI", fd.read(12))
            if off == 0xFFFFFFFFFFFFFFFF:
                break
            fo.seek(off)
            fo.write(fd.read(ln))
            cnt += 1
    print(f"Applied {cnt} chunks. Verifying SHA256...")
    h = hashlib.sha256()
    with open(out_p, "rb") as f:
        while b := f.read(8*1024*1024):
            h.update(b)
    got = h.hexdigest()
    print("SHA256:", got)
    assert got == EXPECTED_V87_SHA256, f"SHA256 mismatch: {got} != {EXPECTED_V87_SHA256}"
    print("SUCCESS: 100% byte-for-byte identical v8.7 system_a reconstructed!")

if __name__ == "__main__":
    main()
