import subprocess, re, time, sys
sys.stdout.reconfigure(encoding='utf-8')

def dump_texts(label):
    xml = subprocess.check_output(['adb', 'shell', 'uiautomator dump /data/local/tmp/ui.xml >/dev/null 2>&1 && cat /data/local/tmp/ui.xml']).decode('utf-8', 'replace')
    texts = [m.group(1).strip() for m in re.finditer(r'text="([^"]+)"', xml) if m.group(1).strip()]
    print(f'=== {label} ===')
    print(' | '.join(texts))
    return xml

subprocess.run(['adb', 'shell', 'su', '-c', 'am start --activity-clear-task -n com.android.settings/.SubSettings -e :settings:show_fragment com.transsion.network.TranMobileNetworkListFragment'], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
time.sleep(2.0)
subprocess.run(['adb', 'shell', 'input tap 529 240'])
time.sleep(2.0)
dump_texts('SIM 2 Top')
subprocess.run(['adb', 'shell', 'input swipe 360 1300 360 300 300'])
time.sleep(1.2)
dump_texts('SIM 2 Scrolled')
subprocess.run(['adb', 'shell', 'rm -f /data/local/tmp/ui.xml'])
