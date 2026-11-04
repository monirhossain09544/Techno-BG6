import struct

def dump_fdt(buf, target, filter_keys=None):
    pos = 0
    while True:
        idx = buf.find(b'\xd0\x0d\xfe\xed', pos)
        if idx < 0:
            break
        totalsize, off_struct, off_strings = struct.unpack('>III', buf[idx+4:idx+16])[:3]
        if 0 < totalsize <= len(buf) - idx and target in buf[idx:idx+totalsize]:
            print(f'=== FDT at {idx}, size {totalsize} ===')
            s_base = idx + off_strings
            p = idx + off_struct
            indent = 0
            path = []
            while p < idx + off_strings:
                tag = struct.unpack('>I', buf[p:p+4])[0]
                p += 4
                if tag == 1:
                    end = buf.find(b'\x00', p)
                    name = buf[p:end].decode('latin1')
                    p = idx + ((end - idx + 4) & ~3)
                    path.append(name)
                    full = '/'.join(path)
                    if filter_keys is None or any(k in full for k in filter_keys):
                        print('  ' * indent + name + ' {')
                    indent += 1
                elif tag == 2:
                    indent -= 1
                    full = '/'.join(path)
                    if filter_keys is None or any(k in full for k in filter_keys):
                        print('  ' * indent + '};')
                    if path:
                        path.pop()
                elif tag == 3:
                    plen, nameoff = struct.unpack('>II', buf[p:p+8])
                    p += 8
                    val = buf[p:p+plen]
                    p = idx + ((p - idx + plen + 3) & ~3)
                    end = buf.find(b'\x00', s_base + nameoff)
                    pname = buf[s_base+nameoff:end].decode('latin1')
                    full = '/'.join(path)
                    if filter_keys is None or any(k in full for k in filter_keys):
                        if plen == 0:
                            vstr = 'true'
                        elif plen == 4:
                            u = struct.unpack('>I', val)[0]
                            vstr = f'{u} ({hex(u)})'
                        elif all(32 <= b < 127 or b == 0 for b in val) and val.endswith(b'\x00'):
                            vstr = repr(val[:-1].decode('latin1'))
                        elif plen <= 64 and plen % 4 == 0:
                            vstr = str(struct.unpack(f'>{plen//4}I', val))
                        else:
                            vstr = f'<{plen} bytes: {val[:64].hex()}...>'
                        print('  ' * indent + f'{pname} = {vstr};')
                elif tag == 4:
                    continue
                elif tag == 9:
                    break
                else:
                    print(f'Unknown tag {tag} at {p-4}')
                    break
            break
        pos = idx + 4

print("--- DTBO_A (all display/dpu/dsi/panel nodes) ---")
dump_fdt(open(r'D:\Tecno_BG6_Full_ROM_Backup\dtbo_a.img', 'rb').read(), b'lcd_icnl9916_boe', ['lcd', 'dpu', 'dsi', 'dphy', 'panel', 'dispc'])
