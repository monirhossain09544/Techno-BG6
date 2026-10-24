import struct

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\dtbo.img', 'rb') as f:
    dtbo = bytearray(f.read())

# Entry 5 in dt_table
base = 32 + 5 * 32
dt_size, dt_offset, dt_id, dt_rev = struct.unpack('>IIII', dtbo[base:base+16])
fdt = bytes(dtbo[dt_offset : dt_offset + dt_size])

magic, totalsize, off_struct, off_strings, off_rsvmap, ver, last_comp_ver, boot_cpuid, size_strings, size_struct = struct.unpack('>10I', fdt[:40])
print(f'Original Entry 5: dt_size={dt_size}, totalsize={totalsize}, off_struct={off_struct}, size_struct={size_struct}, off_strings={off_strings}, size_strings={size_strings}')

struct_block = bytearray(fdt[off_struct : off_struct + size_struct])
strings_block = bytearray(fdt[off_strings : off_strings + size_strings])

def get_str(off):
    end = strings_block.index(b'\x00', off)
    return strings_block[off:end].decode('ascii', 'ignore')

# 1. Append psensor_function and gesture_function to strings_block (+36 bytes total)
ps_off = len(strings_block)
strings_block.extend(b'psensor_function\x00')
gs_off = len(strings_block)
strings_block.extend(b'gesture_function\x00')
strings_block.extend(b'\x00\x00') # 2 bytes padding -> +36 bytes total
assert len(strings_block) - size_strings == 36

# 2. Walk struct_block to find:
#    a) End of properties in /fragment/__overlay__/tran_touch
#    b) The dummy_timing0 property in /__symbols__
pos = 0
path = []
tran_touch_insert_pos = None
dummy_timing_span = None

while pos < len(struct_block):
    tag_pos = pos
    tag, = struct.unpack('>I', struct_block[pos:pos+4])
    pos += 4
    if tag == 1: # FDT_BEGIN_NODE
        end = struct_block.index(b'\x00', pos)
        name = struct_block[pos:end].decode('ascii', 'ignore')
        pos = (end + 1 + 3) & ~3
        path.append(name)
    elif tag == 2: # FDT_END_NODE
        if '/'.join(path) == '/fragment/__overlay__/tran_touch':
            tran_touch_insert_pos = tag_pos
        path.pop()
    elif tag == 3: # FDT_PROP
        plen, nameoff = struct.unpack('>II', struct_block[pos:pos+8])
        pname = get_str(nameoff)
        next_pos = pos + 8 + ((plen + 3) & ~3)
        if '/'.join(path) == '/__symbols__' and pname == 'dummy_timing0':
            dummy_timing_span = (tag_pos, next_pos)
        pos = next_pos
    elif tag == 4: # FDT_NOP
        pass
    elif tag == 9: # FDT_END
        break
    else:
        raise ValueError(f'Unknown tag {tag} at {tag_pos}')

print('tran_touch_insert_pos:', tran_touch_insert_pos)
print('dummy_timing_span:', dummy_timing_span, 'size:', dummy_timing_span[1] - dummy_timing_span[0])
assert dummy_timing_span[1] - dummy_timing_span[0] == 84
assert tran_touch_insert_pos < dummy_timing_span[0]

# Replace dummy_timing0 (84 bytes) with 4 FDT_NOPs (16 bytes) -> -68 bytes
nop_bytes = struct.pack('>4I', 4, 4, 4, 4)
struct_block[dummy_timing_span[0] : dummy_timing_span[1]] = nop_bytes

# Insert psensor_function=<1> (16 bytes) + 4 FDT_NOPs (16 bytes) = 32 bytes at tran_touch_insert_pos
new_props = (
    struct.pack('>IIII', 3, 4, ps_off, 1) +
    struct.pack('>IIII', 4, 4, 4, 4)
)
struct_block[tran_touch_insert_pos : tran_touch_insert_pos] = new_props

new_size_struct = len(struct_block)
new_off_strings = off_struct + new_size_struct
new_size_strings = len(strings_block)
new_totalsize = new_off_strings + new_size_strings

print(f'Patched Entry 5: totalsize={new_totalsize}, off_struct={off_struct}, size_struct={new_size_struct}, off_strings={new_off_strings}, size_strings={new_size_strings}')
assert new_totalsize == totalsize == dt_size

new_header = struct.pack('>10I', magic, new_totalsize, off_struct, new_off_strings, off_rsvmap, ver, last_comp_ver, boot_cpuid, new_size_strings, new_size_struct)
new_fdt = new_header + fdt[40:off_struct] + bytes(struct_block) + bytes(strings_block)
assert len(new_fdt) == dt_size

# Verify by walking the entire new_fdt!
pos = off_struct
path = []
tran_touch_props = {}
node_count = 0
prop_count = 0
while pos < off_struct + new_size_struct:
    tag, = struct.unpack('>I', new_fdt[pos:pos+4])
    pos += 4
    if tag == 1:
        end = new_fdt.index(b'\x00', pos)
        name = new_fdt[pos:end].decode('ascii', 'ignore')
        pos = (end + 1 + 3) & ~3
        path.append(name)
        node_count += 1
    elif tag == 2:
        path.pop()
    elif tag == 3:
        plen, nameoff = struct.unpack('>II', new_fdt[pos:pos+8])
        end_s = new_fdt.index(b'\x00', new_off_strings + nameoff)
        pname = new_fdt[new_off_strings + nameoff : end_s].decode('ascii', 'ignore')
        val = new_fdt[pos+8 : pos+8+plen]
        pos += 8 + ((plen + 3) & ~3)
        prop_count += 1
        if '/'.join(path) == '/fragment/__overlay__/tran_touch':
            tran_touch_props[pname] = val
    elif tag == 4:
        pass
    elif tag == 9:
        break
    else:
        raise ValueError(f'Invalid tag {tag}')

print(f'Verified new_fdt: {node_count} nodes, {prop_count} props')
print('tran_touch props:', tran_touch_props)

dtbo[dt_offset : dt_offset + dt_size] = new_fdt
out_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\dtbo_patched.img'
with open(out_path, 'wb') as f:
    f.write(dtbo)
print('Successfully wrote:', out_path, 'len:', len(dtbo))
