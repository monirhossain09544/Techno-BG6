import zipfile, struct, sys

sys.stdout.reconfigure(encoding='utf-8')
apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')

# 1. Check compression type of all files in TranSettings.apk
for info in z.infolist():
    if info.filename in ['classes.dex', 'classes2.dex', 'classes3.dex', 'resources.arsc',
                         'res/xml/app_management.xml', 'res/xml/language_and_input.xml',
                         'res/xml/tran_app_info_settings.xml', 'res/xml/apps.xml', 'res/xml/app_info_settings.xml']:
        print(f"{info.filename}: compress_type={info.compress_type}, file_size={info.file_size}, header_offset={info.header_offset}")

# 2. Check classes.dex byte patterns for our fixes
dex1 = z.read('classes.dex')

# Pattern 1: ManageApplications.onCreateView (co = 0x51d5dc)
co_oncreate = 0x51d5dc
regs, ins, outs, tries, dbg, insns_sz = struct.unpack_from('<HHHHII', dex1, co_oncreate)
print(f"\nManageApplications.onCreateView: regs={regs}, ins={ins}, outs={outs}, tries={tries}, insns_sz={insns_sz}")
bytecode_oncreate = dex1[co_oncreate+16 : co_oncreate+16+insns_sz*2]
print("Last 32 bytes of onCreateView:", bytecode_oncreate[-32:].hex())
idx_pat1 = bytecode_oncreate.find(bytes.fromhex('5b45d6d26e1083490500'))
print("idx_pat1 in onCreateView:", idx_pat1, "abs offset:", hex(co_oncreate + 16 + idx_pat1))

# Pattern 2: ManageApplications.onMenuItemActionCollapse & Expand (6e30b5e50200)
pat2 = bytes.fromhex('5432d6d212006e30b5e50200')
pos = 0
while True:
    idx = dex1.find(pat2, pos)
    if idx == -1: break
    print("Found pat2 (collapse):", hex(idx))
    pos = idx + 1

pat2b = bytes.fromhex('5432d6d212106e30b5e50200')
pos = 0
while True:
    idx = dex1.find(pat2b, pos)
    if idx == -1: break
    print("Found pat2b (expand):", hex(idx))
    pos = idx + 1

# Pattern 3: SettingsActivity.isValidFragment
# Let's search for 12050150 in SettingsActivity
pat3 = bytes.fromhex('120501503351')
pos = 0
while True:
    idx = dex1.find(pat3, pos)
    if idx == -1: break
    print("Found pat3 (isValidFragment):", hex(idx))
    pos = idx + 1

# Pattern 4: Check AppLocalePreferenceController in classes.dex and AppInfoDashboardFragment in classes3.dex
dex3 = z.read('classes3.dex')
co_onattach3 = 0x115f24
regs3, ins3, outs3, tries3, dbg3, insns_sz3 = struct.unpack_from('<HHHHII', dex3, co_onattach3)
print(f"\nclasses3 AppInfoDashboardFragment.onAttach: regs={regs3}, ins={ins3}, outs={outs3}, tries={tries3}, insns_sz={insns_sz3}")
bc_onattach3 = dex3[co_onattach3+16 : co_onattach3+16+insns_sz3*2]
print("onAttach3 hex:", bc_onattach3.hex())
