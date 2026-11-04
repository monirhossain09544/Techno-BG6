import struct

for name in ["logo.img", "fbootlogo.img"]:
    path = rf"D:\Tecno_BG6_Full_ROM_Backup\{name}"
    with open(path, "rb") as f:
        data = f.read()
    print(f"=== {name} ({len(data):,} bytes) ===")
    print("Header 64 bytes:", data[:64])
    print("Header hex:", data[:64].hex())
    # Find all 'BM' (BMP) or PNG or GZIP headers
    pos = 0
    bmps = []
    while True:
        idx = data.find(b"BM", pos)
        if idx == -1:
            break
        if idx + 54 <= len(data):
            bfSize, bfRes, bfOffBits, biSize, biWidth, biHeight, biPlanes, biBitCount = struct.unpack_from("<IIIIiiHH", data, idx + 2)
            if biSize == 40 and 0 < biWidth <= 2000 and 0 < abs(biHeight) <= 3000 and biBitCount in (8, 16, 24, 32):
                bmps.append((idx, bfSize, biWidth, biHeight, biBitCount, bfOffBits))
        pos = idx + 2
    print(f"Found {len(bmps)} BMP images:")
    for b in bmps:
        print(f"  offset={b[0]} ({b[0]:#x}), size={b[1]:,}, {b[2]}x{b[3]}, {b[4]}bpp, offBits={b[5]}")
