import zipfile, sys
sys.path.append(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch')
import inspect_smartpanel as s

sys.stdout.reconfigure(encoding='utf-8')
z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')

targets = [
    'Lcom/transsion/settings/applications/defaultapps/DefaultAppSettings;',
    'Lcom/transsion/settings/applications/defaultapps/DefaultGalleryPreferenceController;',
    'Lcom/transsion/settings/applications/defaultapps/DefaultMusicPreferenceController;',
    'Lcom/transsion/settings/applications/defaultapps/DefaultCalendarPreferenceController;',
    'Lcom/android/settings/applications/HibernatedAppsPreferenceController;',
    'Lcom/android/settings/applications/RecentAppsCategoryController;',
    'Lcom/android/settings/applications/GameSettingsPreferenceController;',
    'Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetailPreferenceController;',
    'Lcom/transsion/settings/applications/AppManagementAssociationMenuController;',
    'Lcom/transsion/settings/applications/HighPowerAppsController;',
    'Lcom/transsion/settings/applications/appinfo/AppInfoDashboardFragment;',
]

for name in sorted(z.namelist()):
    if name.endswith('.dex'):
        dex = z.read(name)
        get_str, get_type, get_field, get_meth, classes = s.parse_dex(dex)
        for cname in classes:
            if any(k in cname for k in ['DefaultGallery', 'DefaultMusic', 'DefaultCalendar', 'DefaultAppSettings', 'HibernatedApps', 'RecentAppsCategory', 'GameSettingsPreference', 'AlarmsAndReminders', 'AssociationMenuController', 'HighPowerApps', 'MediaManagement']):
                print(f"Found {cname} in {name}")
        for t in targets:
            if t in classes:
                print(f"\n*** DUMPING {t} from {name} ***")
                if 'AppInfoDashboardFragment' in t:
                    s.dump_class_methods(dex, t, {'onCreateOptionsMenu', 'onPrepareOptionsMenu', 'onOptionsItemSelected', 'R1', 'S1', 'T1', 'U1'})
                else:
                    s.dump_class_methods(dex, t)
