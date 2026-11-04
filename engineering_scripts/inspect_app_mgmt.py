import zipfile, struct

apk_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk"

def parse_axml_strings(data):
    # Extract UTF-8 / UTF-16LE strings from binary XML
    import re
    s1 = [x.decode('ascii', 'ignore') for x in re.findall(b'[\x20-\x7e]{3,}', data)]
    s2 = [x.replace(b'\x00', b'').decode('ascii', 'ignore') for x in re.findall(b'(?:[\x20-\x7e]\x00){3,}', data)]
    return sorted(set(s1 + s2))

with zipfile.ZipFile(apk_path, "r") as z:
    for x in ["res/xml/app_management.xml", "res/xml/apps.xml", "res/xml/special_access.xml", "res/xml/tran_app_booster_home.xml", "res/xml/tran_app_info_settings.xml"]:
        if x in z.namelist():
            print(f"\n=== XML: {x} ===")
            for s in parse_axml_strings(z.read(x)):
                if not s.startswith("http://"):
                    print(" ", s)

    for dex_name in ["classes.dex", "classes2.dex", "classes3.dex", "classes4.dex"]:
        dex = z.read(dex_name)
        string_ids_size, string_ids_off = struct.unpack_from("<II", dex, 0x38)
        type_ids_size, type_ids_off = struct.unpack_from("<II", dex, 0x40)
        method_ids_size, method_ids_off = struct.unpack_from("<II", dex, 0x58)
        class_defs_size, class_defs_off = struct.unpack_from("<II", dex, 0x60)

        def uleb(d, o):
            r, s = 0, 0
            while True:
                b = d[o]; o += 1; r |= (b & 0x7f) << s
                if not (b & 0x80): return r, o
                s += 7
        def gstr(i):
            if i >= string_ids_size: return ""
            off = struct.unpack_from("<I", dex, string_ids_off + i * 4)[0]
            _, off = uleb(dex, off)
            return dex[off:dex.find(b"\x00", off)].decode("utf-8", "ignore")
        def gtype(i):
            return gstr(struct.unpack_from("<I", dex, type_ids_off + idx * 4)[0]) if (idx := i) < type_ids_size else ""
        def gmeth(i):
            if i >= method_ids_size: return ""
            c, p, n = struct.unpack_from("<HHI", dex, method_ids_off + i * 8)
            return f"{gtype(c)}->{gstr(n)}"

        for i in range(class_defs_size):
            c_idx, _, _, _, _, _, data_off, _ = struct.unpack_from("<IIIIIIII", dex, class_defs_off + i * 32)
            cname = gtype(c_idx)
            if any(k in cname for k in ["AppManagementDashboardFragment", "AppDashboardFragment", "DefaultAppsPreferenceController", "DefaultCalendarPreferenceController", "DefaultGalleryPreferenceController", "DefaultMusicPreferenceController", "AppBooster", "Appturbo", "AppTurbo", "Clone", "DualApp", "AutoStart", "Hibernat"]) and data_off:
                print(f"\n=== {dex_name} :: {cname} ===")
                sf, o = uleb(dex, data_off); inf, o = uleb(dex, o); dm, o = uleb(dex, o); vm, o = uleb(dex, o)
                for _ in range(sf + inf): _, o = uleb(dex, o); _, o = uleb(dex, o)
                for cnt in (dm, vm):
                    m = 0
                    for _ in range(cnt):
                        d, o = uleb(dex, o); m += d; _, o = uleb(dex, o); co, o = uleb(dex, o)
                        if co:
                            sz = struct.unpack_from("<I", dex, co + 12)[0]
                            ins = dex[co + 16 : co + 16 + sz * 2]
                            out = []
                            j = 0
                            while j < len(ins) - 3:
                                op = ins[j]
                                if op == 0x1a: out.append("STR:" + gstr(struct.unpack_from("<H", ins, j + 2)[0])); j += 4
                                elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72) and j + 5 < len(ins): out.append("CALL:" + gmeth(struct.unpack_from("<H", ins, j + 2)[0])); j += 6
                                else: j += 2
                            print(" ", gmeth(m), out)
