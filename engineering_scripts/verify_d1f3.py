import zipfile, struct

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')
d1 = z.read('classes.dex')

field_cnt, field_off = struct.unpack_from('<II', d1, 80)
cls_cnt, cls_off = struct.unpack_from('<II', d1, 96)

# Check field 0xd1f3
f_pos = field_off + 0xd1f3 * 8
ci, ti, ni = struct.unpack_from('<HHI', d1, f_pos)
print(f"Field 0xd1f3 at {hex(f_pos)}: ci={hex(ci)}, ti={hex(ti)}, ni={hex(ni)}")

# Check if 0xd1f3 is referenced anywhere else in classes.dex
pat = struct.pack('<H', 0xd1f3)
pos = 0
while True:
    idx = d1.find(pat, pos)
    if idx == -1: break
    print(f"0xd1f3 bytes found at {hex(idx)}: context={d1[idx-2:idx+6].hex()}")
    pos = idx + 1

# Check class_def_item of AppLocalePreferenceController (ci = 0x1d39)
def read_uleb(pos):
    res = 0; shift = 0
    while True:
        b = d1[pos]; pos += 1
        res |= (b & 0x7f) << shift
        if not (b & 0x80): break
        shift += 7
    return res, pos

for i in range(cls_cnt):
    c_pos = cls_off + i * 32
    c_idx, acc, sup, intf, src, ann, c_data_off, stat_val_off = struct.unpack_from('<IIIIIIII', d1, c_pos)
    if c_idx == 0x1d39:
        print(f"AppLocalePreferenceController class_def at {hex(c_pos)}: c_data_off={hex(c_data_off)}, stat_val_off={hex(stat_val_off)}")
        pos = c_data_off
        sf, pos = read_uleb(pos); if_cnt, pos = read_uleb(pos); dm, pos = read_uleb(pos); vm, pos = read_uleb(pos)
        print(f"sf={sf}, if_cnt={if_cnt}, dm={dm}, vm={vm}")
        f_idx = 0
        for _ in range(sf):
            diff, pos = read_uleb(pos); f_idx += diff
            acc_pos = pos
            f_acc, pos = read_uleb(pos)
            print(f"  static field {hex(f_idx)} acc at {hex(acc_pos)}..{hex(pos)} = {hex(f_acc)} (raw={d1[acc_pos:pos].hex()})")
