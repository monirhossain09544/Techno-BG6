from pathlib import Path
import hashlib
import json
import shlex
import subprocess
import sys

sys.stdout.reconfigure(encoding='utf-8')
ADB = r'C:\Users\Monir\Android\Sdk\platform-tools\adb.exe'
SERIAL = '1099738415003670'
ROOT = Path(__file__).parent / 'notification-baseline'
ROOT.mkdir(exist_ok=True)


def adb(*args, timeout=40):
    proc = subprocess.run([ADB, '-s', SERIAL, *args], capture_output=True, timeout=timeout)
    if proc.returncode:
        raise RuntimeError(proc.stderr.decode('utf-8', 'replace') + proc.stdout.decode('utf-8', 'replace'))
    return proc.stdout


def shell(command, root=False, timeout=40):
    if root:
        command = 'su -c ' + shlex.quote(command)
    return adb('shell', command, timeout=timeout).decode('utf-8', 'replace').strip()


def save_remote(remote, name):
    dest = ROOT / name
    if dest.exists():
        print('Existing backup kept:', name)
        return
    command = 'su -c ' + shlex.quote('dd if=' + shlex.quote(remote) + ' bs=1048576 status=none')
    content = adb('exec-out', command)
    if not content:
        raise RuntimeError('Empty remote file: ' + remote)
    dest.write_bytes(content)
    print('Backup:', name, 'bytes=', len(content), 'sha256=', hashlib.sha256(content).hexdigest())


if __name__ == '__main__':
    print('ROOT', shell('id', root=True))
    print('STORAGE', shell('df -k /data', root=True))
    print('MODULE', shell('find /data/adb/modules/bg6_hios_pro -maxdepth 2 -type f', root=True))
    save_remote('/data/adb/modules/bg6_hios_pro/service.sh', 'service.before.sh')
    save_remote('/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex', 'settings.live.before.vdex')
    props = shell('getprop')
    (ROOT / 'props.before.txt').write_text(props, encoding='utf-8')
    needles = ('notification', 'sms_filter', 'tran_led', 'livetranscribe', 'tran_wfc', 'msg_split', 'lockscreen_notify', 'u_ossetting', 'low_ram', 'tranos.type', 'blur')
    print('RELEVANT PROPERTIES')
    for line in props.splitlines():
        if any(n in line.lower() for n in needles):
            print(line)
    for namespace in ('secure', 'system', 'global'):
        settings = shell('settings list ' + namespace)
        selected = '\n'.join(line for line in settings.splitlines() if any(n in line.lower() for n in ('notification', 'bubble', 'head', 'statusbar', 'status_bar', 'flash', 'verification', 'qs_tile')))
        (ROOT / ('settings.' + namespace + '.before.txt')).write_text(selected, encoding='utf-8')
        print('SETTINGS', namespace, selected, sep='\n')
    pkg = shell('pm path com.transsion.ossettingsext')
    print('OSSETTINGS', pkg)
    packages = shell('pm list packages')
    print('DEPENDENCY PACKAGES', '\n'.join(line for line in packages.splitlines() if any(n in line.lower() for n in ('transcribe', 'soundamplifier', 'ims', 'led', 'flash'))))
    print('OSSETTINGS ART', shell('find /data/dalvik-cache/arm64 /system_ext/app/OSSettingsExt -maxdepth 3 -type f -name "*OSSettingsExt*"', root=True))
