import zipfile, struct, sys

sys.stdout.reconfigure(encoding='utf-8')
apk_path = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk'
z = zipfile.ZipFile(apk_path, 'r')

def load_dex(name):
    d = z.read(name)
    str_cnt, str_off = struct.unpack_from('<II', d, 56)
    type_cnt, type_off = struct.unpack_from('<II', d, 64)
    proto_cnt, proto_off = struct.unpack_from('<II', d, 72)
    field_cnt, field_off = struct.unpack_from('<II', d, 80)
    meth_cnt, meth_off = struct.unpack_from('<II', d, 88)
    cls_cnt, cls_off = struct.unpack_from('<II', d, 96)
    
    def get_str(idx):
        off = struct.unpack_from('<I', d, str_off + idx * 4)[0]
        pos = off
        shift = 0; res = 0
        while True:
            b = d[pos]; pos += 1
            res |= (b & 0x7f) << shift
            if not (b & 0x80): break
            shift += 7
        end = d.find(b'\x00', pos)
        return d[pos:end].decode('utf-8', 'ignore')

    def get_type(idx):
        return get_str(struct.unpack_from('<I', d, type_off + idx * 4)[0])

    def get_meth(idx):
        ci, pi, ni = struct.unpack_from('<HHI', d, meth_off + idx * 8)
        return f"{get_type(ci)}->{get_str(ni)}"

    def get_field(idx):
        ci, ti, ni = struct.unpack_from('<HHI', d, field_off + idx * 8)
        return f"{get_type(ci)}->{get_str(ni)}:{get_type(ti)}"

    def read_uleb(pos):
        res = 0; shift = 0
        while True:
            b = d[pos]; pos += 1
            res |= (b & 0x7f) << shift
            if not (b & 0x80): break
            shift += 7
        return res, pos

    def dump_class_methods(target_cls_desc):
        for i in range(cls_cnt):
            c_idx, _, _, _, _, _, c_data_off, _ = struct.unpack_from('<IIIIIIII', d, cls_off + i * 32)
            if get_type(c_idx) == target_cls_desc:
                pos = c_data_off
                sf, pos = read_uleb(pos)
                if_cnt, pos = read_uleb(pos)
                dm, pos = read_uleb(pos)
                vm, pos = read_uleb(pos)
                for _ in range(sf + if_cnt):
                    _, pos = read_uleb(pos); _, pos = read_uleb(pos)
                for kind, cnt in [('direct', dm), ('virtual', vm)]:
                    m_idx = 0
                    for _ in range(cnt):
                        diff, pos = read_uleb(pos); m_idx += diff
                        acc, pos = read_uleb(pos)
                        co, pos = read_uleb(pos)
                        if co:
                            regs, ins, outs, tries, dbg, sz = struct.unpack_from('<HHHHII', d, co)
                            bc = d[co+16:co+16+sz*2].hex()
                            print(f"  [{kind}] {get_meth(m_idx)} co={hex(co)} sz={sz} regs={regs} ins={ins} bc={bc}")
                        else:
                            print(f"  [{kind}] {get_meth(m_idx)} abstract/native")

    return d, get_str, get_type, get_meth, get_field, dump_class_methods

d1, s1, t1, m1, f1, dump1 = load_dex('classes.dex')
print("=== ManageApplications in classes.dex ===")
dump1('Lcom/android/settings/applications/manageapplications/ManageApplications;')

print("\n=== SettingsActivity in classes.dex ===")
dump1('Lcom/android/settings/SettingsActivity;')

print("\n=== AppLocalePreferenceController in classes.dex ===")
dump1('Lcom/android/settings/applications/appinfo/AppLocalePreferenceController;')

print("\n=== AppInfoPreferenceControllerBase in classes.dex ===")
dump1('Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;')
