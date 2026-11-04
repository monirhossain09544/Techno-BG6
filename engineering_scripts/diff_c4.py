import zipfile, struct

orig_apk = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
out_apk = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings_locale.apk'

d_orig = zipfile.ZipFile(orig_apk).read('classes4.dex')
d_new = zipfile.ZipFile(out_apk).read('classes4.dex')

print("len orig:", len(d_orig), "len new:", len(d_new))
# find all byte ranges that differ
diffs = []
in_diff = False
start = 0
for i in range(len(d_orig)):
    if d_orig[i] != d_new[i]:
        if not in_diff:
            in_diff = True
            start = i
    else:
        if in_diff:
            in_diff = False
            diffs.append((start, i))
if in_diff:
    diffs.append((start, len(d_orig)))

for s, e in diffs:
    print(f"Diff 0x{s:x}..0x{e:x} (len={e-s}):")
    print(f"  orig: {d_orig[s:min(e, s+32)].hex()}")
    print(f"  new : {d_new[s:min(e, s+32)].hex()}")
