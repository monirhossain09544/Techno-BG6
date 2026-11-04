import struct, zipfile
from dump_c0b import dex, class_defs_size, class_defs_off, get_type, read_uleb128, get_method, dump_code

for i in range(class_defs_size):
    c_idx, _, _, _, _, _, class_data_off, _ = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    cname = get_type(c_idx)
    if not cname.startswith('Lf9/l$g$a'): continue
    off = class_data_off
    sf, off = read_uleb128(dex, off)
    if_, off = read_uleb128(dex, off)
    dm, off = read_uleb128(dex, off)
    vm, off = read_uleb128(dex, off)
    for _ in range(sf + if_):
        _, off = read_uleb128(dex, off); _, off = read_uleb128(dex, off)
    m_idx = 0
    for _ in range(dm):
        d, off = read_uleb128(dex, off); m_idx += d
        _, off = read_uleb128(dex, off); c_off, off = read_uleb128(dex, off)
        if c_off: dump_code(c_off, get_method(m_idx))
    m_idx = 0
    for _ in range(vm):
        d, off = read_uleb128(dex, off); m_idx += d
        _, off = read_uleb128(dex, off); c_off, off = read_uleb128(dex, off)
        if c_off: dump_code(c_off, get_method(m_idx))
