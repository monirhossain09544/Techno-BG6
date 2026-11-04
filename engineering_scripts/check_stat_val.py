import zipfile, struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')
d1 = z.read('classes.dex')

str_cnt, str_off = struct.unpack_from('<II', d1, 56)
type_cnt, type_off = struct.unpack_from('<II', d1, 64)
field_cnt, field_off = struct.unpack_from('<II', d1, 80)
cls_cnt, cls_off = struct.unpack_from('<II', d1, 96)

def get_str(idx):
    off = struct.unpack_from('<I', d1, str_off + idx * 4)[0]
    pos = off
    while d1[pos] & 0x80: pos += 1
    pos += 1
    return d1[pos:d1.find(b'\x00', pos)].decode('utf-8', 'ignore')

def get_type(idx):
    return get_str(struct.unpack_from('<I', d1, type_off + idx * 4)[0])

def read_uleb(pos):
    res = 0; shift = 0
    while True:
        b = d1[pos]; pos += 1
        res |= (b & 0x7f) << shift
        if not (b & 0x80): break
        shift += 7
    return res, pos

print("Bytes at 0x837939:", d1[0x837939:0x837945].hex())

for i in range(cls_cnt):
    c_idx, _, _, _, _, _, c_data_off, stat_off = struct.unpack_from('<IIIIIIII', d1, cls_off + i * 32)
    if not c_data_off: continue
    pos = c_data_off
    sf, pos = read_uleb(pos); if_cnt, pos = read_uleb(pos); dm, pos = read_uleb(pos); vm, pos = read_uleb(pos)
    f_idx = 0
    for _ in range(sf):
        diff, pos = read_uleb(pos); f_idx += diff
        acc, pos = read_uleb(pos)
        ci, ti, ni = struct.unpack_from('<HHI', d1, field_off + f_idx * 8)
        tn = get_type(ti)
        if tn in ['Ljava/lang/Object;', 'Landroidx/fragment/app/Fragment;']:
            print(f"static field {hex(f_idx)} acc={hex(acc)} stat_off={hex(stat_off)}: {get_type(ci)}->{get_str(ni)}:{tn}")
