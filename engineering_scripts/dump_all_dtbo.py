import struct

data = open(r'D:\Tecno_BG6_Full_ROM_Backup\dtbo_a.img', 'rb').read()
pos = 0
while True:
    idx = data.find(b'\xd0\x0d\xfe\xed', pos)
    if idx == -1: break
    pos = idx + 4
    totalsize, off_dt_struct, off_dt_strings = struct.unpack_from('>III', data, idx + 4)[:3]
    if totalsize > len(data) - idx or totalsize < 48: continue
    print(f"=== FDT at {idx} (size {totalsize}) ===")
    s_base = idx + off_dt_strings
    p = idx + off_dt_struct
    path = []
    while p < idx + totalsize:
        tag = struct.unpack_from('>I', data, p)[0]
        p += 4
        if tag == 1:
            end = data.find(b'\x00', p)
            name = data[p:end].decode('latin1')
            p = idx + ((end + 1 - idx + 3) & ~3)
            path.append(name)
        elif tag == 2:
            if path: path.pop()
        elif tag == 3:
            plen, nameoff = struct.unpack_from('>II', data, p)
            p += 8
            val = data[p:p+plen]
            p = idx + ((p - idx + plen + 3) & ~3)
            end = data.find(b'\x00', s_base + nameoff)
            pname = data[s_base + nameoff:end].decode('latin1')
            cur = '/'.join(path)
            if any(k in cur.lower() or k in pname.lower() for k in ['vrr', 'dpu', 'dsi', 'panel', 'icnl9916', 'backlight']):
                if plen == 0:
                    print(f"  {cur}: {pname};")
                elif plen == 4:
                    v = struct.unpack('>I', val)[0]
                    print(f"  {cur}: {pname} = <0x{v:x}> ({v});")
                elif all(32 <= b < 127 or b == 0 for b in val) and val.endswith(b'\x00'):
                    print(f"  {cur}: {pname} = {[x.decode('latin1') for x in val[:-1].split(b'\x00')]};")
                else:
                    print(f"  {cur}: {pname} = [{plen}B] {val[:24].hex()};")
        elif tag == 9:
            break
