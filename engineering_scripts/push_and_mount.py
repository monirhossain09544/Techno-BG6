import subprocess, re, sys
sys.stdout.reconfigure(encoding='utf-8')

# Tap our button (currently titled "Memory use") in LanguageAndInputSettings (it's the 2nd item, around y=420)
subprocess.run(['adb', 'shell', 'input tap 360 420; sleep 2; uiautomator dump /data/local/tmp/ui_tap_manage.xml'], check=True)
out = subprocess.check_output(['adb', 'shell', 'cat /data/local/tmp/ui_tap_manage.xml']).decode('utf-8', 'ignore')
print("=== After tapping our button in LanguageAndInputSettings ===")
print(re.findall(r'text="([^"]+)"', out)[:30])
