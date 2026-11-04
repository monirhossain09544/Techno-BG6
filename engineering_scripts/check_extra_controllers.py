import sys, zipfile, subprocess, re
sys.path.append(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch')
import inspect_smartpanel as s

sys.stdout.reconfigure(encoding='utf-8')
z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')
dex = z.read('classes.dex')
get_str, get_type, get_field, get_meth, classes = s.parse_dex(dex)
for i in range(65535):
    m = get_meth(i)
    if any(k in m for k in ['displayRecentApps', 'loadRecentApps', 'AlarmsAndReminders', 'MediaManagement', 'TurnScreenOn', 'ExtraAppInfo', 'AppVersionPreference']):
        print(f"meth 0x{i:x}: {m}")

gal = subprocess.check_output(['adb', 'shell', 'cat /data/local/tmp/ui_gal.xml']).decode('utf-8', 'ignore')
cal = subprocess.check_output(['adb', 'shell', 'cat /data/local/tmp/ui_cal.xml']).decode('utf-8', 'ignore')
print('GAL:', re.findall(r'text="([^"]+)"', gal))
print('CAL:', re.findall(r'text="([^"]+)"', cal))
