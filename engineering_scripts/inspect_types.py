import zipfile, struct, sys
from inspect_dex_methods import load_dex

d1, s1, t1, m1, f1, dump1 = load_dex('classes.dex')
d3, s3, t3, m3, f3, dump3 = load_dex('classes3.dex')

print("classes.dex meth 0xe6ce:", m1(0xe6ce))
print("classes.dex meth 0xe6cf:", m1(0xe6cf))
print("classes.dex field 0xd1e9:", f1(0xd1e9))
print("classes.dex field 0xd1e7:", f1(0xd1e7))

# Check all types in classes3.dex matching AppLocale or AppInfo
type_cnt3, type_off3 = struct.unpack_from('<II', d3, 64)
for i in range(type_cnt3):
    tn = t3(i)
    if 'AppLocale' in tn or 'AppInfo' in tn:
        print(f"classes3 type {hex(i)}: {tn}")
