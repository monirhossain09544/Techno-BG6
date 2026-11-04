import sys, zipfile, subprocess, re
sys.path.append(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch')
import inspect_all_6_categories as i

sys.stdout.reconfigure(encoding='utf-8')
b1 = subprocess.check_output(['adb','shell','cat /data/local/tmp/ui_boost1.xml']).decode('utf-8','ignore')
b2 = subprocess.check_output(['adb','shell','cat /data/local/tmp/ui_boost2.xml']).decode('utf-8','ignore')
print('BOOST1:', re.findall(r'text="([^"]+)"', b1))
print('BOOST2:', re.findall(r'text="([^"]+)"', b2))

z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')
d1, s1, t1, f1, m1, c1 = i.parse_dex(z.read('classes.dex'))
d1('Lcom/android/settings/applications/RecentAppsCategoryController;')
d1('Lcom/android/settings/applications/GameSettingsPreferenceController;')
d1('Lcom/android/settings/applications/HibernatedAppsPreferenceController;')
