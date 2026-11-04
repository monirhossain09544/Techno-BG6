import subprocess, re

sh_cmd = """
settings put system tran_default_calendar com.google.android.calendar
am start -n com.android.settings/com.android.settings.SubSettings -e :settings:show_fragment com.transsion.settings.applications.defaultapps.DefaultAppSettings
sleep 2
uiautomator dump /data/local/tmp/ui_def_cal.xml
screencap -p /data/local/tmp/def_cal_screen.png
"""
subprocess.run(['adb', 'shell', f"su -c '{sh_cmd}'"], check=True)
xml = subprocess.check_output(['adb', 'shell', 'cat /data/local/tmp/ui_def_cal.xml']).decode('utf-8', 'ignore')
print('Texts on Default Gallery, Music & Calendar screen:', re.findall(r'text="([^"]+)"', xml))
subprocess.run(['adb', 'pull', '/data/local/tmp/def_cal_screen.png', r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\def_cal_screen.png'], check=True)
