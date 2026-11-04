import zipfile, struct, sys
sys.path.append(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch')
import inspect_smartpanel as s
import inspect_all_app_mgmt as a

sys.stdout.reconfigure(encoding='utf-8')
z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')

for x in z.namelist():
    if x.startswith('res/xml/') and any(k in x for k in ['alarm', 'media', 'turn_screen', 'default', 'quick', 'boost', 'hiber', 'locale', 'special']):
        print("XML:", x)
        a.dump_axml(x)

dex1 = z.read('classes.dex')
get_str, get_type, get_field, get_meth, classes = s.parse_dex(dex1)
for cname in sorted(classes.keys()):
    if any(k in cname for k in [' specialaccess', 'specialaccess', 'defaultapps', 'appinfo', 'RecentApp', 'GameSettings']):
        print("classes.dex:", cname)

dex3 = z.read('classes3.dex')
get_str3, get_type3, get_field3, get_meth3, classes3 = s.parse_dex(dex3)
for cname in sorted(classes3.keys()):
    if any(k in cname for k in ['applications', 'specialaccess', 'defaultapps', 'appinfo']):
        print("classes3.dex:", cname)

dex4 = z.read('classes4.dex')
get_str4, get_type4, get_field4, get_meth4, classes4 = s.parse_dex(dex4)
for cname in sorted(classes4.keys()):
    if 'quick' in cname.lower() or 'boost' in cname.lower():
        print("classes4.dex:", cname)
