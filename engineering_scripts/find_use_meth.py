import zipfile, struct, sys

apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')
d1 = z.read('classes.dex')

str_cnt, str_off = struct.unpack_from('<II', d1, 56)
type_cnt, type_off = struct.unpack_from('<II', d1, 64)
field_cnt, field_off = struct.unpack_from('<II', d1, 80)
meth_cnt, meth_off = struct.unpack_from('<II', d1, 88)

def get_str(idx):
    off = struct.unpack_from('<I', d1, str_off + idx * 4)[0]
    pos = off
    while d1[pos] & 0x80: pos += 1
    pos += 1
    end = d1.find(b'\x00', pos)
    return d1[pos:end].decode('utf-8', 'ignore')

def get_type(idx):
    return get_str(struct.unpack_from('<I', d1, type_off + idx * 4)[0])

for i in range(type_cnt):
    tn = get_type(i)
    if 'AppLocalePreferenceController' in tn or 'AppInfoDashboardFragment' in tn or 'DashboardFragment' == tn.split('/')[-1].rstrip(';'):
        print(f"type {hex(i)}: {tn}")

for i in range(meth_cnt):
    ci, pi, ni = struct.unpack_from('<HHI', d1, meth_off + i * 8)
    mn = get_str(ni)
    cn = get_type(ci)
    if mn == 'use' and ('DashboardFragment' in cn or 'AppInfoDashboardFragment' in cn):
        print(f"meth {hex(i)}: {cn}->{mn}")
    if 'AppLocalePreferenceController' in cn or 'AppInfoPreferenceControllerBase' in cn:
        print(f"meth {hex(i)}: {cn}->{mn}")
