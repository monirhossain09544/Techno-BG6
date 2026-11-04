import struct

data = open(r'D:\Tecno_BG6_Full_ROM_Backup\vendor_boot_a.img', 'rb').read()
off = 24043584
totalsize, off_dt_struct, off_dt_strings = struct.unpack_from('>III', data, off + 4)[:3]
s_base = off + off_dt_strings
p = off + off_dt_struct
path = []

while p < off + totalsize:
    tag = struct.unpack_from('>I', data, p)[0]
    p += 4
    if tag == 1:
        end = data.find(b'\x00', p)
        name = data[p:end].decode('latin1')
        p = off + ((end + 1 - off + 3) & ~3)
        path.append(name)
        cur = '/'.join(path)
        if any(k in cur for k in ['dpu', 'dsi', 'dphy', 'panel', 'lcd', 'backlight']):
            print(f"\nNODE: {cur}")
    elif tag == 2:
        if path: path.pop()
    elif tag == 3:
        plen, nameoff = struct.unpack_from('>II', data, p)
        p += 8
        val = data[p:p+plen]
        p = off + ((p - off + plen + 3) & ~3)
        end = data.find(b'\x00', s_base + nameoff)
        pname = data[s_base + nameoff:end].decode('latin1')
        cur = '/'.join(path)
        if any(k in cur for k in ['dpu', 'dsi', 'dphy', 'panel', 'lcd', 'backlight']):
            if plen == 0:
                print(f"  {pname};")
            elif plen == 4:
                v = struct.unpack('>I', val)[0]
                print(f"  {pname} = <0x{v:x}> ({v});")
            elif all(32 <= b < 127 or b == 0 for b in val) and val.endswith(b'\x00'):
                print(f"  {pname} = {[x.decode('latin1') for x in val[:-1].split(b'\x00')]};")
            else:
                print(f"  {pname} = [{plen} bytes] {val[:32].hex()};")
    elif tag == 9:
        break
