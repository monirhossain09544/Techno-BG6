import struct, zipfile
from dump_c0b import dex, class_defs_size, class_defs_off, get_type, read_uleb128, get_method, dump_code

for i in range(class_defs_size):
    c_idx, _, _, _, _, _, class_data_off, _ = struct.unpack_from('<IIIIIIII', dex, class_defs_off + i*32)
    if get_type(c_idx) != 'Lo7/c0;': continue
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
        mname = get_method(m_idx)
        if '->x(' in mname or '->w(' in mname or '->k(' in mname:
            dump_code(c_off, mname)
