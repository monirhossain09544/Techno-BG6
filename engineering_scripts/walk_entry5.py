import struct

def parse_fdt(fdt):
    magic, totalsize, off_struct, off_strings, off_rsvmap, ver, last_comp_ver, boot_cpuid, size_strings, size_struct = struct.unpack('>10I', fdt[:40])
    pos = off_struct
    path = []
    props = {}
    while pos < off_struct + size_struct:
        tag, = struct.unpack('>I', fdt[pos:pos+4])
        pos += 4
        if tag == 1:
            end = fdt.index(b'\x00', pos)
            name = fdt[pos:end].decode('ascii', 'ignore')
            pos = (end + 1 + 3) & ~3
            path.append(name)
        elif tag == 2:
            path.pop()
        elif tag == 3:
            plen, nameoff = struct.unpack('>II', fdt[pos:pos+8])
            end_s = fdt.index(b'\x00', off_strings + nameoff)
            pname = fdt[off_strings + nameoff : end_s].decode('ascii', 'ignore')
            val = fdt[pos+8 : pos+8+plen]
            pos += 8 + ((plen + 3) & ~3)
            props['/'.join(path) + '/' + pname] = val
        elif tag == 4:
            pass
        elif tag == 9:
            break
    return props

def get_entry5(path):
    with open(path, 'rb') as f:
        data = f.read()
    base = 32 + 5 * 32
    dt_size, dt_offset = struct.unpack('>II', data[base:base+8])
    return parse_fdt(data[dt_offset:dt_offset+dt_size])

pa = get_entry5("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/dtbo_a.img")
pb = get_entry5("C:/Users/Monir/.gemini/antigravity/brain/3958b605-423b-42d2-aef1-c01e0058e64f/scratch/dtbo_b.img")

for k in sorted(set(pa.keys()) | set(pb.keys())):
    if pa.get(k) != pb.get(k):
        print(f"Prop diff: {k}")
        print(f"  dtbo_a: {pa.get(k).hex() if pa.get(k) is not None else None}")
        print(f"  dtbo_b: {pb.get(k).hex() if pb.get(k) is not None else None}")
