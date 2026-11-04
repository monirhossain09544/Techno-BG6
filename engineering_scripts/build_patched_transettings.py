import zipfile, struct, hashlib, zlib, sys

sys.stdout.reconfigure(encoding='utf-8')
orig_apk = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
out_apk = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings_locale.apk'

z_in = zipfile.ZipFile(orig_apk, 'r')

def replace_exact(buf, offset, old_hex, new_hex, desc):
    old_b = bytes.fromhex(old_hex)
    new_b = bytes.fromhex(new_hex)
    assert len(old_b) == len(new_b), f"{desc}: length mismatch"
    actual = bytes(buf[offset:offset+len(old_b)])
    assert actual == old_b, f"{desc} at {hex(offset)}: expected {old_hex}, got {actual.hex()}"
    buf[offset:offset+len(new_b)] = new_b
    print(f"[OK] Patched {desc} at {hex(offset)}")

def update_dex_hashes(buf, name):
    sha1 = hashlib.sha1(buf[32:]).digest()
    buf[12:32] = sha1
    chk = zlib.adler32(buf[12:]) & 0xffffffff
    struct.pack_into('<I', buf, 8, chk)
    print(f"[OK] Updated {name} SHA-1={sha1.hex()} and Adler32={hex(chk)}")

def patch_words(dex_buf, code_off, word_idx, expected, replacement, label):
    pos = code_off + 16 + word_idx * 2
    actual = list(struct.unpack_from(f'<{len(expected)}H', dex_buf, pos))
    assert actual == list(expected), f"{label}: expected {[hex(x) for x in expected]}, got {[hex(x) for x in actual]}"
    struct.pack_into(f'<{len(replacement)}H', dex_buf, pos, *replacement)
    print(f"[OK] Patched {label} at {hex(pos)}")

# ==============================================================================
# 1. PATCH classes.dex IN-PLACE
# ==============================================================================
dex = bytearray(z_in.read('classes.dex'))
orig_dex_len = len(dex)

# 1A. ManageApplications.onCreateView (co=0x51d5dc): bypass null app_bar_container and return rootView (this.t)
replace_exact(
    dex, 0x51d72c,
    '5b45d6d26e1083490500',
    '5b45d6d25444e9d21104',
    'ManageApplications.onCreateView null-safe return'
)

# 1B. ManageApplications.onMenuItemActionCollapse (co=0x51d764) & Expand (co=0x51d790): nop AppBarLayout.setExpanded
replace_exact(
    dex, 0x51d764 + 16,
    '5412d6d212006e30b5e50200',
    '5412d6d21200000000000000',
    'ManageApplications.onMenuItemActionCollapse nop setExpanded'
)
replace_exact(
    dex, 0x51d790 + 16,
    '5412d6d212006e30b5e50200',
    '5412d6d21200000000000000',
    'ManageApplications.onMenuItemActionExpand nop setExpanded'
)

# 1C. SettingsActivity.isValidFragment (co=0x4d2cb4): return true (1210 0f00)
replace_exact(
    dex, 0x4d2cb4 + 16,
    '12050150',
    '12100f00',
    'SettingsActivity.isValidFragment return true'
)

# 1D. Repurpose AppLocalePreferenceController.TAG (field 0xd1f3) to hold active AppInfoDashboardFragment (type 0x21ce)
replace_exact(
    dex, 0xe39dc,
    '391df327cd720000',
    '391dce21cd720000',
    'Field 0xd1f3 type_idx -> AppInfoDashboardFragment (0x21ce)'
)
replace_exact(
    dex, 0x1a73d4 + 28,
    '39798300',
    '00000000',
    'AppLocalePreferenceController static_values_off -> 0'
)
replace_exact(
    dex, 0x811d47,
    '1a',
    '09',
    'Field 0xd1f3 access_flags -> 0x09 (public static)'
)
replace_exact(
    dex, 0x5124c8 + 16,
    '5b01e9d16e20cee601005401e9d16e10cfe601000c015b01e7d10e00',
    '5b01e9d16e20cee601006901f3d16e10cfe601000c015b01e7d10e00',
    'AppInfoPreferenceControllerBase.setParentFragment -> sput-object v1, 0xd1f3'
)
replace_exact(
    dex, 0x512368 + 16 + 42,
    '5433e9d1',
    '6203f3d1',
    'AppInfoPreferenceControllerBase.handlePreferenceTreeClick -> sget-object v3, 0xd1f3'
)
replace_exact(
    dex, 0x512b6c + 16,
    '5420a2e35421e9d16e10cfe60100',
    '5420a2e36201f3d16e10cfe60100',
    'AppLocalePreferenceController.canDisplayLocaleUi -> sget-object v1, 0xd1f3'
)
replace_exact(
    dex, 0x512d0c + 16,
    '5410a2e35411e9d16e10cfe60100',
    '5410a2e36201f3d16e10cfe60100',
    'AppLocalePreferenceController.getSummary -> sget-object v1, 0xd1f3'
)
replace_exact(
    dex, 0x512ba4 + 16,
    '6e10fd9504000c04543082e171200d4004000a041200390403000f005434e9d1380444002204f0005430a2e31c01be207030b10504015430e9d16e10cfe600000c0054004adb5400e2002201f527701011f901001a02f7f16e201df921006e201df901006e103bf901000c007110043c00000c006e20f40504005430e9d16e10cfe600000c0054004adb5200e7001b01da1401006e30db0514005433a2e36e209505430012130f036203f3d11a0436da7120b24043000f00',
    '6e10fd9504000c04543082e171200d4004000a041200390403000f006204f3d1380444002204f0005430a2e31c01be207030b10504016200f3d16e10cfe600000c0054004adb5400e2002201f527701011f901001a02f7f16e201df921006e201df901006e103bf901000c007110043c00000c006e20f40504006200f3d16e10cfe600000c0054004adb5200e7001b01da1401006e30db0514005433a2e36e209505430012130f0300000000000000000000000000000f00',
    'AppLocalePreferenceController.handlePreferenceTreeClick -> sget-object 0xd1f3'
)

# 1E. AlarmsAndRemindersDetailPreferenceController (co=0x50e2f0 & 0x50e3b4): use 0xd1f3 and PackageInfo.packageName (0x00ef)
replace_exact(
    dex, 0x50e2f0 + 16,
    '5440e9d1',
    '6200f3d1',
    'AlarmsAndRemindersDetailPreferenceController.isCandidate -> sget-object v0, 0xd1f3'
)
replace_exact(
    dex, 0x50e2f0 + 16 + 36,
    '544485d1',
    '5404ef00',
    'AlarmsAndRemindersDetailPreferenceController.isCandidate -> iget-object v4, v0, PackageInfo.packageName'
)
replace_exact(
    dex, 0x50e3b4 + 16 + 4,
    '5411e9d1',
    '6201f3d1',
    'AlarmsAndRemindersDetailPreferenceController.getPreferenceSummary -> sget-object v1, 0xd1f3'
)

# 1F. AppVersionPreferenceController.getSummary (co=0x5141a8): use 0xd1f3
replace_exact(
    dex, 0x5141a8 + 16,
    '5460e9d1',
    '6200f3d1',
    'AppVersionPreferenceController.getSummary (1) -> sget-object v0, 0xd1f3'
)
replace_exact(
    dex, 0x5141a8 + 16 + 52,
    '5465e9d1',
    '6205f3d1',
    'AppVersionPreferenceController.getSummary (2) -> sget-object v5, 0xd1f3'
)
replace_exact(
    dex, 0x5141a8 + 16 + 72,
    '5465e9d1',
    '6205f3d1',
    'AppVersionPreferenceController.getSummary (3) -> sget-object v5, 0xd1f3'
)
replace_exact(
    dex, 0x5141a8 + 16 + 92,
    '5466e9d1',
    '6206f3d1',
    'AppVersionPreferenceController.getSummary (4) -> sget-object v6, 0xd1f3'
)

# 1G. FontWeightAdjustmentPreferenceController.getAvailabilityStatus (co=0x4ec0dc): return 0 (AVAILABLE)
replace_exact(
    dex, 0x4ec0dc + 16,
    '12300f00',
    '12000f00',
    'FontWeightAdjustmentPreferenceController.getAvailabilityStatus -> 0'
)

# 1H. AppStateLocaleBridge$1.filterApp (Ld/a/c/n1/x$a;->filterApp, co=0x501ecc): check instanceof Boolean before cast
replace_exact(
    dex, 0x501ecc + 16,
    '54324fdb390211006202f1df54334adb5433e2001a004f831a017785714010f6302112020f021f02c1276e109df702000a020f02',
    '54324fdb2020c12739000f000000000000000000000000000000000000000000000012020f021f02c1276e109df702000a020f02',
    'AppStateLocaleBridge$1.filterApp instanceof Boolean'
)

assert len(dex) == orig_dex_len
update_dex_hashes(dex, 'classes.dex')

# ==============================================================================
# 1H_2. PATCH classes2.dex IN-PLACE (SIM Calling, VoLTE, VoWiFi, ViLTE, Backup Calling, Contact Discovery)
# ==============================================================================
dex2 = bytearray(z_in.read('classes2.dex'))
orig_dex2_len = len(dex2)

patch_words(dex2, 0x1d1684, 0, [0x206e, 0x2bc0, 0x0043], [0x0012, 0x000f, 0x0000], "WifiCallingPreferenceController->getAvailabilityStatus")
patch_words(dex2, 0x1c0210, 0, [0x2070, 0x28e5, 0x0032], [0x0012, 0x000f, 0x0000], "BackupCallingPreferenceController->getAvailabilityStatus")
patch_words(dex2, 0x1d0fdc, 0, [0x1071, 0x0df3, 0x0005], [0x1012, 0x000f, 0x0000], "VideoCallingPreferenceController->isVideoCallEnabled")
patch_words(dex2, 0x1c122c, 0, [0x1154, 0x0788], [0x0012, 0x000f], "ContactDiscoveryPreferenceController->getAvailabilityStatus")
# Enhanced4gBasePreferenceController->getAvailabilityStatus: deduplicate 4G Calling (mode 0 -> 0 AVAILABLE, mode 1 -> 2 UNAVAILABLE)
patch_words(
    dex2, 0x1c5068, 0,
    [0x7054, 0xe48b, 0x1071, 0x93eb, 0x0000, 0x000c, 0x2072, 0x93e7, 0x0080],
    [0x106e, 0x2a17, 0x0007, 0x000a, 0x00e0, 0x0100, 0x000f, 0x0000, 0x0000],
    "Enhanced4gBasePreferenceController->getAvailabilityStatus (deduplicated 4G Calling)"
)

assert len(dex2) == orig_dex2_len
update_dex_hashes(dex2, 'classes2.dex')

# ==============================================================================
# 1I. PATCH classes3.dex IN-PLACE
# ==============================================================================
dex3 = bytearray(z_in.read('classes3.dex'))
orig_dex3_len = len(dex3)

# HighPowerAppsController.getAvailabilityStatus (co=0x113a90): return 0 (AVAILABLE)
replace_exact(
    dex3, 0x113a90 + 16,
    '541164fc',
    '12000f00',
    'HighPowerAppsController.getAvailabilityStatus -> 0'
)

# AppInfoDashboardFragment.shouldShowAccessRestrictedSettings (co=0x1158b8): show whenever noteOpNoThrow != MODE_ALLOWED (0)
replace_exact(
    dex3, 0x1158b8 + 16 + 48,
    '33140300',
    '38040300',
    'AppInfoDashboardFragment.shouldShowAccessRestrictedSettings -> if-eqz v4'
)

# PackageManagerDelegation.getDefaulCalendarPackageNameAsUser (co=0x113bb8): return null instead of "" so tran_default_calendar is used
replace_exact(
    dex3, 0x113bb8 + 16 + 58,
    '1a050000',
    '12050000',
    'PackageManagerDelegation.getDefaulCalendarPackageNameAsUser -> return null'
)

# PackageManagerDelegation.setDefaulCalendarPackageNameAsUser (co=0x113b08): return true (1) instead of false (0)
replace_exact(
    dex3, 0x113b08 + 16 + 54,
    '1a067a191a07cb667120ca0476000f04',
    '12140f04000000000000000000000000',
    'PackageManagerDelegation.setDefaulCalendarPackageNameAsUser -> return true'
)

# NetworkOptimization & SIM 4.5G / National Roaming (excluding 5G options per user preference)
patch_words(dex3, 0xcd984, 39, [0x206e, 0x07ac, 0x0010], [0x0000, 0x0000, 0x0000], "NetworkOptimization->checkSmartSwitchPreference (smart_switch_data)")
patch_words(dex3, 0xcd984, 66, [0x206e, 0x07ac, 0x0040], [0x0000, 0x0000, 0x0000], "NetworkOptimization->checkSmartSwitchPreference (tran_data_smooth)")
patch_words(dex3, 0xcd5f4, 99, [0x206e, 0x07ac, 0x0010], [0x0000, 0x0000, 0x0000], "NetworkOptimization->checkAndUpdateAdaKeys (tran_smart_switch_key)")
patch_words(dex3, 0xcd5f4, 162, [0x206e, 0x07ac, 0x0010], [0x0000, 0x0000, 0x0000], "NetworkOptimization->checkAndUpdateAdaKeys (tran_bandwidth_alloc)")
patch_words(dex3, 0xcd5f4, 177, [0x206e, 0x07ac, 0x0010], [0x0000, 0x0000, 0x0000], "NetworkOptimization->checkAndUpdateAdaKeys (tran_multi_link_key)")
patch_words(dex3, 0xcd5f4, 393, [0x206e, 0x07ac, 0x0010], [0x0000, 0x0000, 0x0000], "NetworkOptimization->checkAndUpdateAdaKeys (mobile_data_always_online)")
patch_words(dex3, 0xcb4b0, 0, [0x3054, 0x4ecd], [0x0012, 0x000f], "EnableImsPreferenceController->getAvailabilityStatus (Enable 4.5G)")
patch_words(dex3, 0xe201c, 0, [0x2054, 0x5158], [0x0012, 0x000f], "TranNationalRoamingPreferenceController->getAvailabilityStatus")

assert len(dex3) == orig_dex3_len
update_dex_hashes(dex3, 'classes3.dex')

# ==============================================================================
# 1J. PATCH classes4.dex IN-PLACE (APP Booster / QuickStartMananger Lj/a/k;)
# ==============================================================================
dex4 = bytearray(z_in.read('classes4.dex'))
orig_dex4_len = len(dex4)

# Lj/a/b;->run (0x168770): return-void at word 0..1 (keep tries=4 intact)
dex4[0x168770 + 16 : 0x168770 + 20] = bytes.fromhex('0e000000')

# Lj/a/k;->f (getNum at 0x169c9c): const/4 v7, 7; return v7 at word 0..5 (keep tries=2 intact)
dex4[0x169c9c + 16 : 0x169c9c + 28] = bytes.fromhex('12770f070000000000000000')

# Lj/a/k;->a (unselect pkg at 0x16a0d4, 34 words, tries=0): remove pkg from Settings.Global "value"
jak_a = bytes.fromhex(
    '54444f94'         # iget-object v4, v4, this.a
    '6e10d10004000c04' # v4 = v4.getContentResolver()
    '1a01fb57'         # const-string v1, "value"
    '71200a0414000c00' # v0 = Settings.Global.getString(v4, v1)
    '38000b00'         # if-eqz v0, +11 (lands on 0e00 at word 23 = 0x17)
    '1a020000'         # const-string v2, ""
    '6e30d83650020c00' # v0 = v0.replace(v5, v2)
    '71300d041400'     # Settings.Global.putString(v4, v1, v0)
    '0e00'             # return-void
    + '0000' * 10
)
assert len(jak_a) == 34 * 2
dex4[0x16a0d4 + 16 : 0x16a0d4 + 16 + 34 * 2] = jak_a

# Lj/a/k;->g (select pkg at 0x16a128, 34 words, tries=0): append pkg + "," to Settings.Global "value"
jak_g = bytes.fromhex(
    '54444f94'         # iget-object v4, v4, this.a
    '6e10d10004000c04' # v4 = v4.getContentResolver()
    '1a01fb57'         # const-string v1, "value"
    '71200a0414000c00' # v0 = Settings.Global.getString(v4, v1)
    '22027d0a7020ec360200' # v2 = new StringBuilder(v0)
    '6e20f5365200'     # v2.append(v5)
    '1a037a016e20f5363200' # v2.append(",")
    '6e10fb3602000c00' # v0 = v2.toString()
    '71300d041400'     # Settings.Global.putString(v4, v1, v0)
    '0e00'             # return-void
    + '0000' * 1
)
assert len(jak_g) == 34 * 2
dex4[0x16a128 + 16 : 0x16a128 + 16 + 34 * 2] = jak_g

# Lj/a/k;->e (getSelectedPkgList at 0x169f18): words 17..48 (32 words), keep words 49..62 intact, words 63..88 = nop (26 words)
jak_e_17_48 = bytes.fromhex(
    '1a03fb57'         # const-string v3, "value"
    '71200a0432000c03' # v3 = Settings.Global.getString(v2, v3)
    '38030f00'         # if-eqz v3, +15
    '1a047a01'         # const-string v4, ","
    '6e20d93643000c03' # v3 = v3.split(v4)
    '7110c13703000c03' # v3 = Arrays.asList(v3)
    '6e20b4373100'     # v1.addAll(v3)
    + '0000' * 11
)
assert len(jak_e_17_48) == 32 * 2
dex4[0x169f18 + 16 + 17 * 2 : 0x169f18 + 16 + 49 * 2] = jak_e_17_48
dex4[0x169f18 + 16 + 63 * 2 : 0x169f18 + 16 + 89 * 2] = b'\x00\x00' * 26

# Lj/a/k;->d (getUnSelectedPkgList at 0x169de0): words 17..48 (32 words), keep words 49..62 intact, words 63..88 = remove selected (26 words)
jak_d_17_48 = bytes.fromhex(
    '1a03b04b'         # const-string v3, "package"
    '71200a0432000c03' # v3 = Settings.Global.getString(v2, v3)
    '38030f00'         # if-eqz v3, +15
    '1a047a01'         # const-string v4, ","
    '6e20d93643000c03' # v3 = v3.split(v4)
    '7110c13703000c03' # v3 = Arrays.asList(v3)
    '6e20b4373100'     # v1.addAll(v3)
    + '0000' * 11
)
jak_d_63_88 = bytes.fromhex(
    '1a03fb57'         # const-string v3, "value"
    '71200a0432000c03' # v3 = Settings.Global.getString(v2, v3)
    '38031400'         # if-eqz v3, +20
    '1a047a01'         # const-string v4, ","
    '6e20d93643000c03' # v3 = v3.split(v4)
    '2134'             # array-length v4, v3
    '1205'             # const/4 v5, 0
    '35450a00'         # if-ge v5, v4, +10
    '46060305'         # aget-object v6, v3, v5
    '6e20bc376100'     # v1.remove(v6)
    'd8050501'         # add-int/lit8 v5, v5, 1
    '28f7'             # goto -9
)
assert len(jak_d_17_48) == 32 * 2
assert len(jak_d_63_88) == 26 * 2
dex4[0x169de0 + 16 + 17 * 2 : 0x169de0 + 16 + 49 * 2] = jak_d_17_48
dex4[0x169de0 + 16 + 49 * 2 : 0x169de0 + 16 + 51 * 2] = bytes.fromhex('280e0000') # goto +14 -> word 63
dex4[0x169de0 + 16 + 58 * 2 : 0x169de0 + 16 + 60 * 2] = bytes.fromhex('281f0000') # goto +31 -> word 89
dex4[0x169de0 + 16 + 63 * 2 : 0x169de0 + 16 + 89 * 2] = jak_d_63_88

# Check if-eqz v5 BEFORE calling getAppIcon (b) in both d() and e()
dex4[0x169de0 + 16 + 110 * 2 : 0x169de0 + 16 + 116 * 2] = bytes.fromhex('3805efff6e20dc3549000c06')
dex4[0x169f18 + 16 + 110 * 2 : 0x169f18 + 16 + 116 * 2] = bytes.fromhex('3805efff6e20dc3549000c06')

# Avoid duplicate rebuidDisplayList() in AdvancedSettingsActivity.onCreate (onResume already calls it)
replace_exact(
    dex4, 0x16924c + 16 + 80 * 2,
    '6e10bd390300',
    '000000000000',
    'AdvancedSettingsActivity.onCreate skip redundant rebuidDisplayList()'
)

# Wi-Fi Preferences, Smart Wi-Fi, Hotspot 2.0 (Passpoint) & Unisoc National Roaming
patch_words(dex4, 0x1084c8, 16, [0x0071, 0x0bc8, 0x0000, 0x020a], [0x1212, 0x0000, 0x0000, 0x0000], "WifiAssistantPreferenceController->displayPreference")
patch_words(dex4, 0x1085d8, 29, [0x0071, 0x0bc8, 0x0000, 0x000a], [0x1012, 0x0000, 0x0000, 0x0000], "WifiAssistantPreferenceController->updateState")
patch_words(dex4, 0x12dbb8, 38, [0x0071, 0x0bc8, 0x0000, 0x000a], [0x1012, 0x0000, 0x0000, 0x0000], "TranWifiAssistantNotifiyPreferenceController->updateState")
patch_words(dex4, 0x101cac, 9, [0x0071, 0x0bf3, 0x0000, 0x010a], [0x1112, 0x0000, 0x0000, 0x0000], "ConfigureWifiSettings->onCreate (smart_wifi)")
patch_words(dex4, 0x108034, 166, [0x0071, 0x0bc8, 0x0000, 0x010a], [0x0112, 0x0000, 0x0000, 0x0000], "WifiAdvancedOption->onCreate (hotspot_2 isMtk -> false)")
patch_words(dex4, 0x108034, 184, [0x0138, 0x001f], [0x0000, 0x0000], "WifiAdvancedOption->onCreate (hotspot_2 country)")

assert len(dex4) == orig_dex4_len
update_dex_hashes(dex4, 'classes4.dex')

# ==============================================================================
# 2. AXML PATCHER HELPERS
# ==============================================================================
def parse_axml(data):
    sp_type, sp_hdr_size, sp_size, str_cnt, style_cnt, flags, str_off, style_off = struct.unpack_from('<HHIIIIII', data, 8)
    strings = []
    for i in range(str_cnt):
        off = 8 + str_off + struct.unpack_from('<I', data, 36 + i * 4)[0]
        u16_len = data[off]; off += 1
        if u16_len & 0x80: off += 1
        u8_len = data[off]; off += 1
        if u8_len & 0x80: u8_len = ((u8_len & 0x7f) << 8) | data[off]; off += 1
        strings.append(data[off:off+u8_len].decode('utf-8'))
    pos = 8 + sp_size
    ctype, chdr, csize = struct.unpack_from('<HHI', data, pos)
    assert ctype == 0x0180
    res_ids = [struct.unpack_from('<I', data, pos + 8 + i*4)[0] for i in range((csize - 8)//4)]
    xml_body = bytearray(data[pos + csize:])
    return flags, strings, res_ids, xml_body

def add_attr_res(strings, res_ids, xml_body, attr_name, attr_res_id):
    if attr_name in strings[:len(res_ids)]:
        return strings.index(attr_name)
    old_res_len = len(res_ids)
    strings.insert(old_res_len, attr_name)
    res_ids.append(attr_res_id)
    def shift_idx(val):
        if val != 0xffffffff and val >= old_res_len:
            return val + 1
        return val
    pos = 0
    while pos < len(xml_body):
        ctype, chdr, csize = struct.unpack_from('<HHI', xml_body, pos)
        if ctype in (0x0100, 0x0101, 0x0103):
            p1, p2 = struct.unpack_from('<II', xml_body, pos + 16)
            struct.pack_into('<II', xml_body, pos + 16, shift_idx(p1), shift_idx(p2))
        elif ctype == 0x0102:
            ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', xml_body, pos + 16)
            struct.pack_into('<II', xml_body, pos + 16, shift_idx(ns), shift_idx(name))
            apos = pos + 16 + attr_start
            for _ in range(attr_cnt):
                ans, aname, araw, asz, r0, atype, adata = struct.unpack_from('<IIIHBBI', xml_body, apos)
                ans = shift_idx(ans)
                aname = shift_idx(aname)
                araw = shift_idx(araw)
                if atype == 3:
                    adata = shift_idx(adata)
                struct.pack_into('<IIIHBBI', xml_body, apos, ans, aname, araw, asz, r0, atype, adata)
                apos += attr_size
        pos += csize
    return old_res_len

def build_axml(flags, strings, res_ids, xml_body):
    offsets = []
    pool_bytes = bytearray()
    for s in strings:
        u16_len = len(s)
        b = s.encode('utf-8')
        u8_len = len(b)
        assert u16_len < 0x80 and u8_len < 0x80
        offsets.append(len(pool_bytes))
        pool_bytes.append(u16_len)
        pool_bytes.append(u8_len)
        pool_bytes.extend(b)
        pool_bytes.append(0)
    while len(pool_bytes) % 4 != 0:
        pool_bytes.append(0)
    str_cnt = len(strings)
    str_off = 28 + str_cnt * 4
    sp_size = str_off + len(pool_bytes)
    sp_chunk = bytearray(struct.pack('<HHIIIIII', 0x0001, 28, sp_size, str_cnt, 0, flags, str_off, 0))
    for o in offsets:
        sp_chunk.extend(struct.pack('<I', o))
    sp_chunk.extend(pool_bytes)

    res_size = 8 + len(res_ids) * 4
    res_chunk = bytearray(struct.pack('<HHI', 0x0180, 8, res_size))
    for r in res_ids:
        res_chunk.extend(struct.pack('<I', r))

    total_size = 8 + len(sp_chunk) + len(res_chunk) + len(xml_body)
    out = bytearray(struct.pack('<II', 0x00080003, total_size))
    out.extend(sp_chunk)
    out.extend(res_chunk)
    out.extend(xml_body)
    return bytes(out)

def make_start_element(name_idx, attrs, line=50):
    csize = 36 + len(attrs) * 20
    buf = bytearray(struct.pack('<HHIIIIIHHHHHH', 0x0102, 16, csize, line, 0xffffffff, 0xffffffff, name_idx, 20, 20, len(attrs), 0, 0, 0))
    for ans, aname, araw, atype, adata in attrs:
        buf.extend(struct.pack('<IIIHBBI', ans, aname, araw, 8, 0, atype, adata))
    return buf

def make_end_element(name_idx, line=51):
    return bytearray(struct.pack('<HHIIIII', 0x0103, 16, 24, line, 0xffffffff, 0xffffffff, name_idx))

def ensure_str(strings, s):
    if s not in strings:
        strings.append(s)
    return strings.index(s)

# ==============================================================================
# 2A. PATCH res/xml/app_management.xml
# ==============================================================================
flags, strings, res_ids, xml_body = parse_axml(z_in.read('res/xml/app_management.xml'))
add_attr_res(strings, res_ids, xml_body, 'summary', 0x010101e9)

ns_android = strings.index('http://schemas.android.com/apk/res/android')
ns_app = strings.index('http://schemas.android.com/apk/res-auto')
idx_pref = strings.index('Preference')
idx_extra = strings.index('extra')
idx_intent = strings.index('intent')
idx_name = strings.index('name')       # res 0x01010003
idx_value = strings.index('value')     # res 0x01010024
idx_action = strings.index('action')   # res 0x0101002d
idx_title = strings.index('title')     # res 0x010101e1
idx_key = strings.index('key')         # res 0x010101e8
idx_summary = strings.index('summary') # res 0x010101e9
idx_order = strings.index('order')     # res 0x010101ea
idx_frag = strings.index('fragment')   # res 0x010102e3
idx_ctrl = strings.index('controller') # res 0x7f040160
idx_classname = strings.index('classname')

# 1) Custom Default Apps (Gallery, Music, Calendar)
idx_custom_def_key = ensure_str(strings, 'custom_default_apps')
idx_custom_def_title = ensure_str(strings, 'Default Gallery, Music & Calendar')
idx_custom_def_sum = ensure_str(strings, 'Choose default Gallery, Music and Calendar apps')
idx_custom_def_frag = ensure_str(strings, 'com.transsion.settings.applications.defaultapps.DefaultAppSettings')

# 2) App Languages (Per-App Language)
idx_app_locale = ensure_str(strings, 'app_locale')
idx_aosp_manage_apps = ensure_str(strings, 'com.android.settings.applications.manageapplications.ManageApplications')
idx_manage_locale_ctrl = ensure_str(strings, 'com.android.settings.applications.appinfo.ManageAppLocalePreferenceController')
idx_app_locale_details = ensure_str(strings, 'com.android.settings.applications.appinfo.AppLocaleDetails')

# 3) Unused apps (HibernatedAppsPreferenceController)
idx_hib_key = ensure_str(strings, 'hibernated_apps')
idx_hib_ctrl = ensure_str(strings, 'com.android.settings.applications.HibernatedAppsPreferenceController')
idx_hib_act = ensure_str(strings, 'android.intent.action.MANAGE_UNUSED_APPS')

# 4) APP Booster (Quick Start / Preload Apps)
idx_boost_key = ensure_str(strings, 'tran_app_booster')
idx_boost_act = ensure_str(strings, 'android.settings.APPBOOTSERB')

nodes_app_mgmt = bytearray()

# Node 1: Default Gallery, Music & Calendar
nodes_app_mgmt.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, idx_custom_def_title, 3, idx_custom_def_title),
    (ns_android, idx_key, idx_custom_def_key, 3, idx_custom_def_key),
    (ns_android, idx_summary, idx_custom_def_sum, 3, idx_custom_def_sum),
    (ns_android, idx_order, 0xffffffff, 16, 0xffffff4d),
    (ns_android, idx_frag, idx_custom_def_frag, 3, idx_custom_def_frag),
]))
nodes_app_mgmt.extend(make_end_element(idx_pref))

# Node 2: App Languages
nodes_app_mgmt.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f120266),
    (ns_android, idx_key, idx_app_locale, 3, idx_app_locale),
    (ns_android, idx_order, 0xffffffff, 16, 0xffffff4e),
    (ns_android, idx_frag, idx_aosp_manage_apps, 3, idx_aosp_manage_apps),
    (ns_app, idx_ctrl, idx_manage_locale_ctrl, 3, idx_manage_locale_ctrl),
]))
nodes_app_mgmt.extend(make_start_element(idx_extra, [
    (ns_android, idx_name, idx_classname, 3, idx_classname),
    (ns_android, idx_value, idx_app_locale_details, 3, idx_app_locale_details),
]))
nodes_app_mgmt.extend(make_end_element(idx_extra))
nodes_app_mgmt.extend(make_end_element(idx_pref))

# Node 3: Unused apps
nodes_app_mgmt.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f1219b8),
    (ns_android, idx_key, idx_hib_key, 3, idx_hib_key),
    (ns_android, idx_summary, 0xffffffff, 1, 0x7f1216c7),
    (ns_android, idx_order, 0xffffffff, 16, 0xffffff4f),
    (ns_app, idx_ctrl, idx_hib_ctrl, 3, idx_hib_ctrl),
]))
nodes_app_mgmt.extend(make_start_element(idx_intent, [
    (ns_android, idx_action, idx_hib_act, 3, idx_hib_act),
]))
nodes_app_mgmt.extend(make_end_element(idx_intent))
nodes_app_mgmt.extend(make_end_element(idx_pref))

# Node 4: APP Booster
nodes_app_mgmt.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f120299),
    (ns_android, idx_key, idx_boost_key, 3, idx_boost_key),
    (ns_android, idx_summary, 0xffffffff, 1, 0x7f12074d),
    (ns_android, idx_order, 0xffffffff, 16, 0xffffff50),
]))
nodes_app_mgmt.extend(make_start_element(idx_intent, [
    (ns_android, idx_action, idx_boost_act, 3, idx_boost_act),
]))
nodes_app_mgmt.extend(make_end_element(idx_intent))
nodes_app_mgmt.extend(make_end_element(idx_pref))

idx_restr = strings.index('com.android.settingslib.RestrictedPreference')
pos = 0
insert_pos = None
while pos < len(xml_body):
    ctype, chdr, csize = struct.unpack_from('<HHI', xml_body, pos)
    if ctype == 0x0103:
        ns, name = struct.unpack_from('<II', xml_body, pos + 16)
        if name == idx_restr:
            insert_pos = pos + csize
            break
    pos += csize
assert insert_pos is not None
xml_body[insert_pos:insert_pos] = nodes_app_mgmt
patched_app_mgmt = build_axml(flags, strings, res_ids, xml_body)
print(f"[OK] Patched res/xml/app_management.xml ({len(patched_app_mgmt)} bytes)")

# ==============================================================================
# 2B. PATCH res/xml/tran_app_info_settings.xml
# ==============================================================================
flags, strings, res_ids, xml_body = parse_axml(z_in.read('res/xml/tran_app_info_settings.xml'))
add_attr_res(strings, res_ids, xml_body, 'enableCopying', 0x7f0401cc)

ns_android = strings.index('http://schemas.android.com/apk/res/android')
ns_app = strings.index('http://schemas.android.com/apk/res-auto')
idx_pref = strings.index('Preference')
idx_title = strings.index('title')     # res 0x010101e1
idx_sel = strings.index('selectable')  # res 0x010101e6
idx_key = strings.index('key')         # res 0x010101e8
idx_summary = strings.index('summary') # res 0x010101e9
idx_order = strings.index('order')     # res 0x010101ea
idx_div_above = strings.index('allowDividerAbove') # res 0x7f040048
idx_ctrl = strings.index('controller') # res 0x7f040160
idx_copy = strings.index('enableCopying') # res 0x7f0401cc

idx_app_lang_key = ensure_str(strings, 'app_language_setting')
idx_app_locale_ctrl = ensure_str(strings, 'com.android.settings.applications.appinfo.AppLocalePreferenceController')

idx_alarms_key = ensure_str(strings, 'alarms_and_reminders')
idx_alarms_ctrl = ensure_str(strings, 'com.android.settings.applications.appinfo.AlarmsAndRemindersDetailPreferenceController')

idx_ver_key = ensure_str(strings, 'app_version')
idx_ver_ctrl = ensure_str(strings, 'com.android.settings.applications.appinfo.AppVersionPreferenceController')

node_app_info_extra = bytearray()
# Language (Per-App Language)
node_app_info_extra.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f120265),
    (ns_android, idx_key, idx_app_lang_key, 3, idx_app_lang_key),
    (ns_android, idx_summary, 0xffffffff, 1, 0x7f1216c7),
    (ns_app, idx_ctrl, idx_app_locale_ctrl, 3, idx_app_locale_ctrl),
]))
node_app_info_extra.extend(make_end_element(idx_pref))

# Alarms & reminders
node_app_info_extra.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f1201eb),
    (ns_android, idx_key, idx_alarms_key, 3, idx_alarms_key),
    (ns_android, idx_summary, 0xffffffff, 1, 0x7f1216c7),
    (ns_app, idx_ctrl, idx_alarms_ctrl, 3, idx_alarms_ctrl),
]))
node_app_info_extra.extend(make_end_element(idx_pref))

# Insert Language and Alarms & reminders right after <Preference key="battery" ...></Preference>
idx_battery = strings.index('battery')
pos = 0
insert_pos = None
found_battery = False
while pos < len(xml_body):
    ctype, chdr, csize = struct.unpack_from('<HHI', xml_body, pos)
    if ctype == 0x0102:
        ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', xml_body, pos + 16)
        apos = pos + 16 + attr_start
        for _ in range(attr_cnt):
            ans, aname, aval_str, _, _, aval_type, aval_data = struct.unpack_from('<IIIHBBI', xml_body, apos)
            if aval_type == 3 and aval_str == idx_battery:
                found_battery = True
            apos += attr_size
    elif ctype == 0x0103 and found_battery:
        insert_pos = pos + csize
        break
    pos += csize
assert insert_pos is not None
xml_body[insert_pos:insert_pos] = node_app_info_extra

# Insert AppVersionPreferenceController right after <Preference key="app_settings_link" ...></Preference>
node_app_ver = bytearray()
node_app_ver.extend(make_start_element(idx_pref, [
    (ns_android, idx_sel, 0xffffffff, 18, 0),
    (ns_android, idx_key, idx_ver_key, 3, idx_ver_key),
    (ns_android, idx_order, 0xffffffff, 16, 0x270f),
    (ns_app, idx_div_above, 0xffffffff, 18, 0xffffffff),
    (ns_app, idx_ctrl, idx_ver_ctrl, 3, idx_ver_ctrl),
    (ns_app, idx_copy, 0xffffffff, 18, 0xffffffff),
]))
node_app_ver.extend(make_end_element(idx_pref))

idx_settings_link = strings.index('app_settings_link')
pos = 0
insert_ver_pos = None
found_link = False
while pos < len(xml_body):
    ctype, chdr, csize = struct.unpack_from('<HHI', xml_body, pos)
    if ctype == 0x0102:
        ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', xml_body, pos + 16)
        apos = pos + 16 + attr_start
        for _ in range(attr_cnt):
            ans, aname, aval_str, _, _, aval_type, aval_data = struct.unpack_from('<IIIHBBI', xml_body, apos)
            if aval_type == 3 and aval_str == idx_settings_link:
                found_link = True
            apos += attr_size
    elif ctype == 0x0103 and found_link:
        insert_ver_pos = pos + csize
        break
    pos += csize
assert insert_ver_pos is not None
xml_body[insert_ver_pos:insert_ver_pos] = node_app_ver

patched_tran_app_info = build_axml(flags, strings, res_ids, xml_body)
print(f"[OK] Patched res/xml/tran_app_info_settings.xml ({len(patched_tran_app_info)} bytes)")

# ==============================================================================
# 2C. PATCH res/xml/special_access.xml
# ==============================================================================
flags, strings, res_ids, xml_body = parse_axml(z_in.read('res/xml/special_access.xml'))
ns_android = strings.index('http://schemas.android.com/apk/res/android')
idx_pref = strings.index('Preference')
idx_extra = strings.index('extra')
idx_name = strings.index('name')       # res 0x01010003
idx_value = strings.index('value')     # res 0x01010024
idx_title = strings.index('title')     # res 0x010101e1
idx_key = strings.index('key')         # res 0x010101e8
idx_frag = strings.index('fragment')   # res 0x010102e3
idx_classname = strings.index('classname')
idx_tran_manage_apps = strings.index('com.transsion.settings.applications.manageapplications.ManageApplications')

idx_media_key = ensure_str(strings, 'media_management_apps')
idx_media_cls = ensure_str(strings, 'com.android.settings.Settings$MediaManagementAppsActivity')

idx_alarms_key = ensure_str(strings, 'alarms_and_reminders')
idx_alarms_cls = ensure_str(strings, 'com.android.settings.Settings$AlarmsAndRemindersActivity')

idx_turn_key = ensure_str(strings, 'turn_screen_on')
idx_turn_frag = ensure_str(strings, 'com.android.settings.applications.specialaccess.turnscreenon.TurnScreenOnSettings')

nodes_special = bytearray()
# 1) Media management apps
nodes_special.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f120e89),
    (ns_android, idx_key, idx_media_key, 3, idx_media_key),
    (ns_android, idx_frag, idx_tran_manage_apps, 3, idx_tran_manage_apps),
]))
nodes_special.extend(make_start_element(idx_extra, [
    (ns_android, idx_name, idx_classname, 3, idx_classname),
    (ns_android, idx_value, idx_media_cls, 3, idx_media_cls),
]))
nodes_special.extend(make_end_element(idx_extra))
nodes_special.extend(make_end_element(idx_pref))

# 2) Alarms & reminders
nodes_special.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f1201eb),
    (ns_android, idx_key, idx_alarms_key, 3, idx_alarms_key),
    (ns_android, idx_frag, idx_tran_manage_apps, 3, idx_tran_manage_apps),
]))
nodes_special.extend(make_start_element(idx_extra, [
    (ns_android, idx_name, idx_classname, 3, idx_classname),
    (ns_android, idx_value, idx_alarms_cls, 3, idx_alarms_cls),
]))
nodes_special.extend(make_end_element(idx_extra))
nodes_special.extend(make_end_element(idx_pref))

# 3) Turn screen on
nodes_special.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f121970),
    (ns_android, idx_key, idx_turn_key, 3, idx_turn_key),
    (ns_android, idx_frag, idx_turn_frag, 3, idx_turn_frag),
]))
nodes_special.extend(make_end_element(idx_pref))

# Insert right after <Preference key="picture_in_picture" ...></Preference>
idx_pip = strings.index('picture_in_picture')
pos = 0
insert_spec_pos = None
found_pip = False
while pos < len(xml_body):
    ctype, chdr, csize = struct.unpack_from('<HHI', xml_body, pos)
    if ctype == 0x0102:
        ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', xml_body, pos + 16)
        apos = pos + 16 + attr_start
        for _ in range(attr_cnt):
            ans, aname, aval_str, _, _, aval_type, aval_data = struct.unpack_from('<IIIHBBI', xml_body, apos)
            if aval_type == 3 and aval_str == idx_pip:
                found_pip = True
            apos += attr_size
    elif ctype == 0x0103 and found_pip:
        insert_spec_pos = pos + csize
        break
    pos += csize
assert insert_spec_pos is not None
xml_body[insert_spec_pos:insert_spec_pos] = nodes_special

patched_special_access = build_axml(flags, strings, res_ids, xml_body)
print(f"[OK] Patched res/xml/special_access.xml ({len(patched_special_access)} bytes)")

# ==============================================================================
# 2D. PATCH res/xml/language_and_input.xml
# ==============================================================================
flags, strings, res_ids, xml_body = parse_axml(z_in.read('res/xml/language_and_input.xml'))
add_attr_res(strings, res_ids, xml_body, 'name', 0x01010003)
add_attr_res(strings, res_ids, xml_body, 'value', 0x01010024)

ns_android = strings.index('http://schemas.android.com/apk/res/android')
ns_app = strings.index('http://schemas.android.com/apk/res-auto')
idx_pref = strings.index('Preference')
idx_title = strings.index('title')
idx_key = strings.index('key')
idx_frag = strings.index('fragment')
idx_ctrl = strings.index('controller')
idx_name = strings.index('name')
idx_value = strings.index('value')

idx_extra = ensure_str(strings, 'extra')
idx_classname = ensure_str(strings, 'classname')
idx_app_locale = ensure_str(strings, 'app_locale')
idx_aosp_manage_apps = ensure_str(strings, 'com.android.settings.applications.manageapplications.ManageApplications')
idx_manage_locale_ctrl = ensure_str(strings, 'com.android.settings.applications.appinfo.ManageAppLocalePreferenceController')
idx_app_locale_details = ensure_str(strings, 'com.android.settings.applications.appinfo.AppLocaleDetails')

node_lang_locale = bytearray()
node_lang_locale.extend(make_start_element(idx_pref, [
    (ns_android, idx_title, 0xffffffff, 1, 0x7f120266),
    (ns_android, idx_key, idx_app_locale, 3, idx_app_locale),
    (ns_android, idx_frag, idx_aosp_manage_apps, 3, idx_aosp_manage_apps),
    (ns_app, idx_ctrl, idx_manage_locale_ctrl, 3, idx_manage_locale_ctrl),
]))
node_lang_locale.extend(make_start_element(idx_extra, [
    (ns_android, idx_name, idx_classname, 3, idx_classname),
    (ns_android, idx_value, idx_app_locale_details, 3, idx_app_locale_details),
]))
node_lang_locale.extend(make_end_element(idx_extra))
node_lang_locale.extend(make_end_element(idx_pref))

idx_phone_lang = strings.index('phone_language')
pos = 0
insert_pos = None
found_phone_lang = False
while pos < len(xml_body):
    ctype, chdr, csize = struct.unpack_from('<HHI', xml_body, pos)
    if ctype == 0x0102:
        ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', xml_body, pos + 16)
        apos = pos + 16 + attr_start
        for _ in range(attr_cnt):
            ans, aname, aval_str, _, _, aval_type, aval_data = struct.unpack_from('<IIIHBBI', xml_body, apos)
            if aval_type == 3 and aval_str == idx_phone_lang:
                found_phone_lang = True
            apos += attr_size
    elif ctype == 0x0103 and found_phone_lang:
        insert_pos = pos + csize
        break
    pos += csize
assert insert_pos is not None
xml_body[insert_pos:insert_pos] = node_lang_locale
patched_lang_input = build_axml(flags, strings, res_ids, xml_body)
print(f"[OK] Patched res/xml/language_and_input.xml ({len(patched_lang_input)} bytes)")

# ==============================================================================
# 3. WRITE ALIGNED TranSettings_locale.apk
# ==============================================================================
replacements = {
    'classes.dex': bytes(dex),
    'classes2.dex': bytes(dex2),
    'classes3.dex': bytes(dex3),
    'classes4.dex': bytes(dex4),
    'res/xml/app_management.xml': patched_app_mgmt,
    'res/xml/tran_app_info_settings.xml': patched_tran_app_info,
    'res/xml/special_access.xml': patched_special_access,
    'res/xml/language_and_input.xml': patched_lang_input,
}

with open(out_apk, 'wb') as f_out:
    with zipfile.ZipFile(f_out, 'w') as z_out:
        for info in z_in.infolist():
            data = replacements.get(info.filename, z_in.read(info.filename))
            new_info = zipfile.ZipInfo(info.filename, date_time=info.date_time)
            new_info.compress_type = info.compress_type
            new_info.external_attr = info.external_attr
            new_info.create_system = info.create_system
            if info.compress_type == zipfile.ZIP_STORED:
                f_out.flush()
                cur_offset = f_out.tell()
                fn_len = len(new_info.filename.encode('utf-8'))
                data_start = cur_offset + 30 + fn_len
                pad = (4 - (data_start % 4)) % 4
                new_info.extra = b'\x00' * pad
            else:
                new_info.extra = b''
            z_out.writestr(new_info, data)

print(f"[OK] Wrote {out_apk}")
