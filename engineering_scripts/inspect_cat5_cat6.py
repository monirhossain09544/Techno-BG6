import sys, zipfile, subprocess
sys.path.append(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch')
import inspect_remaining_details as ird

z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')

print("=== classes4.dex AppBooster / QuickStart ===")
d4, s4, t4, f4, m4, c4 = ird.parse_dex(z.read('classes4.dex'))
for cname in c4:
    if 'quick' in cname.lower() or 'boost' in cname.lower() or 'turbo' in cname.lower():
        print("classes4 cls:", cname)
        d4(cname)

print("\n=== SpecialAccess XMLs ===")
for name in z.namelist():
    if name.startswith('res/xml/') and any(k in name for k in ['alarm', 'media', 'turn_screen', 'quick', 'boost', 'game', 'special']):
        print(f"\n--- {name} ---")
        ird.dump_axml(z.read(name))
