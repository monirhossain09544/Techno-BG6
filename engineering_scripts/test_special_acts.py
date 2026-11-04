import subprocess, re

for act in ['Settings\\$AlarmsAndRemindersActivity', 'Settings\\$MediaManagementAppsActivity', 'Settings\\$TurnScreenOnSettingsActivity']:
    subprocess.run(['adb', 'shell', f'am start -n com.android.settings/com.android.settings.{act}; sleep 1.5; uiautomator dump /data/local/tmp/ui_test.xml'])
    xml = subprocess.check_output(['adb', 'shell', 'cat /data/local/tmp/ui_test.xml']).decode('utf-8', 'ignore')
    print(act, '->', re.findall(r'text="([^"]+)"', xml)[:10])
